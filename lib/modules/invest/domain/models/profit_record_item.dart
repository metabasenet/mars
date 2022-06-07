part of invest_domain_module;

abstract class ProfitRecordItem
    implements Built<ProfitRecordItem, ProfitRecordItemBuilder> {
// Constructors
  factory ProfitRecordItem([Function(ProfitRecordItemBuilder) updates]) =
      _$ProfitRecordItem;
  ProfitRecordItem._();

  static Serializer<ProfitRecordItem> get serializer =>
      _$profitRecordItemSerializer;

  // Fields
  @BuiltValueField(wireName: 'height')
  int get height;

  @BuiltValueField(wireName: 'balance')
  String get balance;

  ///
  @BuiltValueField(wireName: 'stake_reward')
  String get stakeReward;

  ///
  @BuiltValueField(wireName: 'promotion_reward')
  String get promotionReward;

  String get totalReward =>
      NumberUtil.plus<String>(stakeReward, promotionReward) ?? '';
}
