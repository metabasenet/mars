part of asset_ui_module;

class AssetWalletSelectPage extends StatelessWidget {
  static const routeName = '/asset/wallet/select';

  static Future<Wallet> open() {
    return AppNavigator.push(routeName);
  }

  static Route<Wallet> route(RouteSettings settings) {
    return DefaultTransition<Wallet>(
      settings,
      AssetWalletSelectPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CSScaffold(
      title: tr('asset:select_wallet_title'),
      addBottomInset: false,
      child: StoreConnector<AppState, AssetListVM>(
        distinct: true,
        converter: AssetListVM.fromStore,
        builder: (context, viewModel) => Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: viewModel.wallets.length,
                itemBuilder: (context, index) {
                  return buildItem(
                    context,
                    wallet: viewModel.wallets[index],
                    activeWalletId: viewModel.activeWalletId,
                  );
                },
              ),
            ),
            DividerShadow(),
            Container(
              color: context.bgPrimaryColor,
              padding: context.edgeHorizontal.copyWith(
                bottom: context.safeAreaBottom,
              ),
              child: WalletCreateButtons(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem(
    BuildContext context, {
    Wallet wallet,
    String activeWalletId,
  }) {
    return CSContainer(
      margin: context.edgeAll.copyWith(bottom: 0),
      onTap: () {
        AppNavigator.popWithResult(wallet);
      },
      child: FormCell(
        autoHeight: true,
        padding: context.edgeVertical8,
        hideAccess: activeWalletId == wallet.id,
        cmpRight: activeWalletId == wallet.id
            ? CSButtonIcon(
                padding: EdgeInsets.only(
                  right: 2,
                  top: 1,
                ),
                containerSize: 16,
                size: 6,
                borderRadius: 16,
                icon: CSIcons.WalletCheck,
              )
            : Container(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              wallet.name,
              style: context.textBody(bold: true),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              tr('asset:lbl_mnt_address', namedArgs: {
                'address': wallet.mntAddress,
              }),
              maxLines: 1,
              style: context.textSmall(),
            ),
          ],
        ),
      ),
    );
  }
}
