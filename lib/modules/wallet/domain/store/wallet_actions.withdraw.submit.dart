part of wallet_domain_module;

class WithdrawSubmitParams {
  WithdrawSubmitParams({
    required this.amount,
    required this.toAddress,
    required this.chainPrecision,
    required this.withdrawData,
    this.txData,
    this.txDataUUID,
    this.txTemplateData,
    this.dataType,
    this.type,
    this.broadcastType,
  });

  final double amount;
  final String toAddress;
  final int chainPrecision;
  final WalletWithdrawData withdrawData;

// mnt chain props
  final String? txData;
  final String? txDataUUID;
  final String? txTemplateData;
  final MntDataType? dataType;

  /// mnt type 0-token 2-invitation
  final int? type;

  final String? broadcastType;
}

class WalletActionWithdrawSubmit extends _BaseAction {
  WalletActionWithdrawSubmit({
    required this.params,
    required this.walletData,
    required this.completer,
    this.onConfirmSubmit,
  });

  final WithdrawSubmitParams params;
  final WalletPrivateData walletData;
  final Completer<String> completer;
  final Future<bool> Function()? onConfirmSubmit;

  @override
  Future<AppState?> reduce() async {
    late _BaseAction action;
    final chain = AppConstants.mnt_chain;
    switch (chain) {
      case 'BTC':
        action = WalletActionBTCTxSubmit(
          params,
          walletData,
          completer,
          onConfirmSubmit!,
        );
        break;
      case 'ETH':
        action = WalletActionETHTxSubmit(
          params,
          walletData,
          completer,
          onConfirmSubmit!,
        );
        break;
      case AppConstants.mnt_chain:
        action = WalletActionMNTTxSubmit(
          params,
          walletData,
          completer,
          onConfirmSubmit!,
        );
        break;
      case 'TRX':
        action = WalletActionTRXTxSubmit(
          params,
          walletData,
          completer,
          onConfirmSubmit!,
        );
        break;
    }
    if (action != null) {
      await dispatchAsync(action, notify: false);
    }

    return null;
  }

  @override
  Object wrapError(dynamic error) {
    if (error is PlatformException) {
      if (error.message!.contains(
        'build transaction failed: no input provided',
      )) {
        WalletRepository().clearUnspentCache(
          symbol: params.withdrawData.symbol,
          address: params.withdrawData.fromAddress,
        );
        // Update balance if have error
        dispatch(
          AssetActionGetCoinBalance(
            wallet: store.state.walletState.activeWallet!,
            chain: params.withdrawData.chain,
            symbol: params.withdrawData.symbol,
            address: params.withdrawData.fromAddress,
            ignoreBalanceLock: true,
          ),
        );
        completer.completeError(WalletTransTxRejected(error.message ?? ''));
        return WalletTransTxRejected(error.message ?? '');
      }
    }

    CrashesReport().reportEvent(
      'WalletLog_11_WithdrawSubmit',
      error,
      StackTrace.current,
      {
        'chain': params.withdrawData.chain,
        'symbol': params.withdrawData.symbol,
      },
    );
    completer.completeError(error as Object);
    return error;
  }
}

//  ▼▼▼▼▼▼ Chains Implementations ▼▼▼▼▼▼  //

class WalletActionBTCTxSubmit extends _BaseAction {
  WalletActionBTCTxSubmit(
    this.params,
    this.walletData,
    this.completer,
    this.onConfirmSubmit,
  );

  static const chain = 'BTC';

  final WithdrawSubmitParams params;
  final WalletPrivateData walletData;
  final Completer<String> completer;
  final Future<bool> Function() onConfirmSubmit;

  @override
  Future<AppState?> reduce() async {
    final data = params.withdrawData;
    final toAddress = params.toAddress;
    final amount = params.amount;
    final fromAddress = data.fromAddress;

    final utxos = data.utxos.map((item) {
      final vAmount =
          Decimal.parse(item['value'].toString()) / Decimal.parse('1e8');
      return {
        'txId': item['tx_hash'].toString(),
        'vOut': NumberUtil.getInt(item['tx_output_n']),
        'vAmount': vAmount.toDouble(),
      };
    }).toList();

    final rawTx = await WalletRepository().createBTCTransaction(
      utxos: utxos,
      toAddress: toAddress,
      toAmount: amount,
      fromAddress: fromAddress,
      feeRate: data.fee.feeRateToInt,
      beta: WalletConfigNetwork.btc,
      isGetFee: false,
    );

    final requestSubmit = Completer<String>();
    dispatch(
      WalletActionSignAndSubmitRawTx(
        chain: chain,
        symbol: data.symbol,
        rawTx: rawTx!,
        walletData: walletData,
        fromAddress: fromAddress,
        broadcastType: params.broadcastType!,
        onConfirmSubmit: onConfirmSubmit,
        completer: requestSubmit,
        amount: (params.withdrawData.isFeeOnSymbol)
            ? NumberUtil.plus<double>(
                  params.amount,
                  params.withdrawData.fee.feeValue,
                ) ??
                0
            : params.amount,
      ),
    );
    final txId = await requestSubmit.future;

    dispatch(AssetActionAddTransaction(Transaction.fromSubmit(
      params: params,
      txId: txId,
    )));

    completer.complete(txId);
    return null;
  }
}

class WalletActionETHTxSubmit extends _BaseAction {
  WalletActionETHTxSubmit(
    this.params,
    this.walletData,
    this.completer,
    this.onConfirmSubmit,
  );

  static const chain = 'ETH';

  final WithdrawSubmitParams params;
  final WalletPrivateData walletData;
  final Completer<String> completer;
  final Future<bool> Function() onConfirmSubmit;

  @override
  Future<AppState?> reduce() async {
    final data = params.withdrawData;
    final amount = params.amount;
    final toAddress = params.toAddress;
    final fromAddress = data.fromAddress;
    final chainAmount = NumberUtil.getAmountAsInt(
      amount,
      params.chainPrecision,
    );

    final rawTx = await WalletRepository().createETHTransaction(
      nonce: data.fee.nonce!,
      gasPrice: data.fee.gasPrice!,
      gasLimit: data.fee.gasLimit!,
      address: toAddress,
      amount: chainAmount,
      contract: data.contract,
    );

    final requestSubmit = Completer<String>();
    dispatch(WalletActionSignAndSubmitRawTx(
      chain: chain,
      symbol: data.symbol,
      rawTx: rawTx!,
      walletData: walletData,
      fromAddress: fromAddress,
      broadcastType: params.broadcastType!,
      onConfirmSubmit: onConfirmSubmit,
      completer: requestSubmit,
      amount: params.withdrawData.isFeeOnSymbol
          ? NumberUtil.plus<double>(
                params.amount,
                params.withdrawData.fee.feeValue,
              ) ??
              0
          : params.amount,
    ));
    final txId = await requestSubmit.future;

    dispatch(
      AssetActionAddTransaction(
        Transaction.fromSubmit(
          params: params,
          txId: txId,
        ),
      ),
    );

    completer.complete(txId);
    return null;
  }
}

class WalletActionMNTTxSubmit extends _BaseAction {
  WalletActionMNTTxSubmit(
    this.params,
    this.walletData,
    this.completer,
    this.onConfirmSubmit,
  );

  static const chain = AppConstants.mnt_chain;

  final WithdrawSubmitParams params;
  final WalletPrivateData walletData;
  final Completer<String> completer;
  final Future<bool> Function() onConfirmSubmit;

  @override
  Future<AppState?> reduce() async {
    final data = params.withdrawData;
    final toAddress = params.toAddress;
    final fromAddress = data.fromAddress;
    final amount = params.amount;
    final timestamp = SystemDate.getTime();

    String txData = '';
    if (params.txData == null) {
      txData = '00';
    } else {
      txData = '010000a0${params.txData}';
      params.withdrawData.fee.gasLimit =
          (params.withdrawData.fee.gasLimit ?? 0) * 2;
    }
    final paramsRawTx = {
      'to': toAddress,
      'from': fromAddress,
      'fork': AppConstants.mnt_fork,
      'time': timestamp,
      'nonce': (data.fee.nonce ?? 0) + 1,
      'amount': amount.toString(),
      'gasprice': params.withdrawData.fee.gasPrice.toString(),
      'gaslimit': params.withdrawData.fee.gasLimit.toString(),
      'data': txData,
      'type': txData.length > 160 ? 1 : 0,
    };
    final rawTx = getTx(paramsRawTx);
    final pri = await WalletRepository().exportPrivateKey(
      mnemonic: walletData.mnemonic!,
      chain: AppConstants.mnt_chain,
      forkId: AppConstants.mnt_fork,
    );

    final privateKey = Uint8List.fromList(HEX.decode(pri));

    final rpk = Uint8List.fromList(privateKey.reversed.toList());
    final public = publicKey(rpk);
    final message = HEX.decode(rawTx['tx_hash'].toString());
    final signature = sign(Uint8List.fromList(message.toList()), rpk, public);
    final signedTx = '${rawTx['tx_hex']}40${HEX.encode(signature)}';
    final txId = await WalletRepository().submitTransaction(
      type: params.broadcastType!,
      chain: 'MNT',
      symbol: 'MNT',
      signedTx: signedTx,
      walletId: walletData.walletId!,
    );
    dispatch(
      AssetActionAddTransaction(
        Transaction.fromSubmit(
          params: params,
          txId: txId,
        ),
      ),
    );
    completer.complete(txId);
    return null;
  }

  @override
  static Future<dynamic> reduceDpos(dynamic rawTx, String mnemonic) async {
    final pri = await WalletRepository().exportPrivateKey(
      mnemonic: mnemonic,
      chain: AppConstants.mnt_chain,
      forkId: AppConstants.mnt_fork,
    );

    final privateKey = Uint8List.fromList(HEX.decode(pri));
    final rpk = Uint8List.fromList(privateKey.reversed.toList());
    final public = publicKey(rpk);
    final message = HEX.decode(rawTx['tx_hash'].toString());
    final signature = sign(Uint8List.fromList(message.toList()), rpk, public);
    final signedTx = '${rawTx['tx_hex']}40${HEX.encode(signature)}';
    return signedTx;
  }
}

class WalletActionTRXTxSubmit extends _BaseAction {
  WalletActionTRXTxSubmit(
    this.params,
    this.walletData,
    this.completer,
    this.onConfirmSubmit,
  );

  static const chain = 'TRX';

  final WithdrawSubmitParams params;
  final WalletPrivateData walletData;
  final Completer<String> completer;
  final Future<bool> Function() onConfirmSubmit;

  @override
  Future<AppState?> reduce() async {
    final data = params.withdrawData;
    final toAddress = params.toAddress;
    final fromAddress = data.fromAddress;
    final amount = params.amount;

    final rawTx = await WalletRepository().createTRXTransaction(
      symbol: data.symbol,
      address: toAddress,
      from: fromAddress,
      amount: NumberUtil.getAmountAsInt(amount, params.chainPrecision),
      fee: data.fee.feeRateToInt,
    );

    final requestSubmit = Completer<String>();
    dispatch(WalletActionSignAndSubmitRawTx(
      chain: chain,
      symbol: data.symbol,
      rawTx: rawTx,
      walletData: walletData,
      fromAddress: fromAddress,
      broadcastType: params.broadcastType!,
      onConfirmSubmit: onConfirmSubmit,
      completer: requestSubmit,
      amount: params.withdrawData.isFeeOnSymbol
          ? NumberUtil.plus<double>(
                params.amount,
                params.withdrawData.fee.feeValue,
              ) ??
              0
          : params.amount,
    ));
    final txId = await requestSubmit.future;

    dispatch(
      AssetActionAddTransaction(
        Transaction.fromSubmit(
          params: params,
          txId: txId,
        ),
      ),
    );

    completer.complete(txId);
    return null;
  }
}

class WalletActionSignAndSubmitRawTx extends _BaseAction {
  WalletActionSignAndSubmitRawTx({
    required this.chain,
    required this.symbol,
    required this.rawTx,
    required this.fromAddress,
    required this.walletData,
    required this.amount,
    required this.completer,
    this.broadcastType,
    this.onConfirmSubmit,
  });

  final String chain;
  final String symbol;
  final String rawTx;
  final String fromAddress;
  final double amount;
  final String? broadcastType;
  final WalletPrivateData walletData;
  final Completer<String> completer;
  final Future<bool> Function()? onConfirmSubmit;

  @override
  Future<AppState?> reduce() async {
    String? signedTx;

    if (walletData.walletType == WalletType.device) {
      // TODO: use HDKeyCore.signTx
    } else {
      signedTx = await WalletRepository().signTx(
        mnemonic: walletData.mnemonic!,
        chain: chain,
        rawTx: rawTx,
        options: WalletCoreOptions(
          useBip44: walletData.useBip44,
          beta: WalletConfigNetwork.getTestNetByChain(chain),
        ),
      );
    }

    if (onConfirmSubmit != null) {
      final canContinue = await onConfirmSubmit!();
      if (canContinue != true) {
        return null;
      }
    }

    final txId = await WalletRepository().submitTransaction(
      type: broadcastType!,
      chain: chain,
      symbol: symbol,
      signedTx: signedTx!,
      walletId: walletData.walletId!,
    );

    if (kChainsNeedUnspent.contains(chain)) {
      await WalletRepository().clearUnspentCache(
        symbol: symbol,
        address: fromAddress,
      );
    }

    // Update balance after submit
    dispatch(AssetActionGetCoinBalance(
      wallet: store.state.walletState.activeWallet!,
      chain: chain,
      symbol: symbol,
      address: fromAddress,
      subtractFromBalance: amount,
      ignoreBalanceLock: !kChainsNeedLockBalance.contains(chain),
    ));

    completer.complete(txId);

    return null;
  }

  @override
  Object? wrapError(dynamic error) {
    // If the error is about broadcasting, maybe unspent have problem,
    // so we need to clear it
    // "Tx rejected" is the error message from MNT wallet
    /*
    final responseError = Request().getResponseError(error);
    if (responseError.message.contains('Tx rejected')) {
      WalletRepository().clearUnspentCache(
        symbol: symbol,
        address: fromAddress,
      );
      // Update balance if have error
      dispatch(AssetActionGetCoinBalance(
        wallet: store.state.walletState.activeWallet!,
        chain: chain,
        symbol: symbol,
        address: fromAddress,
        subtractFromBalance: amount,
        ignoreBalanceLock: true,
      ));
      completer.completeError(WalletTransTxRejected(responseError.message));
      return WalletTransTxRejected(responseError.message);
    }
    */
    completer.completeError(error as Object);
    return error;
  }
}
