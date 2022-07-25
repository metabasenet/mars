part of asset_ui_module;

class AssetWithdrawProcess {
  static const getFeeOnInit = ['BTC', AppConstants.mnt_chain, 'TRX'];
  static const getFeeOnChangeAddress = ['ETH', 'BTC'];
  static const getFeeOnChangeAmount = [AppConstants.mnt_chain];

  static Future<WalletWithdrawData> getWithdrawFee({
    required VMWithWalletWithdraw viewModel,
    required AssetCoin coinInfo,
    required String toAddress,
    required String amount,
    WalletWithdrawData? previousWithdrawData,
  }) {
    return viewModel
        .onWithdrawBefore(
      WithdrawBeforeParams(
        chain: coinInfo.chain ?? '',
        symbol: coinInfo.symbol ?? '',
        toAddress: toAddress,
        chainPrecision: coinInfo.chainPrecision ?? 0,
        amount: NumberUtil.getDouble(amount),
        fromAddress: coinInfo.address ?? '',
        contractOrForkId: coinInfo.contract,
      ),
      previousWithdrawData,
    )
        .then((value) {
      return value;
    }).catchError((error) {
      Toast.showError(error);
      //return error;
    });
  }

  static void doSubmitWithdraw(
    BuildContext context, {
    required VMWithWalletWithdraw viewModel,
    required WalletWithdrawData withdrawData,
    required double amount,
    required String toAddress,
    required int chainPrecision,
    required void Function(String txId) onWithdrawSuccess,
    int? type,
    String? withdrawFailedMessage,
    Future<bool> Function()? onConfirmSubmit,
  }) {
    // Check again withdraw data
    //final symbol = withdrawData.symbol;
    //final feeSymbol = withdrawData.fee.feeSymbol;

    if (amount <= 0) {
      Toast.show(tr('asset:withdraw_msg_error_amount'));
      return;
    }

    // For coin like USDT where the fee is ETH, we need to check ETH balance

    //if (symbol != feeSymbol) {
    final feeBalance = viewModel.getCoinBalance(
      chain: withdrawData.chain, //AppConstants.mnt_chain,
      symbol: withdrawData.symbol,
    );

//The entered amount cannot exceed the balance
    if (amount > feeBalance) {
      Toast.show(tr('asset:withdraw_msg_error_excess_balance'));
      return;
    }

    if (withdrawData.fee.feeValue > feeBalance) {
      Toast.show(tr('asset:withdraw_msg_error_fee'));
      return;
    }
    //}

    showPasswordDialog(
      context,
      (password) => viewModel.doUnlockWallet(password),
      (walletData, _) async {
        if (withdrawData.isDoubleTransaction) {
          final isConfirm = await showWalletConfirmDoubleTransDialog(context);
          if (!isConfirm) {
            return;
          }
        }
        LoadingDialog.show(context);
        viewModel
            .submit(
          WithdrawSubmitParams(
            amount: amount,
            toAddress: toAddress,
            withdrawData: withdrawData,
            chainPrecision: chainPrecision,
            type: type ?? 0,
          ),
          walletData,
          onConfirmSubmit as Future<bool> Function(),
        )
            .then(
          (txId) {
            // onWithdrawSuccess(txId);
            if (txId.contains('-10')) {
              LoadingDialog.dismiss(context);
              Toast.show(tr('asset:withdraw_msg_error_failed'));
              AppNavigator.goBack();
            } else {
              onWithdrawSuccess(txId);
            }
          },
        ).catchError(
          (error) {
            LoadingDialog.dismiss(context);
            Toast.showError(
              error,
              defaultMessage:
                  withdrawFailedMessage ?? tr('asset:withdraw_msg_failed'),
            );
          },
        );
      },
    );
  }
}
