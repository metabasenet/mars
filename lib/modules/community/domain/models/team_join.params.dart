part of community_domain_module;

class TeamJoinParams {
  TeamJoinParams();

  factory TeamJoinParams.toApiParams({
    @required int type,
    @required String teamId,
    @required String name,
    @required String desc,
    @required String github,
    @required String telegram,
    @required String logo,
  }) {
    return TeamJoinParams()
      ..type = type
      ..teamId = teamId
      ..name = name
      ..desc = desc
      ..github = github
      ..telegram = telegram
      ..logo = logo;
  }

  int type;
  String name;
  String teamId;
  String desc;
  String github;
  String telegram;
  String logo;

  /// 只有判断 github 和 详情图片
  static List<String> getVisible(CommunityTypes type) {
    final List<String> baseItem = ['name', 'desc', 'telegram', 'logo'];

    if (type == CommunityTypes.develop || type == CommunityTypes.marsDevelop) {
      baseItem.add('github');
    }
    return baseItem;
  }

  String isValid() {
    if (logo == null || logo.isEmpty) {
      return 'upload_logo';
    }
    return null;
  }
}
