part of trade_domain_module;

abstract class TradeInfo24h
    implements Built<TradeInfo24h, TradeInfo24hBuilder> {
  // Constructors

  factory TradeInfo24h([Function(TradeInfo24hBuilder) b]) = _$TradeInfo24h;
  TradeInfo24h._();

  // Serializers
  static TradeInfo24h? fromJson(Map<String, dynamic> json) {
    return deserialize<TradeInfo24h>(json);
  }

  static Serializer<TradeInfo24h> get serializer => _$tradeInfo24hSerializer;

  //@nullable
  String get high;

  //@nullable
  String get low;

  //@nullable
  String get vol;

  String get displayHigh => high == null || high.isEmpty ? '-' : high;

  String get displayLow => low == null || low.isEmpty ? '-' : low;

  String get displayVol => vol == null || vol.isEmpty
      ? '-'
      : StringUtils.displaySize(NumberUtil.getDouble(vol), 0);
}
