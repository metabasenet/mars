part of asset_ui_module;

class AssetWithdrawFee extends StatelessWidget {
  const AssetWithdrawFee({
    required this.withdrawInfo,
    required this.isRefreshing,
    this.onPress,
    Key? key,
    this.padding,
    this.onGetFee,
  }) : super(key: key);

  final WalletWithdrawData? withdrawInfo;
  final bool isRefreshing;
  final EdgeInsetsGeometry? padding;
  final Function(String type)? onPress;
  final Function()? onGetFee;

  void handleShowFeeDialog(
    BuildContext context, {
    ConfigCoinFee? configCoinFee,
    Function(String level)? onSelected,
  }) {
    DeviceUtils.hideKeyboard(context);
    final list = WalletFeeUtils.getFeeOptions(
      chain: withdrawInfo!.chain,
      defaultFee: withdrawInfo!.feeDefault,
      configCoinFee: configCoinFee!,
    );
    final feeChain = withdrawInfo!.chain.toLowerCase();
    final List<CSOptionsItem> options = list
        .map(
          (item) => CSOptionsItem(
            label: tr(
              'asset:withdraw_lbl_fee_${feeChain}_${item.key}',
              namedArgs: {
                'fuel': item.value,
                'unit': withdrawInfo!.fee.feeUnit
              },
            ),
            value: item.key,
            color: withdrawInfo!.fee.feeLevel == item.key
                ? context.primaryColor
                : null,
          ),
        )
        .toList();

    showOptionsDialog(
      context,
      options: options,
      onSelected: (level) {
        onSelected!(level.toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final configCoinFee = GetIt.I<CoinConfig>().getFeeLevel(
      chain: withdrawInfo == null ? '' : withdrawInfo!.chain,
      symbol: withdrawInfo == null ? '' : withdrawInfo!.symbol,
    );
    final showGasBtn = configCoinFee != null &&
        configCoinFee.enable != null &&
        configCoinFee.enable == true;

    final feeChain =
        withdrawInfo == null ? '' : withdrawInfo!.chain.toLowerCase();
    final feeLevel = withdrawInfo == null ? '' : withdrawInfo!.fee.feeLevel;
    final feeUnit = withdrawInfo == null ? '' : withdrawInfo!.fee.feeUnit;

    final feeRate = withdrawInfo == null ? '' : withdrawInfo!.fee.feeRate;

    String feeSymbol = '';
    if (withdrawInfo != null) {
      if (withdrawInfo!.chain == AppConstants.mnt_chain) {
        feeSymbol = withdrawInfo == null ? '' : withdrawInfo!.symbol;
      } else {
        feeSymbol = withdrawInfo == null ? '' : 'BNB';
      }
    }

    final gasLevel = tr(
      'asset:withdraw_lbl_fee_${feeChain}_$feeLevel',
      namedArgs: {
        'fuel': feeRate,
        'unit': feeUnit,
      },
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: context.edgeAll.copyWith(bottom: 0),
              child: Text(
                tr('asset:trans_lbl_fee'),
                style: context.textBody(
                  bold: true,
                  color: context.labelColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            if (withdrawInfo == null)
              CSButton(
                label: tr('asset:withdraw_btn_get_fee'),
                flat: true,
                margin: context.edgeHorizontal,
                textStyle: context
                    .textSecondary(
                      bold: true,
                      fontWeight: FontWeight.normal,
                    )
                    .copyWith(
                      color: context.secondaryColor,
                      decoration: TextDecoration.underline,
                    ),
                onPressed: () {
                  onGetFee!();
                },
              ),
          ],
        ),
        CSContainer(
          padding: context.edgeAll.copyWith(top: 18, bottom: 18),
          height: 66,
          onTap: showGasBtn
              ? () {
                  handleShowFeeDialog(
                    context,
                    configCoinFee: configCoinFee,
                    onSelected: (level) {
                      onPress!(level);
                    },
                  );
                }
              : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  if (isRefreshing == false)
                    Text(
                      withdrawInfo == null
                          ? '-'
                          : '${withdrawInfo!.displayFee} $feeSymbol',
                      style: context.textBody(
                        bold: true,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  if (isRefreshing == true)
                    CSProgressIndicator(
                      size: context.edgeSize,
                      strokeWidth: 1.0,
                      backgroundColor: Colors.transparent,
                      color: context.blackColor,
                    ),
                ],
              ),
              Row(
                children: [
                  if (showGasBtn)
                    Text(
                      gasLevel,
                      style: context.textSecondary(
                        bold: true,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  if (feeRate != '-' &&
                      feeUnit != '' &&
                      isRefreshing != true &&
                      !showGasBtn)
                    Text(
                      // tr('asset:withdraw_lbl_fee_rate', namedArgs: {
                      //   'value': feeRate,
                      //   'symbol': feeUnit,
                      // }),
                      '',
                      style: context.textSecondary(
                        bold: true,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  if (showGasBtn)
                    Padding(
                      padding: context.edgeLeft8,
                      child: Icon(
                        CSIcons.More,
                        size: 12,
                        color: context.bodyColor,
                      ),
                    ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
