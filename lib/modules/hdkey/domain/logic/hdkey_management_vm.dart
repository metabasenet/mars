part of hdkey_domain_module;

abstract class HDKeyManagementVM
    implements Built<HDKeyManagementVM, HDKeyManagementVMBuilder> {
  factory HDKeyManagementVM([void Function(HDKeyManagementVMBuilder) b]) =
      _$HDKeyManagementVM;
  HDKeyManagementVM._();

// UI Fields
  @nullable
  Wallet get activeWallet;
  @nullable
  AssetCoin get invitationCoin;

  List<Wallet> get wallets;

  List<String> get localIds;

// Actions  @BuiltValueField(compare: false)

  @BuiltValueField(compare: false)
  Future<void> Function(String pwdOld, String pwdNew) get changePassword;

  @BuiltValueField(compare: false)
  Future<void> Function(String name) get changeName;

  @BuiltValueField(compare: false)
  Future<void> Function() get deleteWallet;

  @BuiltValueField(compare: false)
  Future<void> Function(String mnemonic) get validateMnemonic;

// UI Logic
  static HDKeyManagementVM fromStore(Store<AppState> store) {
    final allCoin = store.state.assetState.coins;
    final coinItem = allCoin.firstWhere(
      (e) => e.symbol == AppConstants.mnt_chain,
      orElse: () => null,
    );
    final localWallets = store.state.walletState.wallets ?? [];

    return HDKeyManagementVM((viewModel) => viewModel
      ..wallets = localWallets
      ..localIds = localWallets.map((e) => e.id).toList()
      ..validateMnemonic = (mnemonic) {
        return store.dispatchFuture(WalletActionValidateMnemonic(mnemonic));
      }
      ..changeName = (name) {
        return store.dispatchFuture(WalletActionChangeName(name));
      }
      ..changePassword = (pwdOld, pwdNew) {
        return store.dispatchFuture(WalletActionChangePassword(
          pwdOld,
          pwdNew,
        ));
      }
      ..deleteWallet = () {
        return store.dispatchFuture(WalletActionDeleteWallet());
      }
      ..activeWallet = store.state.walletState.activeWallet
      ..invitationCoin = coinItem?.toBuilder());
  }
}
