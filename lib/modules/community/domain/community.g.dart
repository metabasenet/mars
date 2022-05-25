// GENERATED CODE - DO NOT MODIFY BY HAND

part of community_domain_module;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommunityConfig> _$communityConfigSerializer =
    new _$CommunityConfigSerializer();
Serializer<CommunityInfo> _$communityInfoSerializer =
    new _$CommunityInfoSerializer();
Serializer<CommunityTeam> _$communityTeamSerializer =
    new _$CommunityTeamSerializer();
Serializer<CommunityTeamOptions> _$communityTeamOptionsSerializer =
    new _$CommunityTeamOptionsSerializer();
Serializer<CommunityMemberInfo> _$communityMemberInfoSerializer =
    new _$CommunityMemberInfoSerializer();
Serializer<CommunityMember> _$communityMemberSerializer =
    new _$CommunityMemberSerializer();
Serializer<CommunityEcological> _$communityEcologicalSerializer =
    new _$CommunityEcologicalSerializer();

class _$CommunityConfigSerializer
    implements StructuredSerializer<CommunityConfig> {
  @override
  final Iterable<Type> types = const [CommunityConfig, _$CommunityConfig];
  @override
  final String wireName = 'CommunityConfig';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommunityConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'fork',
      serializers.serialize(object.fork, specifiedType: const FullType(String)),
      'home_list',
      serializers.serialize(object.homeList,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'type',
      serializers.serialize(object.types,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CommunityInfo)])),
      'ecological',
      serializers.serialize(object.ecological,
          specifiedType: const FullType(
              BuiltList, const [const FullType(CommunityEcological)])),
    ];

    return result;
  }

  @override
  CommunityConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fork':
          result.fork = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'home_list':
          result.homeList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.types.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommunityInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'ecological':
          result.ecological.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommunityEcological)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CommunityInfoSerializer implements StructuredSerializer<CommunityInfo> {
  @override
  final Iterable<Type> types = const [CommunityInfo, _$CommunityInfo];
  @override
  final String wireName = 'CommunityInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommunityInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'display_type',
      serializers.serialize(object.displayType,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
      'describe',
      serializers.serialize(object.describe,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'join_type',
      serializers.serialize(object.joinType,
          specifiedType: const FullType(String)),
      'create_type',
      serializers.serialize(object.createType,
          specifiedType: const FullType(String)),
      'join_apply_type',
      serializers.serialize(object.joinApplyType,
          specifiedType: const FullType(String)),
      'home_quick_start',
      serializers.serialize(object.homeQuickEntry,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CommunityInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'display_type':
          result.displayType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'describe':
          result.describe = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'join_type':
          result.joinType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'create_type':
          result.createType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'join_apply_type':
          result.joinApplyType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'home_quick_start':
          result.homeQuickEntry = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CommunityTeamSerializer implements StructuredSerializer<CommunityTeam> {
  @override
  final Iterable<Type> types = const [CommunityTeam, _$CommunityTeam];
  @override
  final String wireName = 'CommunityTeam';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommunityTeam object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'fork',
      serializers.serialize(object.fork, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
      'owner',
      serializers.serialize(object.owner,
          specifiedType: const FullType(String)),
      'order',
      serializers.serialize(object.order, specifiedType: const FullType(int)),
      'black',
      serializers.serialize(object.black, specifiedType: const FullType(bool)),
      'is_mine',
      serializers.serialize(object.isMine, specifiedType: const FullType(bool)),
      'owner_wallet_hash',
      serializers.serialize(object.ownerWalletHash,
          specifiedType: const FullType(String)),
      'telegram_account',
      serializers.serialize(object.telegramAccount,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'options',
      serializers.serialize(object.options,
          specifiedType: const FullType(CommunityTeamOptions)),
      'describe',
      serializers.serialize(object.describe,
          specifiedType: const FullType(String)),
      'chain',
      serializers.serialize(object.chain,
          specifiedType: const FullType(String)),
      'symbol',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
      'create_at',
      serializers.serialize(object.createAt,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CommunityTeam deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityTeamBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'fork':
          result.fork = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'black':
          result.black = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'is_mine':
          result.isMine = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'owner_wallet_hash':
          result.ownerWalletHash = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'telegram_account':
          result.telegramAccount = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommunityTeamOptions))!
              as CommunityTeamOptions);
          break;
        case 'describe':
          result.describe = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'chain':
          result.chain = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'create_at':
          result.createAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CommunityTeamOptionsSerializer
    implements StructuredSerializer<CommunityTeamOptions> {
  @override
  final Iterable<Type> types = const [
    CommunityTeamOptions,
    _$CommunityTeamOptions
  ];
  @override
  final String wireName = 'CommunityTeamOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CommunityTeamOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'valid_address_count',
      serializers.serialize(object.addressCount,
          specifiedType: const FullType(int)),
      'valid_address_average_balance',
      serializers.serialize(object.addressAverageBalance,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
      'business_info',
      serializers.serialize(object.businessInfo,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'telegram_account',
      serializers.serialize(object.telegramAccount,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
      'join_apply_type',
      serializers.serialize(object.joinApplyType,
          specifiedType: const FullType(String)),
      'admin',
      serializers.serialize(object.admin,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
    ];

    return result;
  }

  @override
  CommunityTeamOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityTeamOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'valid_address_count':
          result.addressCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'valid_address_average_balance':
          result.addressAverageBalance.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'business_info':
          result.businessInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'telegram_account':
          result.telegramAccount = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'join_apply_type':
          result.joinApplyType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'admin':
          result.admin.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$CommunityMemberInfoSerializer
    implements StructuredSerializer<CommunityMemberInfo> {
  @override
  final Iterable<Type> types = const [
    CommunityMemberInfo,
    _$CommunityMemberInfo
  ];
  @override
  final String wireName = 'CommunityMemberInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CommunityMemberInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'describe',
      serializers.serialize(object.describe,
          specifiedType: const FullType(String)),
      'github',
      serializers.serialize(object.github,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
      'telegram_account',
      serializers.serialize(object.telegramAccount,
          specifiedType: const FullType(String)),
      'admin',
      serializers.serialize(object.admin,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
    ];

    return result;
  }

  @override
  CommunityMemberInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityMemberInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'describe':
          result.describe = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'github':
          result.github = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'telegram_account':
          result.telegramAccount = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'admin':
          result.admin.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$CommunityMemberSerializer
    implements StructuredSerializer<CommunityMember> {
  @override
  final Iterable<Type> types = const [CommunityMember, _$CommunityMember];
  @override
  final String wireName = 'CommunityMember';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommunityMember object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'team',
      serializers.serialize(object.team, specifiedType: const FullType(String)),
      'mnt_address',
      serializers.serialize(object.mntAddress,
          specifiedType: const FullType(String)),
      'order',
      serializers.serialize(object.order, specifiedType: const FullType(int)),
      'is_mine',
      serializers.serialize(object.isMine, specifiedType: const FullType(bool)),
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(CommunityMemberInfo)),
    ];

    return result;
  }

  @override
  CommunityMember deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityMemberBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'team':
          result.team = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mnt_address':
          result.mntAddress = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'is_mine':
          result.isMine = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommunityMemberInfo))!
              as CommunityMemberInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$CommunityEcologicalSerializer
    implements StructuredSerializer<CommunityEcological> {
  @override
  final Iterable<Type> types = const [
    CommunityEcological,
    _$CommunityEcological
  ];
  @override
  final String wireName = 'CommunityEcological';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CommunityEcological object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'chain',
      serializers.serialize(object.chain,
          specifiedType: const FullType(String)),
      'currency',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'fork',
      serializers.serialize(object.fork, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CommunityEcological deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityEcologicalBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'chain':
          result.chain = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currency':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fork':
          result.fork = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CommunityTeamVM extends CommunityTeamVM {
  @override
  final CommunityConfig communityConfig;
  @override
  final Future<CommunityTeam> Function(String teamId) getCommunityTeam;
  @override
  final Future<bool> Function(
      {required String fork, required String fromAddress}) checkOnChainData;

  factory _$CommunityTeamVM([void Function(CommunityTeamVMBuilder)? updates]) =>
      (new CommunityTeamVMBuilder()..update(updates))._build();

  _$CommunityTeamVM._(
      {required this.communityConfig,
      required this.getCommunityTeam,
      required this.checkOnChainData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        communityConfig, 'CommunityTeamVM', 'communityConfig');
    BuiltValueNullFieldError.checkNotNull(
        getCommunityTeam, 'CommunityTeamVM', 'getCommunityTeam');
    BuiltValueNullFieldError.checkNotNull(
        checkOnChainData, 'CommunityTeamVM', 'checkOnChainData');
  }

  @override
  CommunityTeamVM rebuild(void Function(CommunityTeamVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityTeamVMBuilder toBuilder() =>
      new CommunityTeamVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityTeamVM && communityConfig == other.communityConfig;
  }

  @override
  int get hashCode {
    return $jf($jc(0, communityConfig.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityTeamVM')
          ..add('communityConfig', communityConfig)
          ..add('getCommunityTeam', getCommunityTeam)
          ..add('checkOnChainData', checkOnChainData))
        .toString();
  }
}

class CommunityTeamVMBuilder
    implements Builder<CommunityTeamVM, CommunityTeamVMBuilder> {
  _$CommunityTeamVM? _$v;

  CommunityConfigBuilder? _communityConfig;
  CommunityConfigBuilder get communityConfig =>
      _$this._communityConfig ??= new CommunityConfigBuilder();
  set communityConfig(CommunityConfigBuilder? communityConfig) =>
      _$this._communityConfig = communityConfig;

  Future<CommunityTeam> Function(String teamId)? _getCommunityTeam;
  Future<CommunityTeam> Function(String teamId)? get getCommunityTeam =>
      _$this._getCommunityTeam;
  set getCommunityTeam(
          Future<CommunityTeam> Function(String teamId)? getCommunityTeam) =>
      _$this._getCommunityTeam = getCommunityTeam;

  Future<bool> Function({required String fork, required String fromAddress})?
      _checkOnChainData;
  Future<bool> Function({required String fork, required String fromAddress})?
      get checkOnChainData => _$this._checkOnChainData;
  set checkOnChainData(
          Future<bool> Function(
                  {required String fork, required String fromAddress})?
              checkOnChainData) =>
      _$this._checkOnChainData = checkOnChainData;

  CommunityTeamVMBuilder();

  CommunityTeamVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityConfig = $v.communityConfig.toBuilder();
      _getCommunityTeam = $v.getCommunityTeam;
      _checkOnChainData = $v.checkOnChainData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityTeamVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityTeamVM;
  }

  @override
  void update(void Function(CommunityTeamVMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityTeamVM build() => _build();

  _$CommunityTeamVM _build() {
    _$CommunityTeamVM _$result;
    try {
      _$result = _$v ??
          new _$CommunityTeamVM._(
              communityConfig: communityConfig.build(),
              getCommunityTeam: BuiltValueNullFieldError.checkNotNull(
                  getCommunityTeam, 'CommunityTeamVM', 'getCommunityTeam'),
              checkOnChainData: BuiltValueNullFieldError.checkNotNull(
                  checkOnChainData, 'CommunityTeamVM', 'checkOnChainData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'communityConfig';
        communityConfig.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityTeamVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommunityDetailVM extends CommunityDetailVM {
  @override
  final BuiltList<CommunityTeam> communityTeamList;
  @override
  final BuiltList<CommunityMember> communityMemberList;
  @override
  final bool hasWallet;
  @override
  final CommunityConfig communityConfig;
  @override
  final Future<int> Function(
      {required bool isRefresh,
      required int skip,
      required String searchName,
      required String type,
      required bool isTeamList}) loadData;
  @override
  final Future<void> Function({required bool isTeamList}) clearCommunityList;
  @override
  final Future<CommunityTeam> Function(String teamId) getCommunityTeam;
  @override
  final Future<bool> Function({required bool isTeam, required String type})
      getHasHistory;
  @override
  final Future<bool> Function(
      {required String fork, required String fromAddress}) checkOnChainData;

  factory _$CommunityDetailVM(
          [void Function(CommunityDetailVMBuilder)? updates]) =>
      (new CommunityDetailVMBuilder()..update(updates))._build();

  _$CommunityDetailVM._(
      {required this.communityTeamList,
      required this.communityMemberList,
      required this.hasWallet,
      required this.communityConfig,
      required this.loadData,
      required this.clearCommunityList,
      required this.getCommunityTeam,
      required this.getHasHistory,
      required this.checkOnChainData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        communityTeamList, 'CommunityDetailVM', 'communityTeamList');
    BuiltValueNullFieldError.checkNotNull(
        communityMemberList, 'CommunityDetailVM', 'communityMemberList');
    BuiltValueNullFieldError.checkNotNull(
        hasWallet, 'CommunityDetailVM', 'hasWallet');
    BuiltValueNullFieldError.checkNotNull(
        communityConfig, 'CommunityDetailVM', 'communityConfig');
    BuiltValueNullFieldError.checkNotNull(
        loadData, 'CommunityDetailVM', 'loadData');
    BuiltValueNullFieldError.checkNotNull(
        clearCommunityList, 'CommunityDetailVM', 'clearCommunityList');
    BuiltValueNullFieldError.checkNotNull(
        getCommunityTeam, 'CommunityDetailVM', 'getCommunityTeam');
    BuiltValueNullFieldError.checkNotNull(
        getHasHistory, 'CommunityDetailVM', 'getHasHistory');
    BuiltValueNullFieldError.checkNotNull(
        checkOnChainData, 'CommunityDetailVM', 'checkOnChainData');
  }

  @override
  CommunityDetailVM rebuild(void Function(CommunityDetailVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityDetailVMBuilder toBuilder() =>
      new CommunityDetailVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityDetailVM &&
        communityTeamList == other.communityTeamList &&
        communityMemberList == other.communityMemberList &&
        hasWallet == other.hasWallet &&
        communityConfig == other.communityConfig;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, communityTeamList.hashCode),
                communityMemberList.hashCode),
            hasWallet.hashCode),
        communityConfig.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityDetailVM')
          ..add('communityTeamList', communityTeamList)
          ..add('communityMemberList', communityMemberList)
          ..add('hasWallet', hasWallet)
          ..add('communityConfig', communityConfig)
          ..add('loadData', loadData)
          ..add('clearCommunityList', clearCommunityList)
          ..add('getCommunityTeam', getCommunityTeam)
          ..add('getHasHistory', getHasHistory)
          ..add('checkOnChainData', checkOnChainData))
        .toString();
  }
}

class CommunityDetailVMBuilder
    implements Builder<CommunityDetailVM, CommunityDetailVMBuilder> {
  _$CommunityDetailVM? _$v;

  ListBuilder<CommunityTeam>? _communityTeamList;
  ListBuilder<CommunityTeam> get communityTeamList =>
      _$this._communityTeamList ??= new ListBuilder<CommunityTeam>();
  set communityTeamList(ListBuilder<CommunityTeam>? communityTeamList) =>
      _$this._communityTeamList = communityTeamList;

  ListBuilder<CommunityMember>? _communityMemberList;
  ListBuilder<CommunityMember> get communityMemberList =>
      _$this._communityMemberList ??= new ListBuilder<CommunityMember>();
  set communityMemberList(ListBuilder<CommunityMember>? communityMemberList) =>
      _$this._communityMemberList = communityMemberList;

  bool? _hasWallet;
  bool? get hasWallet => _$this._hasWallet;
  set hasWallet(bool? hasWallet) => _$this._hasWallet = hasWallet;

  CommunityConfigBuilder? _communityConfig;
  CommunityConfigBuilder get communityConfig =>
      _$this._communityConfig ??= new CommunityConfigBuilder();
  set communityConfig(CommunityConfigBuilder? communityConfig) =>
      _$this._communityConfig = communityConfig;

  Future<int> Function(
      {required bool isRefresh,
      required int skip,
      required String searchName,
      required String type,
      required bool isTeamList})? _loadData;
  Future<int> Function(
      {required bool isRefresh,
      required int skip,
      required String searchName,
      required String type,
      required bool isTeamList})? get loadData => _$this._loadData;
  set loadData(
          Future<int> Function(
                  {required bool isRefresh,
                  required int skip,
                  required String searchName,
                  required String type,
                  required bool isTeamList})?
              loadData) =>
      _$this._loadData = loadData;

  Future<void> Function({required bool isTeamList})? _clearCommunityList;
  Future<void> Function({required bool isTeamList})? get clearCommunityList =>
      _$this._clearCommunityList;
  set clearCommunityList(
          Future<void> Function({required bool isTeamList})?
              clearCommunityList) =>
      _$this._clearCommunityList = clearCommunityList;

  Future<CommunityTeam> Function(String teamId)? _getCommunityTeam;
  Future<CommunityTeam> Function(String teamId)? get getCommunityTeam =>
      _$this._getCommunityTeam;
  set getCommunityTeam(
          Future<CommunityTeam> Function(String teamId)? getCommunityTeam) =>
      _$this._getCommunityTeam = getCommunityTeam;

  Future<bool> Function({required bool isTeam, required String type})?
      _getHasHistory;
  Future<bool> Function({required bool isTeam, required String type})?
      get getHasHistory => _$this._getHasHistory;
  set getHasHistory(
          Future<bool> Function({required bool isTeam, required String type})?
              getHasHistory) =>
      _$this._getHasHistory = getHasHistory;

  Future<bool> Function({required String fork, required String fromAddress})?
      _checkOnChainData;
  Future<bool> Function({required String fork, required String fromAddress})?
      get checkOnChainData => _$this._checkOnChainData;
  set checkOnChainData(
          Future<bool> Function(
                  {required String fork, required String fromAddress})?
              checkOnChainData) =>
      _$this._checkOnChainData = checkOnChainData;

  CommunityDetailVMBuilder();

  CommunityDetailVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityTeamList = $v.communityTeamList.toBuilder();
      _communityMemberList = $v.communityMemberList.toBuilder();
      _hasWallet = $v.hasWallet;
      _communityConfig = $v.communityConfig.toBuilder();
      _loadData = $v.loadData;
      _clearCommunityList = $v.clearCommunityList;
      _getCommunityTeam = $v.getCommunityTeam;
      _getHasHistory = $v.getHasHistory;
      _checkOnChainData = $v.checkOnChainData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityDetailVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityDetailVM;
  }

  @override
  void update(void Function(CommunityDetailVMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityDetailVM build() => _build();

  _$CommunityDetailVM _build() {
    _$CommunityDetailVM _$result;
    try {
      _$result = _$v ??
          new _$CommunityDetailVM._(
              communityTeamList: communityTeamList.build(),
              communityMemberList: communityMemberList.build(),
              hasWallet: BuiltValueNullFieldError.checkNotNull(
                  hasWallet, 'CommunityDetailVM', 'hasWallet'),
              communityConfig: communityConfig.build(),
              loadData: BuiltValueNullFieldError.checkNotNull(
                  loadData, 'CommunityDetailVM', 'loadData'),
              clearCommunityList: BuiltValueNullFieldError.checkNotNull(
                  clearCommunityList,
                  'CommunityDetailVM',
                  'clearCommunityList'),
              getCommunityTeam: BuiltValueNullFieldError.checkNotNull(
                  getCommunityTeam, 'CommunityDetailVM', 'getCommunityTeam'),
              getHasHistory: BuiltValueNullFieldError.checkNotNull(
                  getHasHistory, 'CommunityDetailVM', 'getHasHistory'),
              checkOnChainData: BuiltValueNullFieldError.checkNotNull(
                  checkOnChainData, 'CommunityDetailVM', 'checkOnChainData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'communityTeamList';
        communityTeamList.build();
        _$failedField = 'communityMemberList';
        communityMemberList.build();

        _$failedField = 'communityConfig';
        communityConfig.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityDetailVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommunityCreateVM extends CommunityCreateVM {
  @override
  final String walletId;
  @override
  final BuiltList<AssetCoin> coinList;
  @override
  final Future<void> Function(TeamCreateParams params) createCommunity;
  @override
  final Future<CommunityTeam> Function(int type) getMyTeam;

  factory _$CommunityCreateVM(
          [void Function(CommunityCreateVMBuilder)? updates]) =>
      (new CommunityCreateVMBuilder()..update(updates))._build();

  _$CommunityCreateVM._(
      {required this.walletId,
      required this.coinList,
      required this.createCommunity,
      required this.getMyTeam})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        walletId, 'CommunityCreateVM', 'walletId');
    BuiltValueNullFieldError.checkNotNull(
        coinList, 'CommunityCreateVM', 'coinList');
    BuiltValueNullFieldError.checkNotNull(
        createCommunity, 'CommunityCreateVM', 'createCommunity');
    BuiltValueNullFieldError.checkNotNull(
        getMyTeam, 'CommunityCreateVM', 'getMyTeam');
  }

  @override
  CommunityCreateVM rebuild(void Function(CommunityCreateVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityCreateVMBuilder toBuilder() =>
      new CommunityCreateVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityCreateVM &&
        walletId == other.walletId &&
        coinList == other.coinList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, walletId.hashCode), coinList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityCreateVM')
          ..add('walletId', walletId)
          ..add('coinList', coinList)
          ..add('createCommunity', createCommunity)
          ..add('getMyTeam', getMyTeam))
        .toString();
  }
}

class CommunityCreateVMBuilder
    implements Builder<CommunityCreateVM, CommunityCreateVMBuilder> {
  _$CommunityCreateVM? _$v;

  String? _walletId;
  String? get walletId => _$this._walletId;
  set walletId(String? walletId) => _$this._walletId = walletId;

  ListBuilder<AssetCoin>? _coinList;
  ListBuilder<AssetCoin> get coinList =>
      _$this._coinList ??= new ListBuilder<AssetCoin>();
  set coinList(ListBuilder<AssetCoin>? coinList) => _$this._coinList = coinList;

  Future<void> Function(TeamCreateParams params)? _createCommunity;
  Future<void> Function(TeamCreateParams params)? get createCommunity =>
      _$this._createCommunity;
  set createCommunity(
          Future<void> Function(TeamCreateParams params)? createCommunity) =>
      _$this._createCommunity = createCommunity;

  Future<CommunityTeam> Function(int type)? _getMyTeam;
  Future<CommunityTeam> Function(int type)? get getMyTeam => _$this._getMyTeam;
  set getMyTeam(Future<CommunityTeam> Function(int type)? getMyTeam) =>
      _$this._getMyTeam = getMyTeam;

  CommunityCreateVMBuilder();

  CommunityCreateVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _walletId = $v.walletId;
      _coinList = $v.coinList.toBuilder();
      _createCommunity = $v.createCommunity;
      _getMyTeam = $v.getMyTeam;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityCreateVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityCreateVM;
  }

  @override
  void update(void Function(CommunityCreateVMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityCreateVM build() => _build();

  _$CommunityCreateVM _build() {
    _$CommunityCreateVM _$result;
    try {
      _$result = _$v ??
          new _$CommunityCreateVM._(
              walletId: BuiltValueNullFieldError.checkNotNull(
                  walletId, 'CommunityCreateVM', 'walletId'),
              coinList: coinList.build(),
              createCommunity: BuiltValueNullFieldError.checkNotNull(
                  createCommunity, 'CommunityCreateVM', 'createCommunity'),
              getMyTeam: BuiltValueNullFieldError.checkNotNull(
                  getMyTeam, 'CommunityCreateVM', 'getMyTeam'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coinList';
        coinList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityCreateVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommunityJoinVM extends CommunityJoinVM {
  @override
  final String walletId;
  @override
  final Future<CommunityMember> Function(String id) getMyJoin;
  @override
  final Future<void> Function(TeamJoinParams params) joinTeam;

  factory _$CommunityJoinVM([void Function(CommunityJoinVMBuilder)? updates]) =>
      (new CommunityJoinVMBuilder()..update(updates))._build();

  _$CommunityJoinVM._(
      {required this.walletId, required this.getMyJoin, required this.joinTeam})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        walletId, 'CommunityJoinVM', 'walletId');
    BuiltValueNullFieldError.checkNotNull(
        getMyJoin, 'CommunityJoinVM', 'getMyJoin');
    BuiltValueNullFieldError.checkNotNull(
        joinTeam, 'CommunityJoinVM', 'joinTeam');
  }

  @override
  CommunityJoinVM rebuild(void Function(CommunityJoinVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityJoinVMBuilder toBuilder() =>
      new CommunityJoinVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityJoinVM && walletId == other.walletId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, walletId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityJoinVM')
          ..add('walletId', walletId)
          ..add('getMyJoin', getMyJoin)
          ..add('joinTeam', joinTeam))
        .toString();
  }
}

class CommunityJoinVMBuilder
    implements Builder<CommunityJoinVM, CommunityJoinVMBuilder> {
  _$CommunityJoinVM? _$v;

  String? _walletId;
  String? get walletId => _$this._walletId;
  set walletId(String? walletId) => _$this._walletId = walletId;

  Future<CommunityMember> Function(String id)? _getMyJoin;
  Future<CommunityMember> Function(String id)? get getMyJoin =>
      _$this._getMyJoin;
  set getMyJoin(Future<CommunityMember> Function(String id)? getMyJoin) =>
      _$this._getMyJoin = getMyJoin;

  Future<void> Function(TeamJoinParams params)? _joinTeam;
  Future<void> Function(TeamJoinParams params)? get joinTeam =>
      _$this._joinTeam;
  set joinTeam(Future<void> Function(TeamJoinParams params)? joinTeam) =>
      _$this._joinTeam = joinTeam;

  CommunityJoinVMBuilder();

  CommunityJoinVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _walletId = $v.walletId;
      _getMyJoin = $v.getMyJoin;
      _joinTeam = $v.joinTeam;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityJoinVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityJoinVM;
  }

  @override
  void update(void Function(CommunityJoinVMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityJoinVM build() => _build();

  _$CommunityJoinVM _build() {
    final _$result = _$v ??
        new _$CommunityJoinVM._(
            walletId: BuiltValueNullFieldError.checkNotNull(
                walletId, 'CommunityJoinVM', 'walletId'),
            getMyJoin: BuiltValueNullFieldError.checkNotNull(
                getMyJoin, 'CommunityJoinVM', 'getMyJoin'),
            joinTeam: BuiltValueNullFieldError.checkNotNull(
                joinTeam, 'CommunityJoinVM', 'joinTeam'));
    replace(_$result);
    return _$result;
  }
}

class _$CommunityBlacklistVM extends CommunityBlacklistVM {
  @override
  final BuiltList<CommunityTeam> communityBlacklist;
  @override
  final bool hasWallet;
  @override
  final Future<int> Function(
      {required bool isRefresh,
      required int skip,
      required String searchName,
      required String type}) loadData;
  @override
  final Future<void> Function() clearCommunityBlacklist;

  factory _$CommunityBlacklistVM(
          [void Function(CommunityBlacklistVMBuilder)? updates]) =>
      (new CommunityBlacklistVMBuilder()..update(updates))._build();

  _$CommunityBlacklistVM._(
      {required this.communityBlacklist,
      required this.hasWallet,
      required this.loadData,
      required this.clearCommunityBlacklist})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        communityBlacklist, 'CommunityBlacklistVM', 'communityBlacklist');
    BuiltValueNullFieldError.checkNotNull(
        hasWallet, 'CommunityBlacklistVM', 'hasWallet');
    BuiltValueNullFieldError.checkNotNull(
        loadData, 'CommunityBlacklistVM', 'loadData');
    BuiltValueNullFieldError.checkNotNull(clearCommunityBlacklist,
        'CommunityBlacklistVM', 'clearCommunityBlacklist');
  }

  @override
  CommunityBlacklistVM rebuild(
          void Function(CommunityBlacklistVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityBlacklistVMBuilder toBuilder() =>
      new CommunityBlacklistVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityBlacklistVM &&
        communityBlacklist == other.communityBlacklist &&
        hasWallet == other.hasWallet;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, communityBlacklist.hashCode), hasWallet.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityBlacklistVM')
          ..add('communityBlacklist', communityBlacklist)
          ..add('hasWallet', hasWallet)
          ..add('loadData', loadData)
          ..add('clearCommunityBlacklist', clearCommunityBlacklist))
        .toString();
  }
}

class CommunityBlacklistVMBuilder
    implements Builder<CommunityBlacklistVM, CommunityBlacklistVMBuilder> {
  _$CommunityBlacklistVM? _$v;

  ListBuilder<CommunityTeam>? _communityBlacklist;
  ListBuilder<CommunityTeam> get communityBlacklist =>
      _$this._communityBlacklist ??= new ListBuilder<CommunityTeam>();
  set communityBlacklist(ListBuilder<CommunityTeam>? communityBlacklist) =>
      _$this._communityBlacklist = communityBlacklist;

  bool? _hasWallet;
  bool? get hasWallet => _$this._hasWallet;
  set hasWallet(bool? hasWallet) => _$this._hasWallet = hasWallet;

  Future<int> Function(
      {required bool isRefresh,
      required int skip,
      required String searchName,
      required String type})? _loadData;
  Future<int> Function(
      {required bool isRefresh,
      required int skip,
      required String searchName,
      required String type})? get loadData => _$this._loadData;
  set loadData(
          Future<int> Function(
                  {required bool isRefresh,
                  required int skip,
                  required String searchName,
                  required String type})?
              loadData) =>
      _$this._loadData = loadData;

  Future<void> Function()? _clearCommunityBlacklist;
  Future<void> Function()? get clearCommunityBlacklist =>
      _$this._clearCommunityBlacklist;
  set clearCommunityBlacklist(
          Future<void> Function()? clearCommunityBlacklist) =>
      _$this._clearCommunityBlacklist = clearCommunityBlacklist;

  CommunityBlacklistVMBuilder();

  CommunityBlacklistVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityBlacklist = $v.communityBlacklist.toBuilder();
      _hasWallet = $v.hasWallet;
      _loadData = $v.loadData;
      _clearCommunityBlacklist = $v.clearCommunityBlacklist;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityBlacklistVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityBlacklistVM;
  }

  @override
  void update(void Function(CommunityBlacklistVMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityBlacklistVM build() => _build();

  _$CommunityBlacklistVM _build() {
    _$CommunityBlacklistVM _$result;
    try {
      _$result = _$v ??
          new _$CommunityBlacklistVM._(
              communityBlacklist: communityBlacklist.build(),
              hasWallet: BuiltValueNullFieldError.checkNotNull(
                  hasWallet, 'CommunityBlacklistVM', 'hasWallet'),
              loadData: BuiltValueNullFieldError.checkNotNull(
                  loadData, 'CommunityBlacklistVM', 'loadData'),
              clearCommunityBlacklist: BuiltValueNullFieldError.checkNotNull(
                  clearCommunityBlacklist,
                  'CommunityBlacklistVM',
                  'clearCommunityBlacklist'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'communityBlacklist';
        communityBlacklist.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityBlacklistVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommunityConfig extends CommunityConfig {
  @override
  final String fork;
  @override
  final BuiltList<int> homeList;
  @override
  final BuiltList<CommunityInfo> types;
  @override
  final BuiltList<CommunityEcological> ecological;

  factory _$CommunityConfig([void Function(CommunityConfigBuilder)? updates]) =>
      (new CommunityConfigBuilder()..update(updates))._build();

  _$CommunityConfig._(
      {required this.fork,
      required this.homeList,
      required this.types,
      required this.ecological})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(fork, 'CommunityConfig', 'fork');
    BuiltValueNullFieldError.checkNotNull(
        homeList, 'CommunityConfig', 'homeList');
    BuiltValueNullFieldError.checkNotNull(types, 'CommunityConfig', 'types');
    BuiltValueNullFieldError.checkNotNull(
        ecological, 'CommunityConfig', 'ecological');
  }

  @override
  CommunityConfig rebuild(void Function(CommunityConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityConfigBuilder toBuilder() =>
      new CommunityConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityConfig &&
        fork == other.fork &&
        homeList == other.homeList &&
        types == other.types &&
        ecological == other.ecological;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, fork.hashCode), homeList.hashCode), types.hashCode),
        ecological.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityConfig')
          ..add('fork', fork)
          ..add('homeList', homeList)
          ..add('types', types)
          ..add('ecological', ecological))
        .toString();
  }
}

class CommunityConfigBuilder
    implements Builder<CommunityConfig, CommunityConfigBuilder> {
  _$CommunityConfig? _$v;

  String? _fork;
  String? get fork => _$this._fork;
  set fork(String? fork) => _$this._fork = fork;

  ListBuilder<int>? _homeList;
  ListBuilder<int> get homeList => _$this._homeList ??= new ListBuilder<int>();
  set homeList(ListBuilder<int>? homeList) => _$this._homeList = homeList;

  ListBuilder<CommunityInfo>? _types;
  ListBuilder<CommunityInfo> get types =>
      _$this._types ??= new ListBuilder<CommunityInfo>();
  set types(ListBuilder<CommunityInfo>? types) => _$this._types = types;

  ListBuilder<CommunityEcological>? _ecological;
  ListBuilder<CommunityEcological> get ecological =>
      _$this._ecological ??= new ListBuilder<CommunityEcological>();
  set ecological(ListBuilder<CommunityEcological>? ecological) =>
      _$this._ecological = ecological;

  CommunityConfigBuilder();

  CommunityConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fork = $v.fork;
      _homeList = $v.homeList.toBuilder();
      _types = $v.types.toBuilder();
      _ecological = $v.ecological.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityConfig;
  }

  @override
  void update(void Function(CommunityConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityConfig build() => _build();

  _$CommunityConfig _build() {
    _$CommunityConfig _$result;
    try {
      _$result = _$v ??
          new _$CommunityConfig._(
              fork: BuiltValueNullFieldError.checkNotNull(
                  fork, 'CommunityConfig', 'fork'),
              homeList: homeList.build(),
              types: types.build(),
              ecological: ecological.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'homeList';
        homeList.build();
        _$failedField = 'types';
        types.build();
        _$failedField = 'ecological';
        ecological.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommunityInfo extends CommunityInfo {
  @override
  final String displayType;
  @override
  final String id;
  @override
  final String name;
  @override
  final int type;
  @override
  final String describe;
  @override
  final String image;
  @override
  final String joinType;
  @override
  final String createType;
  @override
  final String joinApplyType;
  @override
  final String homeQuickEntry;

  factory _$CommunityInfo([void Function(CommunityInfoBuilder)? updates]) =>
      (new CommunityInfoBuilder()..update(updates))._build();

  _$CommunityInfo._(
      {required this.displayType,
      required this.id,
      required this.name,
      required this.type,
      required this.describe,
      required this.image,
      required this.joinType,
      required this.createType,
      required this.joinApplyType,
      required this.homeQuickEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        displayType, 'CommunityInfo', 'displayType');
    BuiltValueNullFieldError.checkNotNull(id, 'CommunityInfo', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'CommunityInfo', 'name');
    BuiltValueNullFieldError.checkNotNull(type, 'CommunityInfo', 'type');
    BuiltValueNullFieldError.checkNotNull(
        describe, 'CommunityInfo', 'describe');
    BuiltValueNullFieldError.checkNotNull(image, 'CommunityInfo', 'image');
    BuiltValueNullFieldError.checkNotNull(
        joinType, 'CommunityInfo', 'joinType');
    BuiltValueNullFieldError.checkNotNull(
        createType, 'CommunityInfo', 'createType');
    BuiltValueNullFieldError.checkNotNull(
        joinApplyType, 'CommunityInfo', 'joinApplyType');
    BuiltValueNullFieldError.checkNotNull(
        homeQuickEntry, 'CommunityInfo', 'homeQuickEntry');
  }

  @override
  CommunityInfo rebuild(void Function(CommunityInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityInfoBuilder toBuilder() => new CommunityInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityInfo &&
        displayType == other.displayType &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        describe == other.describe &&
        image == other.image &&
        joinType == other.joinType &&
        createType == other.createType &&
        joinApplyType == other.joinApplyType &&
        homeQuickEntry == other.homeQuickEntry;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, displayType.hashCode),
                                        id.hashCode),
                                    name.hashCode),
                                type.hashCode),
                            describe.hashCode),
                        image.hashCode),
                    joinType.hashCode),
                createType.hashCode),
            joinApplyType.hashCode),
        homeQuickEntry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityInfo')
          ..add('displayType', displayType)
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('describe', describe)
          ..add('image', image)
          ..add('joinType', joinType)
          ..add('createType', createType)
          ..add('joinApplyType', joinApplyType)
          ..add('homeQuickEntry', homeQuickEntry))
        .toString();
  }
}

class CommunityInfoBuilder
    implements Builder<CommunityInfo, CommunityInfoBuilder> {
  _$CommunityInfo? _$v;

  String? _displayType;
  String? get displayType => _$this._displayType;
  set displayType(String? displayType) => _$this._displayType = displayType;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  String? _describe;
  String? get describe => _$this._describe;
  set describe(String? describe) => _$this._describe = describe;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _joinType;
  String? get joinType => _$this._joinType;
  set joinType(String? joinType) => _$this._joinType = joinType;

  String? _createType;
  String? get createType => _$this._createType;
  set createType(String? createType) => _$this._createType = createType;

  String? _joinApplyType;
  String? get joinApplyType => _$this._joinApplyType;
  set joinApplyType(String? joinApplyType) =>
      _$this._joinApplyType = joinApplyType;

  String? _homeQuickEntry;
  String? get homeQuickEntry => _$this._homeQuickEntry;
  set homeQuickEntry(String? homeQuickEntry) =>
      _$this._homeQuickEntry = homeQuickEntry;

  CommunityInfoBuilder();

  CommunityInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayType = $v.displayType;
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _describe = $v.describe;
      _image = $v.image;
      _joinType = $v.joinType;
      _createType = $v.createType;
      _joinApplyType = $v.joinApplyType;
      _homeQuickEntry = $v.homeQuickEntry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityInfo;
  }

  @override
  void update(void Function(CommunityInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityInfo build() => _build();

  _$CommunityInfo _build() {
    final _$result = _$v ??
        new _$CommunityInfo._(
            displayType: BuiltValueNullFieldError.checkNotNull(
                displayType, 'CommunityInfo', 'displayType'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'CommunityInfo', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'CommunityInfo', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'CommunityInfo', 'type'),
            describe: BuiltValueNullFieldError.checkNotNull(
                describe, 'CommunityInfo', 'describe'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'CommunityInfo', 'image'),
            joinType: BuiltValueNullFieldError.checkNotNull(
                joinType, 'CommunityInfo', 'joinType'),
            createType: BuiltValueNullFieldError.checkNotNull(
                createType, 'CommunityInfo', 'createType'),
            joinApplyType: BuiltValueNullFieldError.checkNotNull(
                joinApplyType, 'CommunityInfo', 'joinApplyType'),
            homeQuickEntry: BuiltValueNullFieldError.checkNotNull(
                homeQuickEntry, 'CommunityInfo', 'homeQuickEntry'));
    replace(_$result);
    return _$result;
  }
}

class _$CommunityTeam extends CommunityTeam {
  @override
  final String id;
  @override
  final int status;
  @override
  final String fork;
  @override
  final int type;
  @override
  final String owner;
  @override
  final int order;
  @override
  final bool black;
  @override
  final bool isMine;
  @override
  final String ownerWalletHash;
  @override
  final String telegramAccount;
  @override
  final String name;
  @override
  final CommunityTeamOptions options;
  @override
  final String describe;
  @override
  final String chain;
  @override
  final String symbol;
  @override
  final int createAt;

  factory _$CommunityTeam([void Function(CommunityTeamBuilder)? updates]) =>
      (new CommunityTeamBuilder()..update(updates))._build();

  _$CommunityTeam._(
      {required this.id,
      required this.status,
      required this.fork,
      required this.type,
      required this.owner,
      required this.order,
      required this.black,
      required this.isMine,
      required this.ownerWalletHash,
      required this.telegramAccount,
      required this.name,
      required this.options,
      required this.describe,
      required this.chain,
      required this.symbol,
      required this.createAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CommunityTeam', 'id');
    BuiltValueNullFieldError.checkNotNull(status, 'CommunityTeam', 'status');
    BuiltValueNullFieldError.checkNotNull(fork, 'CommunityTeam', 'fork');
    BuiltValueNullFieldError.checkNotNull(type, 'CommunityTeam', 'type');
    BuiltValueNullFieldError.checkNotNull(owner, 'CommunityTeam', 'owner');
    BuiltValueNullFieldError.checkNotNull(order, 'CommunityTeam', 'order');
    BuiltValueNullFieldError.checkNotNull(black, 'CommunityTeam', 'black');
    BuiltValueNullFieldError.checkNotNull(isMine, 'CommunityTeam', 'isMine');
    BuiltValueNullFieldError.checkNotNull(
        ownerWalletHash, 'CommunityTeam', 'ownerWalletHash');
    BuiltValueNullFieldError.checkNotNull(
        telegramAccount, 'CommunityTeam', 'telegramAccount');
    BuiltValueNullFieldError.checkNotNull(name, 'CommunityTeam', 'name');
    BuiltValueNullFieldError.checkNotNull(options, 'CommunityTeam', 'options');
    BuiltValueNullFieldError.checkNotNull(
        describe, 'CommunityTeam', 'describe');
    BuiltValueNullFieldError.checkNotNull(chain, 'CommunityTeam', 'chain');
    BuiltValueNullFieldError.checkNotNull(symbol, 'CommunityTeam', 'symbol');
    BuiltValueNullFieldError.checkNotNull(
        createAt, 'CommunityTeam', 'createAt');
  }

  @override
  CommunityTeam rebuild(void Function(CommunityTeamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityTeamBuilder toBuilder() => new CommunityTeamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityTeam &&
        id == other.id &&
        status == other.status &&
        fork == other.fork &&
        type == other.type &&
        owner == other.owner &&
        order == other.order &&
        black == other.black &&
        isMine == other.isMine &&
        ownerWalletHash == other.ownerWalletHash &&
        telegramAccount == other.telegramAccount &&
        name == other.name &&
        options == other.options &&
        describe == other.describe &&
        chain == other.chain &&
        symbol == other.symbol &&
        createAt == other.createAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(0,
                                                                    id.hashCode),
                                                                status.hashCode),
                                                            fork.hashCode),
                                                        type.hashCode),
                                                    owner.hashCode),
                                                order.hashCode),
                                            black.hashCode),
                                        isMine.hashCode),
                                    ownerWalletHash.hashCode),
                                telegramAccount.hashCode),
                            name.hashCode),
                        options.hashCode),
                    describe.hashCode),
                chain.hashCode),
            symbol.hashCode),
        createAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityTeam')
          ..add('id', id)
          ..add('status', status)
          ..add('fork', fork)
          ..add('type', type)
          ..add('owner', owner)
          ..add('order', order)
          ..add('black', black)
          ..add('isMine', isMine)
          ..add('ownerWalletHash', ownerWalletHash)
          ..add('telegramAccount', telegramAccount)
          ..add('name', name)
          ..add('options', options)
          ..add('describe', describe)
          ..add('chain', chain)
          ..add('symbol', symbol)
          ..add('createAt', createAt))
        .toString();
  }
}

class CommunityTeamBuilder
    implements Builder<CommunityTeam, CommunityTeamBuilder> {
  _$CommunityTeam? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _fork;
  String? get fork => _$this._fork;
  set fork(String? fork) => _$this._fork = fork;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  bool? _black;
  bool? get black => _$this._black;
  set black(bool? black) => _$this._black = black;

  bool? _isMine;
  bool? get isMine => _$this._isMine;
  set isMine(bool? isMine) => _$this._isMine = isMine;

  String? _ownerWalletHash;
  String? get ownerWalletHash => _$this._ownerWalletHash;
  set ownerWalletHash(String? ownerWalletHash) =>
      _$this._ownerWalletHash = ownerWalletHash;

  String? _telegramAccount;
  String? get telegramAccount => _$this._telegramAccount;
  set telegramAccount(String? telegramAccount) =>
      _$this._telegramAccount = telegramAccount;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CommunityTeamOptionsBuilder? _options;
  CommunityTeamOptionsBuilder get options =>
      _$this._options ??= new CommunityTeamOptionsBuilder();
  set options(CommunityTeamOptionsBuilder? options) =>
      _$this._options = options;

  String? _describe;
  String? get describe => _$this._describe;
  set describe(String? describe) => _$this._describe = describe;

  String? _chain;
  String? get chain => _$this._chain;
  set chain(String? chain) => _$this._chain = chain;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  int? _createAt;
  int? get createAt => _$this._createAt;
  set createAt(int? createAt) => _$this._createAt = createAt;

  CommunityTeamBuilder();

  CommunityTeamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _fork = $v.fork;
      _type = $v.type;
      _owner = $v.owner;
      _order = $v.order;
      _black = $v.black;
      _isMine = $v.isMine;
      _ownerWalletHash = $v.ownerWalletHash;
      _telegramAccount = $v.telegramAccount;
      _name = $v.name;
      _options = $v.options.toBuilder();
      _describe = $v.describe;
      _chain = $v.chain;
      _symbol = $v.symbol;
      _createAt = $v.createAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityTeam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityTeam;
  }

  @override
  void update(void Function(CommunityTeamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityTeam build() => _build();

  _$CommunityTeam _build() {
    _$CommunityTeam _$result;
    try {
      _$result = _$v ??
          new _$CommunityTeam._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'CommunityTeam', 'id'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'CommunityTeam', 'status'),
              fork: BuiltValueNullFieldError.checkNotNull(
                  fork, 'CommunityTeam', 'fork'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'CommunityTeam', 'type'),
              owner: BuiltValueNullFieldError.checkNotNull(
                  owner, 'CommunityTeam', 'owner'),
              order: BuiltValueNullFieldError.checkNotNull(
                  order, 'CommunityTeam', 'order'),
              black: BuiltValueNullFieldError.checkNotNull(
                  black, 'CommunityTeam', 'black'),
              isMine: BuiltValueNullFieldError.checkNotNull(
                  isMine, 'CommunityTeam', 'isMine'),
              ownerWalletHash: BuiltValueNullFieldError.checkNotNull(
                  ownerWalletHash, 'CommunityTeam', 'ownerWalletHash'),
              telegramAccount: BuiltValueNullFieldError.checkNotNull(
                  telegramAccount, 'CommunityTeam', 'telegramAccount'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'CommunityTeam', 'name'),
              options: options.build(),
              describe: BuiltValueNullFieldError.checkNotNull(describe, 'CommunityTeam', 'describe'),
              chain: BuiltValueNullFieldError.checkNotNull(chain, 'CommunityTeam', 'chain'),
              symbol: BuiltValueNullFieldError.checkNotNull(symbol, 'CommunityTeam', 'symbol'),
              createAt: BuiltValueNullFieldError.checkNotNull(createAt, 'CommunityTeam', 'createAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityTeam', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommunityTeamOptions extends CommunityTeamOptions {
  @override
  final int addressCount;
  @override
  final BuiltMap<String, String> addressAverageBalance;
  @override
  final BuiltList<String> businessInfo;
  @override
  final String telegramAccount;
  @override
  final String icon;
  @override
  final String joinApplyType;
  @override
  final BuiltMap<String, String> admin;

  factory _$CommunityTeamOptions(
          [void Function(CommunityTeamOptionsBuilder)? updates]) =>
      (new CommunityTeamOptionsBuilder()..update(updates))._build();

  _$CommunityTeamOptions._(
      {required this.addressCount,
      required this.addressAverageBalance,
      required this.businessInfo,
      required this.telegramAccount,
      required this.icon,
      required this.joinApplyType,
      required this.admin})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        addressCount, 'CommunityTeamOptions', 'addressCount');
    BuiltValueNullFieldError.checkNotNull(
        addressAverageBalance, 'CommunityTeamOptions', 'addressAverageBalance');
    BuiltValueNullFieldError.checkNotNull(
        businessInfo, 'CommunityTeamOptions', 'businessInfo');
    BuiltValueNullFieldError.checkNotNull(
        telegramAccount, 'CommunityTeamOptions', 'telegramAccount');
    BuiltValueNullFieldError.checkNotNull(icon, 'CommunityTeamOptions', 'icon');
    BuiltValueNullFieldError.checkNotNull(
        joinApplyType, 'CommunityTeamOptions', 'joinApplyType');
    BuiltValueNullFieldError.checkNotNull(
        admin, 'CommunityTeamOptions', 'admin');
  }

  @override
  CommunityTeamOptions rebuild(
          void Function(CommunityTeamOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityTeamOptionsBuilder toBuilder() =>
      new CommunityTeamOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityTeamOptions &&
        addressCount == other.addressCount &&
        addressAverageBalance == other.addressAverageBalance &&
        businessInfo == other.businessInfo &&
        telegramAccount == other.telegramAccount &&
        icon == other.icon &&
        joinApplyType == other.joinApplyType &&
        admin == other.admin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, addressCount.hashCode),
                            addressAverageBalance.hashCode),
                        businessInfo.hashCode),
                    telegramAccount.hashCode),
                icon.hashCode),
            joinApplyType.hashCode),
        admin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityTeamOptions')
          ..add('addressCount', addressCount)
          ..add('addressAverageBalance', addressAverageBalance)
          ..add('businessInfo', businessInfo)
          ..add('telegramAccount', telegramAccount)
          ..add('icon', icon)
          ..add('joinApplyType', joinApplyType)
          ..add('admin', admin))
        .toString();
  }
}

class CommunityTeamOptionsBuilder
    implements Builder<CommunityTeamOptions, CommunityTeamOptionsBuilder> {
  _$CommunityTeamOptions? _$v;

  int? _addressCount;
  int? get addressCount => _$this._addressCount;
  set addressCount(int? addressCount) => _$this._addressCount = addressCount;

  MapBuilder<String, String>? _addressAverageBalance;
  MapBuilder<String, String> get addressAverageBalance =>
      _$this._addressAverageBalance ??= new MapBuilder<String, String>();
  set addressAverageBalance(
          MapBuilder<String, String>? addressAverageBalance) =>
      _$this._addressAverageBalance = addressAverageBalance;

  ListBuilder<String>? _businessInfo;
  ListBuilder<String> get businessInfo =>
      _$this._businessInfo ??= new ListBuilder<String>();
  set businessInfo(ListBuilder<String>? businessInfo) =>
      _$this._businessInfo = businessInfo;

  String? _telegramAccount;
  String? get telegramAccount => _$this._telegramAccount;
  set telegramAccount(String? telegramAccount) =>
      _$this._telegramAccount = telegramAccount;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _joinApplyType;
  String? get joinApplyType => _$this._joinApplyType;
  set joinApplyType(String? joinApplyType) =>
      _$this._joinApplyType = joinApplyType;

  MapBuilder<String, String>? _admin;
  MapBuilder<String, String> get admin =>
      _$this._admin ??= new MapBuilder<String, String>();
  set admin(MapBuilder<String, String>? admin) => _$this._admin = admin;

  CommunityTeamOptionsBuilder();

  CommunityTeamOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addressCount = $v.addressCount;
      _addressAverageBalance = $v.addressAverageBalance.toBuilder();
      _businessInfo = $v.businessInfo.toBuilder();
      _telegramAccount = $v.telegramAccount;
      _icon = $v.icon;
      _joinApplyType = $v.joinApplyType;
      _admin = $v.admin.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityTeamOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityTeamOptions;
  }

  @override
  void update(void Function(CommunityTeamOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityTeamOptions build() => _build();

  _$CommunityTeamOptions _build() {
    _$CommunityTeamOptions _$result;
    try {
      _$result = _$v ??
          new _$CommunityTeamOptions._(
              addressCount: BuiltValueNullFieldError.checkNotNull(
                  addressCount, 'CommunityTeamOptions', 'addressCount'),
              addressAverageBalance: addressAverageBalance.build(),
              businessInfo: businessInfo.build(),
              telegramAccount: BuiltValueNullFieldError.checkNotNull(
                  telegramAccount, 'CommunityTeamOptions', 'telegramAccount'),
              icon: BuiltValueNullFieldError.checkNotNull(
                  icon, 'CommunityTeamOptions', 'icon'),
              joinApplyType: BuiltValueNullFieldError.checkNotNull(
                  joinApplyType, 'CommunityTeamOptions', 'joinApplyType'),
              admin: admin.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addressAverageBalance';
        addressAverageBalance.build();
        _$failedField = 'businessInfo';
        businessInfo.build();

        _$failedField = 'admin';
        admin.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityTeamOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommunityMemberInfo extends CommunityMemberInfo {
  @override
  final String name;
  @override
  final String describe;
  @override
  final String github;
  @override
  final String icon;
  @override
  final String telegramAccount;
  @override
  final BuiltMap<String, String> admin;

  factory _$CommunityMemberInfo(
          [void Function(CommunityMemberInfoBuilder)? updates]) =>
      (new CommunityMemberInfoBuilder()..update(updates))._build();

  _$CommunityMemberInfo._(
      {required this.name,
      required this.describe,
      required this.github,
      required this.icon,
      required this.telegramAccount,
      required this.admin})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'CommunityMemberInfo', 'name');
    BuiltValueNullFieldError.checkNotNull(
        describe, 'CommunityMemberInfo', 'describe');
    BuiltValueNullFieldError.checkNotNull(
        github, 'CommunityMemberInfo', 'github');
    BuiltValueNullFieldError.checkNotNull(icon, 'CommunityMemberInfo', 'icon');
    BuiltValueNullFieldError.checkNotNull(
        telegramAccount, 'CommunityMemberInfo', 'telegramAccount');
    BuiltValueNullFieldError.checkNotNull(
        admin, 'CommunityMemberInfo', 'admin');
  }

  @override
  CommunityMemberInfo rebuild(
          void Function(CommunityMemberInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityMemberInfoBuilder toBuilder() =>
      new CommunityMemberInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityMemberInfo &&
        name == other.name &&
        describe == other.describe &&
        github == other.github &&
        icon == other.icon &&
        telegramAccount == other.telegramAccount &&
        admin == other.admin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), describe.hashCode),
                    github.hashCode),
                icon.hashCode),
            telegramAccount.hashCode),
        admin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityMemberInfo')
          ..add('name', name)
          ..add('describe', describe)
          ..add('github', github)
          ..add('icon', icon)
          ..add('telegramAccount', telegramAccount)
          ..add('admin', admin))
        .toString();
  }
}

class CommunityMemberInfoBuilder
    implements Builder<CommunityMemberInfo, CommunityMemberInfoBuilder> {
  _$CommunityMemberInfo? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _describe;
  String? get describe => _$this._describe;
  set describe(String? describe) => _$this._describe = describe;

  String? _github;
  String? get github => _$this._github;
  set github(String? github) => _$this._github = github;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _telegramAccount;
  String? get telegramAccount => _$this._telegramAccount;
  set telegramAccount(String? telegramAccount) =>
      _$this._telegramAccount = telegramAccount;

  MapBuilder<String, String>? _admin;
  MapBuilder<String, String> get admin =>
      _$this._admin ??= new MapBuilder<String, String>();
  set admin(MapBuilder<String, String>? admin) => _$this._admin = admin;

  CommunityMemberInfoBuilder();

  CommunityMemberInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _describe = $v.describe;
      _github = $v.github;
      _icon = $v.icon;
      _telegramAccount = $v.telegramAccount;
      _admin = $v.admin.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityMemberInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityMemberInfo;
  }

  @override
  void update(void Function(CommunityMemberInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityMemberInfo build() => _build();

  _$CommunityMemberInfo _build() {
    _$CommunityMemberInfo _$result;
    try {
      _$result = _$v ??
          new _$CommunityMemberInfo._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'CommunityMemberInfo', 'name'),
              describe: BuiltValueNullFieldError.checkNotNull(
                  describe, 'CommunityMemberInfo', 'describe'),
              github: BuiltValueNullFieldError.checkNotNull(
                  github, 'CommunityMemberInfo', 'github'),
              icon: BuiltValueNullFieldError.checkNotNull(
                  icon, 'CommunityMemberInfo', 'icon'),
              telegramAccount: BuiltValueNullFieldError.checkNotNull(
                  telegramAccount, 'CommunityMemberInfo', 'telegramAccount'),
              admin: admin.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'admin';
        admin.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityMemberInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommunityMember extends CommunityMember {
  @override
  final String id;
  @override
  final int status;
  @override
  final String team;
  @override
  final String mntAddress;
  @override
  final int order;
  @override
  final bool isMine;
  @override
  final CommunityMemberInfo info;

  factory _$CommunityMember([void Function(CommunityMemberBuilder)? updates]) =>
      (new CommunityMemberBuilder()..update(updates))._build();

  _$CommunityMember._(
      {required this.id,
      required this.status,
      required this.team,
      required this.mntAddress,
      required this.order,
      required this.isMine,
      required this.info})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CommunityMember', 'id');
    BuiltValueNullFieldError.checkNotNull(status, 'CommunityMember', 'status');
    BuiltValueNullFieldError.checkNotNull(team, 'CommunityMember', 'team');
    BuiltValueNullFieldError.checkNotNull(
        mntAddress, 'CommunityMember', 'mntAddress');
    BuiltValueNullFieldError.checkNotNull(order, 'CommunityMember', 'order');
    BuiltValueNullFieldError.checkNotNull(isMine, 'CommunityMember', 'isMine');
    BuiltValueNullFieldError.checkNotNull(info, 'CommunityMember', 'info');
  }

  @override
  CommunityMember rebuild(void Function(CommunityMemberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityMemberBuilder toBuilder() =>
      new CommunityMemberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityMember &&
        id == other.id &&
        status == other.status &&
        team == other.team &&
        mntAddress == other.mntAddress &&
        order == other.order &&
        isMine == other.isMine &&
        info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), status.hashCode),
                        team.hashCode),
                    mntAddress.hashCode),
                order.hashCode),
            isMine.hashCode),
        info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityMember')
          ..add('id', id)
          ..add('status', status)
          ..add('team', team)
          ..add('mntAddress', mntAddress)
          ..add('order', order)
          ..add('isMine', isMine)
          ..add('info', info))
        .toString();
  }
}

class CommunityMemberBuilder
    implements Builder<CommunityMember, CommunityMemberBuilder> {
  _$CommunityMember? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _team;
  String? get team => _$this._team;
  set team(String? team) => _$this._team = team;

  String? _mntAddress;
  String? get mntAddress => _$this._mntAddress;
  set mntAddress(String? mntAddress) => _$this._mntAddress = mntAddress;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  bool? _isMine;
  bool? get isMine => _$this._isMine;
  set isMine(bool? isMine) => _$this._isMine = isMine;

  CommunityMemberInfoBuilder? _info;
  CommunityMemberInfoBuilder get info =>
      _$this._info ??= new CommunityMemberInfoBuilder();
  set info(CommunityMemberInfoBuilder? info) => _$this._info = info;

  CommunityMemberBuilder();

  CommunityMemberBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _team = $v.team;
      _mntAddress = $v.mntAddress;
      _order = $v.order;
      _isMine = $v.isMine;
      _info = $v.info.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityMember other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityMember;
  }

  @override
  void update(void Function(CommunityMemberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityMember build() => _build();

  _$CommunityMember _build() {
    _$CommunityMember _$result;
    try {
      _$result = _$v ??
          new _$CommunityMember._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'CommunityMember', 'id'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'CommunityMember', 'status'),
              team: BuiltValueNullFieldError.checkNotNull(
                  team, 'CommunityMember', 'team'),
              mntAddress: BuiltValueNullFieldError.checkNotNull(
                  mntAddress, 'CommunityMember', 'mntAddress'),
              order: BuiltValueNullFieldError.checkNotNull(
                  order, 'CommunityMember', 'order'),
              isMine: BuiltValueNullFieldError.checkNotNull(
                  isMine, 'CommunityMember', 'isMine'),
              info: info.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityMember', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommunityEcological extends CommunityEcological {
  @override
  final String chain;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String fork;
  @override
  final String id;

  factory _$CommunityEcological(
          [void Function(CommunityEcologicalBuilder)? updates]) =>
      (new CommunityEcologicalBuilder()..update(updates))._build();

  _$CommunityEcological._(
      {required this.chain,
      required this.symbol,
      required this.name,
      required this.fork,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        chain, 'CommunityEcological', 'chain');
    BuiltValueNullFieldError.checkNotNull(
        symbol, 'CommunityEcological', 'symbol');
    BuiltValueNullFieldError.checkNotNull(name, 'CommunityEcological', 'name');
    BuiltValueNullFieldError.checkNotNull(fork, 'CommunityEcological', 'fork');
    BuiltValueNullFieldError.checkNotNull(id, 'CommunityEcological', 'id');
  }

  @override
  CommunityEcological rebuild(
          void Function(CommunityEcologicalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityEcologicalBuilder toBuilder() =>
      new CommunityEcologicalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityEcological &&
        chain == other.chain &&
        symbol == other.symbol &&
        name == other.name &&
        fork == other.fork &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, chain.hashCode), symbol.hashCode), name.hashCode),
            fork.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityEcological')
          ..add('chain', chain)
          ..add('symbol', symbol)
          ..add('name', name)
          ..add('fork', fork)
          ..add('id', id))
        .toString();
  }
}

class CommunityEcologicalBuilder
    implements Builder<CommunityEcological, CommunityEcologicalBuilder> {
  _$CommunityEcological? _$v;

  String? _chain;
  String? get chain => _$this._chain;
  set chain(String? chain) => _$this._chain = chain;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _fork;
  String? get fork => _$this._fork;
  set fork(String? fork) => _$this._fork = fork;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  CommunityEcologicalBuilder();

  CommunityEcologicalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chain = $v.chain;
      _symbol = $v.symbol;
      _name = $v.name;
      _fork = $v.fork;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityEcological other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityEcological;
  }

  @override
  void update(void Function(CommunityEcologicalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityEcological build() => _build();

  _$CommunityEcological _build() {
    final _$result = _$v ??
        new _$CommunityEcological._(
            chain: BuiltValueNullFieldError.checkNotNull(
                chain, 'CommunityEcological', 'chain'),
            symbol: BuiltValueNullFieldError.checkNotNull(
                symbol, 'CommunityEcological', 'symbol'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'CommunityEcological', 'name'),
            fork: BuiltValueNullFieldError.checkNotNull(
                fork, 'CommunityEcological', 'fork'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'CommunityEcological', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$CommunityState extends CommunityState {
  @override
  final CommunityConfig config;
  @override
  final int configState;
  @override
  final BuiltList<CommunityTeam> communityTeamList;
  @override
  final BuiltList<CommunityMember> communityMemberList;
  @override
  final BuiltList<CommunityTeam> communityBlacklist;

  factory _$CommunityState([void Function(CommunityStateBuilder)? updates]) =>
      (new CommunityStateBuilder()..update(updates))._build();

  _$CommunityState._(
      {required this.config,
      required this.configState,
      required this.communityTeamList,
      required this.communityMemberList,
      required this.communityBlacklist})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(config, 'CommunityState', 'config');
    BuiltValueNullFieldError.checkNotNull(
        configState, 'CommunityState', 'configState');
    BuiltValueNullFieldError.checkNotNull(
        communityTeamList, 'CommunityState', 'communityTeamList');
    BuiltValueNullFieldError.checkNotNull(
        communityMemberList, 'CommunityState', 'communityMemberList');
    BuiltValueNullFieldError.checkNotNull(
        communityBlacklist, 'CommunityState', 'communityBlacklist');
  }

  @override
  CommunityState rebuild(void Function(CommunityStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityStateBuilder toBuilder() =>
      new CommunityStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityState &&
        config == other.config &&
        configState == other.configState &&
        communityTeamList == other.communityTeamList &&
        communityMemberList == other.communityMemberList &&
        communityBlacklist == other.communityBlacklist;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, config.hashCode), configState.hashCode),
                communityTeamList.hashCode),
            communityMemberList.hashCode),
        communityBlacklist.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityState')
          ..add('config', config)
          ..add('configState', configState)
          ..add('communityTeamList', communityTeamList)
          ..add('communityMemberList', communityMemberList)
          ..add('communityBlacklist', communityBlacklist))
        .toString();
  }
}

class CommunityStateBuilder
    implements Builder<CommunityState, CommunityStateBuilder> {
  _$CommunityState? _$v;

  CommunityConfigBuilder? _config;
  CommunityConfigBuilder get config =>
      _$this._config ??= new CommunityConfigBuilder();
  set config(CommunityConfigBuilder? config) => _$this._config = config;

  int? _configState;
  int? get configState => _$this._configState;
  set configState(int? configState) => _$this._configState = configState;

  ListBuilder<CommunityTeam>? _communityTeamList;
  ListBuilder<CommunityTeam> get communityTeamList =>
      _$this._communityTeamList ??= new ListBuilder<CommunityTeam>();
  set communityTeamList(ListBuilder<CommunityTeam>? communityTeamList) =>
      _$this._communityTeamList = communityTeamList;

  ListBuilder<CommunityMember>? _communityMemberList;
  ListBuilder<CommunityMember> get communityMemberList =>
      _$this._communityMemberList ??= new ListBuilder<CommunityMember>();
  set communityMemberList(ListBuilder<CommunityMember>? communityMemberList) =>
      _$this._communityMemberList = communityMemberList;

  ListBuilder<CommunityTeam>? _communityBlacklist;
  ListBuilder<CommunityTeam> get communityBlacklist =>
      _$this._communityBlacklist ??= new ListBuilder<CommunityTeam>();
  set communityBlacklist(ListBuilder<CommunityTeam>? communityBlacklist) =>
      _$this._communityBlacklist = communityBlacklist;

  CommunityStateBuilder();

  CommunityStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _config = $v.config.toBuilder();
      _configState = $v.configState;
      _communityTeamList = $v.communityTeamList.toBuilder();
      _communityMemberList = $v.communityMemberList.toBuilder();
      _communityBlacklist = $v.communityBlacklist.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityState;
  }

  @override
  void update(void Function(CommunityStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityState build() => _build();

  _$CommunityState _build() {
    _$CommunityState _$result;
    try {
      _$result = _$v ??
          new _$CommunityState._(
              config: config.build(),
              configState: BuiltValueNullFieldError.checkNotNull(
                  configState, 'CommunityState', 'configState'),
              communityTeamList: communityTeamList.build(),
              communityMemberList: communityMemberList.build(),
              communityBlacklist: communityBlacklist.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        config.build();

        _$failedField = 'communityTeamList';
        communityTeamList.build();
        _$failedField = 'communityMemberList';
        communityMemberList.build();
        _$failedField = 'communityBlacklist';
        communityBlacklist.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
