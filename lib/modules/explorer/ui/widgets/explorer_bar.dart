part of explorer_ui_module;

class ExplorerBar extends HookWidget {
  const ExplorerBar({
    Key? key,
    this.explorerList,
  }) : super(key: key);
  final List<ExplorerItem>? explorerList;

  @override
  Widget build(BuildContext context) {
    final selected = useState<ExplorerItem>(explorerList!.first);
    final searchController = useTextEditingController(text: '');

    final onlyAddress =
        ExplorerUtils.onlySearchAddress.contains(selected.value.config.chain);

    void handleSearch() {
      if (searchController.text == '') {
        return Toast.show(tr('explorer:msg_blockchain_search'));
      }

      String url = '';
      //Judge whether it is txid by length(mnt 64,bnb 66)
      if (searchController.text.length == 64 ||
          searchController.text.length == 66) {
        url = ExplorerUtils.getChainExplorerTxUrl(
          selected.value.config.chain,
          searchController.text,
        );
      } else {
        url = ExplorerUtils.getChainExplorerSearchUrl(
          selected.value.config.chain,
          searchController.text,
        );
      }

      final settings = CommonRepository().getSettings();
      url += '&language=${settings?.language}';
      WebViewPage.open(url);
    }

    return Container(
      width: double.infinity,
      margin: context.edgeTop20,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.edgeHorizontal,
            child: Wrap(
              runSpacing: context.edgeSize,
              spacing: context.edgeSize,
              children: explorerList!
                  .map(
                    (item) => buildItem(
                      context,
                      item: item,
                      isSelect:
                          selected.value.config.chain == item.config.chain,
                      onPress: (item) {
                        selected.value = item;
                        searchController.text = '';
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(height: 32),
          CSSearchInput(
            controller: searchController,
            autofocus: true,
            radius: 25,
            maxLength: 256,
            margin: context.edgeHorizontal,
            hintText: tr('explorer:hint_blockchain_search_txid'),
            showSearchIcon: false,
            onChanged: (_) {},
            hintStyle: context.textSmall(
              bold: true,
              fontWeight: FontWeight.normal,
            ),
            cmpRight: CSButton(
              label: tr('global:btn_paste'),
              padding: context.edgeHorizontal8.copyWith(
                right: context.edgeSize,
              ),
              borderRadius: 25,
              textStyle: context.textSmall(
                color: context.bodyColor,
                bold: true,
                fontWeight: FontWeight.normal,
              ),
              flat: true,
              onPressed: () {
                getTextFromClipboard().then((value) {
                  if (value != null || value.isNotEmpty) {
                    searchController.text = value;
                    searchController.selection = TextSelection.collapsed(
                      offset: value.length,
                    );
                  }
                });
              },
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: CSButton(
              label: tr('global:btn_search'),
              margin: EdgeInsets.only(top: 50),
              onPressed: () {
                handleSearch();
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildItem(
  BuildContext context, {
  ExplorerItem? item,
  bool? isSelect,
  Function(ExplorerItem item)? onPress,
}) {
  return InkWell(
    onTap: () {
      onPress?.call(item!);
    },
    child: Container(
      padding: context.edgeHorizontal5,
      height: 36,
      decoration: BoxDecoration(
        color: (isSelect ?? false) ? context.primaryColor : context.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (item?.coinInfo != null && item?.coinInfo.iconUrl != null)
            CSImage(
              item!.coinInfo.iconUrl,
              fallbackUrl: item.coinInfo.iconLocal,
              width: 22,
              height: 22,
              backgroundColor: Colors.transparent,
            ),
          Padding(
            padding: context.edgeLeft5,
            child: Text(
              item!.config.name,
              style: context.textSecondary(
                bold: true,
                fontWeight: FontWeight.normal,
                color: context.bodyColor,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
