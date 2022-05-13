part of invest_ui_module;

enum InvestTabs {
  noWallet,
  loading,
  error,
  reward,
  invitation,
  airdrop,
}

class InvestHomePage extends HookWidget {
  final refreshController = CSRefresherController();

  Future<void> loadMint(
    InvestHomeVM viewModel,
    MintItem mint,
    ValueNotifier<InvestTabs> selectedTab,
  ) async {
    selectedTab.value = InvestTabs.loading;
    viewModel.doSwitchMint(mint).then((value) {
      if (viewModel.hasWallet == false) {
        selectedTab.value = InvestTabs.noWallet;
        return;
      }
      if (mint.isMining) {
        selectedTab.value = InvestTabs.reward;
      } else {
        selectedTab.value = InvestTabs.airdrop;
      }
    }).catchError((error) {
      selectedTab.value = InvestTabs.error;
      Toast.showError(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedTab = useState(InvestTabs.loading);

    final isLoaded = selectedTab.value != InvestTabs.loading &&
        selectedTab.value != InvestTabs.error;

    return CSScaffold(
      hideLeading: true,
      titleCenter: false,
      addTopInset: false,
      headerBgColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      title: tr('invest:title'),
      titleStyle: context.textHuge(fontWeight: FontWeight.w700),
      drawer: CSDrawer(
        width: 264,
        elevation: 100,
        decoration: BoxDecoration(
          color: context.bgSecondaryColor,
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(24.0),
          ),
        ),
        child: StoreConnector<AppState, InvestHomeVM>(
          distinct: true,
          converter: InvestHomeVM.fromStore,
          builder: (context, viewModel) => MintSelectDrawer(
            mints: viewModel.mints.toList(),
            activeMintId: viewModel.activeMint?.id,
            onLoadMint: (mint) {
              loadMint(viewModel, mint, selectedTab);
            },
          ),
        ),
      ),
      child: StoreConnector<AppState, InvestHomeVM>(
        distinct: true,
        converter: InvestHomeVM.fromStore,
        onInitialBuild: (viewModel) {
          // Load first mint
          if (viewModel.mints.isNotEmpty) {
            loadMint(
              viewModel,
              viewModel.activeMint ?? viewModel.mints.first,
              selectedTab,
            );
          }
        },
        builder: (context, viewModel) {
          //final activeMint = viewModel.activeMint;
          //final symbol = activeMint?.symbol ?? '';

          return ModelPermissionView(
            moduleName: ModuleName.mint,
            onRefreshSuccess: () {
              if (viewModel.getDefaultMint() != null) {
                loadMint(
                  viewModel,
                  viewModel.getDefaultMint(),
                  selectedTab,
                );
              }
            },
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: const [
                        Color(0xFFfff6bc),
                        Color(0xFFffec70),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        automaticallyImplyLeading: false,
                        titleSpacing: 0,
                        toolbarHeight: 26,
                      ),
                    ],
                  ),
                ),
                if (viewModel.activeMint?.isMining == true &&
                    isLoaded &&
                    viewModel.hasWallet)
                  CSButtonTabsFancy(
                    selected:
                        //selectedTab.value == InvestTabs.invitation ? 1 : 0,
                        selectedTab.value == InvestTabs.invitation ? 1 : 0,
                    onSelected: (value) {
                      selectedTab.value = value == 0
                          ? InvestTabs.reward
                          : InvestTabs.invitation;
                    },
                    holdLbl: tr('invest:mining_record_lbl_holding'),
                    //'Holding Reward ($symbol)',
                    holdValue: '',
                    invitationLbl: tr('invest:mining_record_lbl_invitation'),
                    //'Invitation Reward ($symbol)',
                    invitationValue:
                        '', //viewModel.mintInfo?.promotionReward ?? '-',
                  ),
                buildContent(
                  context,
                  viewModel,
                  selectedTab,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildContent(
    BuildContext context,
    InvestHomeVM viewModel,
    ValueNotifier<InvestTabs> selectedTab,
  ) {
    final select = selectedTab.value;

    // no wallet
    if (select == InvestTabs.noWallet) {
      return Expanded(
        child: CSContainer(
          child: Center(
            child: CSEmpty(
              width: 250,
              height: 127,
              imageUrl: 'assets/images/empty_wallet.png',
              showButton: true,
              btnText: tr('wallet:msg_create_wallet_tips'),
              onPressed: () {
                AppNavigator.gotoTabBarPage(AppTabBarPages.wallet);
              },
            ),
          ),
        ),
      );
    }

    final symbol = viewModel.activeMint?.symbol ?? '';

    if (select == InvestTabs.loading) {
      return Expanded(
        child: CSContainer(
          child: Center(
            child: CSProgressIndicator(),
          ),
        ),
      );
    }

    if (select == InvestTabs.error) {
      return Expanded(
        child: CSContainer(
          child: CSEmpty(
            label: tr('global:list_load_failed'),
            showButton: true,
            btnText: tr('global:btn_refresh'),
            onPressed: () {
              loadMint(viewModel, viewModel.activeMint, selectedTab);
            },
          ),
        ),
      );
    }

    final coinInfo = viewModel.getCoinInfo(
      chain: viewModel.activeMint.chain,
      symbol: viewModel.activeMint.symbol,
    );

    if (select == InvestTabs.airdrop) {
      return AirdropTab();
    }

    if (select == InvestTabs.reward) {
      return MiningProfitTab(
        coinInfo: coinInfo,
        listData: viewModel.profitRecordList.toList(),
        doLoadData: viewModel.getProfitRecordList,
      );
      /*   final List<ProfitRecordItem>
      return MiningRewardTab(
        chartList: viewModel.chartList.toList(),
        mintInfo: viewModel.mintInfo,
        coinInfo: coinInfo,
        mintItem: viewModel.activeMint,
        symbol: symbol,
        doRefresh: viewModel.refreshMintReward,
      );*/
    }

    if (select == InvestTabs.invitation) {
      return MiningInvitationTab(
        coinInfo: coinInfo,
        listData: viewModel.profitInvitationList.toList(),
        doLoadData: viewModel.getProfitInvitationList,
      );
    }
    return Container();
  }
}
