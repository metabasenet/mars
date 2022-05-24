part of asset_ui_module;

class AssetListItem extends HookWidget {
  const AssetListItem({
    required this.item,
    required this.onPressed,
  }) : assert(item != null);

  final AssetCoin item;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CSContainer(
      key: Key(item.id),
      secondary: true,
      margin: context.edgeAll.copyWith(bottom: 0),
      padding: context.edgeAll20,
      onTap: onPressed,
      child: Row(
        children: [
          CSImage(
            item.iconLocal,
            fallbackUrl: item.iconLocal,
            height: 36,
            width: 36,
            radius: 36,
            bordered: true,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.displayName,
                style: context.textBody(
                  bold: true,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 4),
              Text(
                item.displayFullName,
                style: context.textSecondary(
                  bold: true,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  if (item.balanceUpdateFailed == true)
                    Icon(
                      CSIcons.Mark,
                      color: context.redColor,
                      size: 13,
                      semanticLabel: tr('asset:lbl_balance_not_updated'),
                    ),
                  if (item.balanceUpdateFailed == true) SizedBox(width: 5),
                  AssetBalanceListener(
                    item: item,
                    builder: (context, {balance, unconfirmed, data}) =>
                        PriceText(
                      balance!,
                      '',
                      TextSize.body,
                    ),
                  )
                ],
              ),
              SizedBox(height: 4),
              AssetBalanceListener(
                item: item,
                builder: (context, {balance, unconfirmed, data}) =>
                    AssetPriceListener(
                  symbol: item.symbol,
                  amount: NumberUtil.getDouble(balance),
                  builder: (context, price, fiatCurrency, _) => PriceText(
                    price,
                    fiatCurrency,
                    TextSize.small,
                    sameStyle: true,
                    approximate: true,
                    color: context.secondaryColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
