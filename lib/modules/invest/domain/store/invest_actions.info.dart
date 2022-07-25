part of invest_domain_module;

class InvestActionGetProfitRecordList extends _BaseAction {
  InvestActionGetProfitRecordList({
    required this.isRefresh,
    required this.take,
    required this.skip,
  });

  final bool isRefresh;
  final int take;
  final int skip;

  @override
  Future<AppState> reduce() async {
    final activeMint = store.state.investState.activeMint;
    final coin = store.state.walletState.activeWallet!.addresses
        .where((element) => element.chain == AppConstants.mnt_chain)
        .first;

    //get nodeAddress
    final ret = getVote(
      coin.address,
      coin.address,
      0,
    );

    final nodeAddress = ret['address'].toString();

    final result = await InvestRepository().getProfitRecordList(
      fork: activeMint?.forkId ?? '',
      address: nodeAddress,
      take: take,
      skip: skip,
    );
    final data = deserializeListOf<ProfitRecordItem>(result);
    return state.rebuild(
      (a) => a.investState.profitRecordList.replace(data),
    );
  }
}

/// 邀请人列表
class InvestActionGetInvitationList extends _BaseAction {
  InvestActionGetInvitationList({
    this.isRefresh,
    this.take,
    this.skip,
  });

  final bool? isRefresh;
  final int? take;
  final int? skip;

  @override
  Future<AppState> reduce() async {
    final activeMint = store.state.investState.activeMint;
    final coin = store.state.walletState.activeWallet!.addresses
        .where((element) => element.chain == AppConstants.mnt_chain)
        .first;

    final result = await InvestRepository().getProfitInvitationList(
      fork: activeMint?.forkId ?? '',
      addr: coin.address,
      take: take ?? 0,
      skip: skip ?? 0,
    );

    final data = deserializeListOf<ProfitInvitationItem>(result);

    return state.rebuild(
      (a) => a.investState.profitInvitationList.replace(data),
    );
  }
}
