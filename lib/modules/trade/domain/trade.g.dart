// GENERATED CODE - DO NOT MODIFY BY HAND

part of trade_domain_module;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TradeConfig> _$tradeConfigSerializer = new _$TradeConfigSerializer();
Serializer<TradeConfigCoin> _$tradeConfigCoinSerializer =
    new _$TradeConfigCoinSerializer();
Serializer<TradeConfigPair> _$tradeConfigPairSerializer =
    new _$TradeConfigPairSerializer();
Serializer<TradeConfigPairItem> _$tradeConfigPairItemSerializer =
    new _$TradeConfigPairItemSerializer();
Serializer<TradeConfigPairItemInfo> _$tradeConfigPairItemInfoSerializer =
    new _$TradeConfigPairItemInfoSerializer();
Serializer<TradeMarket> _$tradeMarketSerializer = new _$TradeMarketSerializer();
Serializer<TradeDeal> _$tradeDealSerializer = new _$TradeDealSerializer();
Serializer<TradeOrderDetail> _$tradeOrderDetailSerializer =
    new _$TradeOrderDetailSerializer();
Serializer<TradeOrderDetailItem> _$tradeOrderDetailItemSerializer =
    new _$TradeOrderDetailItemSerializer();
Serializer<TradePair> _$tradePairSerializer = new _$TradePairSerializer();
Serializer<TradeInfo24h> _$tradeInfo24hSerializer =
    new _$TradeInfo24hSerializer();
Serializer<TradeTicker> _$tradeTickerSerializer = new _$TradeTickerSerializer();
Serializer<TradeState> _$tradeStateSerializer = new _$TradeStateSerializer();

class _$TradeConfigSerializer implements StructuredSerializer<TradeConfig> {
  @override
  final Iterable<Type> types = const [TradeConfig, _$TradeConfig];
  @override
  final String wireName = 'TradeConfig';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradeConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'currency',
      serializers.serialize(object.coins,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TradeConfigCoin)])),
      'coin_pair',
      serializers.serialize(object.tradePairs,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(TradeConfigPair)])),
      'mqtt',
      serializers.serialize(object.mqttHosts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  TradeConfig deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'currency':
          result.coins.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TradeConfigCoin)]))!
              as BuiltList<Object?>);
          break;
        case 'coin_pair':
          result.tradePairs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(TradeConfigPair)
              ]))!);
          break;
        case 'mqtt':
          result.mqttHosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$TradeConfigCoinSerializer
    implements StructuredSerializer<TradeConfigCoin> {
  @override
  final Iterable<Type> types = const [TradeConfigCoin, _$TradeConfigCoin];
  @override
  final String wireName = 'TradeConfigCoin';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradeConfigCoin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'chain',
      serializers.serialize(object.chain,
          specifiedType: const FullType(String)),
      'currency',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
      'deal_address',
      serializers.serialize(object.dealAddress,
          specifiedType: const FullType(String)),
      'match_address',
      serializers.serialize(object.matchAddress,
          specifiedType: const FullType(String)),
      'default_fee',
      serializers.serialize(object.matchFee,
          specifiedType: const FullType(int)),
      'deal_precision',
      serializers.serialize(object.dealPrecision,
          specifiedType: const FullType(int)),
      'min_fee',
      serializers.serialize(object.networkFee,
          specifiedType: const FullType(double)),
      'min_height',
      serializers.serialize(object.minBlockHeight,
          specifiedType: const FullType(int)),
      'max_height',
      serializers.serialize(object.maxBlockHeight,
          specifiedType: const FullType(int)),
      'min_amount',
      serializers.serialize(object.minAmount,
          specifiedType: const FullType(double)),
      'max_amount',
      serializers.serialize(object.maxAmount,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  TradeConfigCoin deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeConfigCoinBuilder();

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
        case 'deal_address':
          result.dealAddress = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'match_address':
          result.matchAddress = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'default_fee':
          result.matchFee = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'deal_precision':
          result.dealPrecision = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'min_fee':
          result.networkFee = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'min_height':
          result.minBlockHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'max_height':
          result.maxBlockHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'min_amount':
          result.minAmount = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'max_amount':
          result.maxAmount = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$TradeConfigPairSerializer
    implements StructuredSerializer<TradeConfigPair> {
  @override
  final Iterable<Type> types = const [TradeConfigPair, _$TradeConfigPair];
  @override
  final String wireName = 'TradeConfigPair';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradeConfigPair object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.localizedName,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
      'list',
      serializers.serialize(object.pairs,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TradeConfigPairItem)])),
    ];

    return result;
  }

  @override
  TradeConfigPair deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeConfigPairBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.localizedName.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'list':
          result.pairs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TradeConfigPairItem)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$TradeConfigPairItemSerializer
    implements StructuredSerializer<TradeConfigPairItem> {
  @override
  final Iterable<Type> types = const [
    TradeConfigPairItem,
    _$TradeConfigPairItem
  ];
  @override
  final String wireName = 'TradeConfigPairItem';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TradeConfigPairItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'speed',
      serializers.serialize(object.speed,
          specifiedType: const FullType(String)),
      'deep_span',
      serializers.serialize(object.spans,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'buy',
      serializers.serialize(object.price,
          specifiedType: const FullType(TradeConfigPairItemInfo)),
      'sell',
      serializers.serialize(object.trade,
          specifiedType: const FullType(TradeConfigPairItemInfo)),
    ];

    return result;
  }

  @override
  TradeConfigPairItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeConfigPairItemBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deep_span':
          result.spans.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'buy':
          result.price.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TradeConfigPairItemInfo))!
              as TradeConfigPairItemInfo);
          break;
        case 'sell':
          result.trade.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TradeConfigPairItemInfo))!
              as TradeConfigPairItemInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$TradeConfigPairItemInfoSerializer
    implements StructuredSerializer<TradeConfigPairItemInfo> {
  @override
  final Iterable<Type> types = const [
    TradeConfigPairItemInfo,
    _$TradeConfigPairItemInfo
  ];
  @override
  final String wireName = 'TradeConfigPairItemInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TradeConfigPairItemInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'chain',
      serializers.serialize(object.chain,
          specifiedType: const FullType(String)),
      'symbol',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TradeConfigPairItemInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeConfigPairItemInfoBuilder();

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
        case 'symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TradeMarketSerializer implements StructuredSerializer<TradeMarket> {
  @override
  final Iterable<Type> types = const [TradeMarket, _$TradeMarket];
  @override
  final String wireName = 'TradeMarket';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradeMarket object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'names',
      serializers.serialize(object.names,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
    ];

    return result;
  }

  @override
  TradeMarket deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeMarketBuilder();

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
        case 'names':
          result.names.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$TradeDealSerializer implements StructuredSerializer<TradeDeal> {
  @override
  final Iterable<Type> types = const [TradeDeal, _$TradeDeal];
  @override
  final String wireName = 'TradeDeal';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradeDeal object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tradeSideId',
      serializers.serialize(object.tradeSideId,
          specifiedType: const FullType(int)),
      'tradePairId',
      serializers.serialize(object.tradePairId,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  TradeDeal deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeDealBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tradeSideId':
          result.tradeSideId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tradePairId':
          result.tradePairId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TradeOrderDetailSerializer
    implements StructuredSerializer<TradeOrderDetail> {
  @override
  final Iterable<Type> types = const [TradeOrderDetail, _$TradeOrderDetail];
  @override
  final String wireName = 'TradeOrderDetail';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradeOrderDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'min_amount',
      serializers.serialize(object.total,
          specifiedType: const FullType(String)),
      'match_list',
      serializers.serialize(object.matchList,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TradeOrderDetailItem)])),
      'exchange_list',
      serializers.serialize(object.exchangeList,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TradeOrderDetailItem)])),
    ];

    return result;
  }

  @override
  TradeOrderDetail deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeOrderDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'min_amount':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'match_list':
          result.matchList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TradeOrderDetailItem)]))!
              as BuiltList<Object?>);
          break;
        case 'exchange_list':
          result.exchangeList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TradeOrderDetailItem)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$TradeOrderDetailItemSerializer
    implements StructuredSerializer<TradeOrderDetailItem> {
  @override
  final Iterable<Type> types = const [
    TradeOrderDetailItem,
    _$TradeOrderDetailItem
  ];
  @override
  final String wireName = 'TradeOrderDetailItem';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TradeOrderDetailItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'match_price',
      serializers.serialize(object.matchPrice,
          specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'fee',
      serializers.serialize(object.fee, specifiedType: const FullType(String)),
      'tx_id',
      serializers.serialize(object.txId, specifiedType: const FullType(String)),
      'template_match_address',
      serializers.serialize(object.matchId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TradeOrderDetailItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeOrderDetailItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'match_price':
          result.matchPrice = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'fee':
          result.fee = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tx_id':
          result.txId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'template_match_address':
          result.matchId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TradePairSerializer implements StructuredSerializer<TradePair> {
  @override
  final Iterable<Type> types = const [TradePair, _$TradePair];
  @override
  final String wireName = 'TradePair';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradePair object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'speed',
      serializers.serialize(object.speed,
          specifiedType: const FullType(String)),
      'deep_span',
      serializers.serialize(object.spans,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'status',
      serializers.serialize(object.apiStatus,
          specifiedType: const FullType(String)),
      'marketId',
      serializers.serialize(object.marketId,
          specifiedType: const FullType(String)),
      'tradeName',
      serializers.serialize(object.tradeName,
          specifiedType: const FullType(String)),
      'tradeChain',
      serializers.serialize(object.tradeChain,
          specifiedType: const FullType(String)),
      'tradeSymbol',
      serializers.serialize(object.tradeSymbol,
          specifiedType: const FullType(String)),
      'priceName',
      serializers.serialize(object.priceName,
          specifiedType: const FullType(String)),
      'priceChain',
      serializers.serialize(object.priceChain,
          specifiedType: const FullType(String)),
      'priceSymbol',
      serializers.serialize(object.priceSymbol,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TradePair deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradePairBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deep_span':
          result.spans.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'status':
          result.apiStatus = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'marketId':
          result.marketId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tradeName':
          result.tradeName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tradeChain':
          result.tradeChain = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tradeSymbol':
          result.tradeSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'priceName':
          result.priceName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'priceChain':
          result.priceChain = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'priceSymbol':
          result.priceSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TradeInfo24hSerializer implements StructuredSerializer<TradeInfo24h> {
  @override
  final Iterable<Type> types = const [TradeInfo24h, _$TradeInfo24h];
  @override
  final String wireName = 'TradeInfo24h';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradeInfo24h object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'high',
      serializers.serialize(object.high, specifiedType: const FullType(String)),
      'low',
      serializers.serialize(object.low, specifiedType: const FullType(String)),
      'vol',
      serializers.serialize(object.vol, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TradeInfo24h deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeInfo24hBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'high':
          result.high = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'low':
          result.low = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'vol':
          result.vol = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TradeTickerSerializer implements StructuredSerializer<TradeTicker> {
  @override
  final Iterable<Type> types = const [TradeTicker, _$TradeTicker];
  @override
  final String wireName = 'TradeTicker';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradeTicker object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tradeSideId',
      serializers.serialize(object.tradeSideId,
          specifiedType: const FullType(int)),
      'tradePairId',
      serializers.serialize(object.tradePairId,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  TradeTicker deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeTickerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tradeSideId':
          result.tradeSideId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tradePairId':
          result.tradePairId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$TradeStateSerializer implements StructuredSerializer<TradeState> {
  @override
  final Iterable<Type> types = const [TradeState, _$TradeState];
  @override
  final String wireName = 'TradeState';

  @override
  Iterable<Object?> serialize(Serializers serializers, TradeState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'config',
      serializers.serialize(object.config,
          specifiedType: const FullType(TradeConfig)),
      'configState',
      serializers.serialize(object.configState,
          specifiedType: const FullType(int)),
      'tradePair',
      serializers.serialize(object.tradePair,
          specifiedType: const FullType(TradePair)),
      'tradeSide',
      serializers.serialize(object.tradeSide,
          specifiedType: const FullType(TradeSide)),
      'hideSlowTradePairTip',
      serializers.serialize(object.hideSlowTradePairTip,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'currentOrderDetail',
      serializers.serialize(object.currentOrderDetail,
          specifiedType: const FullType(TradeOrderDetail)),
    ];

    return result;
  }

  @override
  TradeState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TradeStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'config':
          result.config.replace(serializers.deserialize(value,
              specifiedType: const FullType(TradeConfig))! as TradeConfig);
          break;
        case 'configState':
          result.configState = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tradePair':
          result.tradePair.replace(serializers.deserialize(value,
              specifiedType: const FullType(TradePair))! as TradePair);
          break;
        case 'tradeSide':
          result.tradeSide = serializers.deserialize(value,
              specifiedType: const FullType(TradeSide))! as TradeSide;
          break;
        case 'hideSlowTradePairTip':
          result.hideSlowTradePairTip.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'currentOrderDetail':
          result.currentOrderDetail.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TradeOrderDetail))!
              as TradeOrderDetail);
          break;
      }
    }

    return result.build();
  }
}

class _$TradeOrderDetailVM extends TradeOrderDetailVM {
  @override
  final TradeOrderDetail currentOrderDetail;
  @override
  final Future<TradeOrderDetail> Function(String txId) getOrderDetail;
  @override
  final Future<double> Function(TradeOrder order) getOrderBalance;
  @override
  final Future<TradeOrder> Function(TradeOrder order) doOrderCheckStatus;

  factory _$TradeOrderDetailVM(
          [void Function(TradeOrderDetailVMBuilder)? updates]) =>
      (new TradeOrderDetailVMBuilder()..update(updates))._build();

  _$TradeOrderDetailVM._(
      {required this.currentOrderDetail,
      required this.getOrderDetail,
      required this.getOrderBalance,
      required this.doOrderCheckStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currentOrderDetail, 'TradeOrderDetailVM', 'currentOrderDetail');
    BuiltValueNullFieldError.checkNotNull(
        getOrderDetail, 'TradeOrderDetailVM', 'getOrderDetail');
    BuiltValueNullFieldError.checkNotNull(
        getOrderBalance, 'TradeOrderDetailVM', 'getOrderBalance');
    BuiltValueNullFieldError.checkNotNull(
        doOrderCheckStatus, 'TradeOrderDetailVM', 'doOrderCheckStatus');
  }

  @override
  TradeOrderDetailVM rebuild(
          void Function(TradeOrderDetailVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeOrderDetailVMBuilder toBuilder() =>
      new TradeOrderDetailVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeOrderDetailVM &&
        currentOrderDetail == other.currentOrderDetail;
  }

  @override
  int get hashCode {
    return $jf($jc(0, currentOrderDetail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeOrderDetailVM')
          ..add('currentOrderDetail', currentOrderDetail)
          ..add('getOrderDetail', getOrderDetail)
          ..add('getOrderBalance', getOrderBalance)
          ..add('doOrderCheckStatus', doOrderCheckStatus))
        .toString();
  }
}

class TradeOrderDetailVMBuilder
    implements Builder<TradeOrderDetailVM, TradeOrderDetailVMBuilder> {
  _$TradeOrderDetailVM? _$v;

  TradeOrderDetailBuilder? _currentOrderDetail;
  TradeOrderDetailBuilder get currentOrderDetail =>
      _$this._currentOrderDetail ??= new TradeOrderDetailBuilder();
  set currentOrderDetail(TradeOrderDetailBuilder? currentOrderDetail) =>
      _$this._currentOrderDetail = currentOrderDetail;

  Future<TradeOrderDetail> Function(String txId)? _getOrderDetail;
  Future<TradeOrderDetail> Function(String txId)? get getOrderDetail =>
      _$this._getOrderDetail;
  set getOrderDetail(
          Future<TradeOrderDetail> Function(String txId)? getOrderDetail) =>
      _$this._getOrderDetail = getOrderDetail;

  Future<double> Function(TradeOrder order)? _getOrderBalance;
  Future<double> Function(TradeOrder order)? get getOrderBalance =>
      _$this._getOrderBalance;
  set getOrderBalance(
          Future<double> Function(TradeOrder order)? getOrderBalance) =>
      _$this._getOrderBalance = getOrderBalance;

  Future<TradeOrder> Function(TradeOrder order)? _doOrderCheckStatus;
  Future<TradeOrder> Function(TradeOrder order)? get doOrderCheckStatus =>
      _$this._doOrderCheckStatus;
  set doOrderCheckStatus(
          Future<TradeOrder> Function(TradeOrder order)? doOrderCheckStatus) =>
      _$this._doOrderCheckStatus = doOrderCheckStatus;

  TradeOrderDetailVMBuilder();

  TradeOrderDetailVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentOrderDetail = $v.currentOrderDetail.toBuilder();
      _getOrderDetail = $v.getOrderDetail;
      _getOrderBalance = $v.getOrderBalance;
      _doOrderCheckStatus = $v.doOrderCheckStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeOrderDetailVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeOrderDetailVM;
  }

  @override
  void update(void Function(TradeOrderDetailVMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeOrderDetailVM build() => _build();

  _$TradeOrderDetailVM _build() {
    _$TradeOrderDetailVM _$result;
    try {
      _$result = _$v ??
          new _$TradeOrderDetailVM._(
              currentOrderDetail: currentOrderDetail.build(),
              getOrderDetail: BuiltValueNullFieldError.checkNotNull(
                  getOrderDetail, 'TradeOrderDetailVM', 'getOrderDetail'),
              getOrderBalance: BuiltValueNullFieldError.checkNotNull(
                  getOrderBalance, 'TradeOrderDetailVM', 'getOrderBalance'),
              doOrderCheckStatus: BuiltValueNullFieldError.checkNotNull(
                  doOrderCheckStatus,
                  'TradeOrderDetailVM',
                  'doOrderCheckStatus'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentOrderDetail';
        currentOrderDetail.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TradeOrderDetailVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TradeOrderListVM extends TradeOrderListVM {
  @override
  final String walletId;
  @override
  final AssetCoin Function({@required String chain, @required String symbol})
      getCoinInfo;

  factory _$TradeOrderListVM(
          [void Function(TradeOrderListVMBuilder)? updates]) =>
      (new TradeOrderListVMBuilder()..update(updates))._build();

  _$TradeOrderListVM._({required this.walletId, required this.getCoinInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        walletId, 'TradeOrderListVM', 'walletId');
    BuiltValueNullFieldError.checkNotNull(
        getCoinInfo, 'TradeOrderListVM', 'getCoinInfo');
  }

  @override
  TradeOrderListVM rebuild(void Function(TradeOrderListVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeOrderListVMBuilder toBuilder() =>
      new TradeOrderListVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeOrderListVM && walletId == other.walletId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, walletId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeOrderListVM')
          ..add('walletId', walletId)
          ..add('getCoinInfo', getCoinInfo))
        .toString();
  }
}

class TradeOrderListVMBuilder
    implements Builder<TradeOrderListVM, TradeOrderListVMBuilder> {
  _$TradeOrderListVM? _$v;

  String? _walletId;
  String? get walletId => _$this._walletId;
  set walletId(String? walletId) => _$this._walletId = walletId;

  AssetCoin Function({@required String chain, @required String symbol})?
      _getCoinInfo;
  AssetCoin Function({@required String chain, @required String symbol})?
      get getCoinInfo => _$this._getCoinInfo;
  set getCoinInfo(
          AssetCoin Function({@required String chain, @required String symbol})?
              getCoinInfo) =>
      _$this._getCoinInfo = getCoinInfo;

  TradeOrderListVMBuilder();

  TradeOrderListVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _walletId = $v.walletId;
      _getCoinInfo = $v.getCoinInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeOrderListVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeOrderListVM;
  }

  @override
  void update(void Function(TradeOrderListVMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeOrderListVM build() => _build();

  _$TradeOrderListVM _build() {
    final _$result = _$v ??
        new _$TradeOrderListVM._(
            walletId: BuiltValueNullFieldError.checkNotNull(
                walletId, 'TradeOrderListVM', 'walletId'),
            getCoinInfo: BuiltValueNullFieldError.checkNotNull(
                getCoinInfo, 'TradeOrderListVM', 'getCoinInfo'));
    replace(_$result);
    return _$result;
  }
}

class _$TradeHomeVM extends TradeHomeVM {
  @override
  final bool hasWallet;
  @override
  final String ethAddress;
  @override
  final TradePair tradePair;
  @override
  final TradeSide tradeSide;
  @override
  final String fiatCurrency;
  @override
  final String activeWalletId;
  @override
  final AssetCoin priceCoinInfo;
  @override
  final AssetCoin tradeCoinInfo;
  @override
  final AssetCoin sideCoinInfo;
  @override
  final TradeConfigCoin sideCoinConfig;
  @override
  final BuiltList<TradePair> allTradePairs;
  @override
  final Future<void> Function(TradePair tradePair) doUpdateCoinBalance;
  @override
  final Future<double> Function(TradePair) getApproveBalance;
  @override
  final Future<void> Function(TradeSide tradeSide) doChangeTradeSide;
  @override
  final Future<void> Function(TradePair tradePair) doChangeTradePair;
  @override
  final Future<void> Function(TradePair tradePair) doSubscribeMqtt;
  @override
  final AssetCoin Function({@required String chain, @required String symbol})
      getCoinInfo;
  @override
  final Future<WalletPrivateData> Function(String password) doUnlockWallet;
  @override
  final Future<void> Function(
      {@required
          TradeSide tradeSide,
      @required
          TradePair tradePair,
      @required
          Future<bool> Function(
                  {@required WalletTemplateData approveData,
                  @required double currentBalance,
                  @required double approveAmount,
                  @required bool needReset})
              onConfirmSubmit,
      @required
          Future<WalletPrivateData> Function() onUnlockWallet,
      @required
          void Function(String) onSuccessTransaction}) doApproveOrder;
  @override
  final Future<void> Function(
      {@required TradeSide tradeSide,
      @required TradePair tradePair,
      @required String price,
      @required String amount,
      @required String total,
      @required Future<bool> Function(DexCreateOrderParams) onConfirmSubmit,
      @required Future<WalletPrivateData> Function() onUnlockWallet,
      @required void Function(String) onSuccessTransaction}) doCreateOrder;
  @override
  final Future<void> Function(
      {@required TradeOrder order,
      @required Future<bool> Function(double) onConfirmCancel,
      @required Future<WalletPrivateData> Function() onUnlockWallet,
      @required void Function(String) onSuccessTransaction}) doCancelOrder;
  @override
  final Future<Transaction> Function(
      {@required String chain,
      @required String symbol,
      @required String fromAddress,
      @required int chainPrecision,
      @required String txId}) getTransactionInfo;
  @override
  final Future<void> Function(
      {@required WithdrawSubmitParams param,
      @required String txId}) transferResult;
  @override
  final bool Function(TradePair) needShowSlowTradePair;
  @override
  final void Function(TradePair) doHideSlowTradePair;
  @override
  final Future<double> Function(TradeOrder order) getOrderBalance;

  factory _$TradeHomeVM([void Function(TradeHomeVMBuilder)? updates]) =>
      (new TradeHomeVMBuilder()..update(updates))._build();

  _$TradeHomeVM._(
      {required this.hasWallet,
      required this.ethAddress,
      required this.tradePair,
      required this.tradeSide,
      required this.fiatCurrency,
      required this.activeWalletId,
      required this.priceCoinInfo,
      required this.tradeCoinInfo,
      required this.sideCoinInfo,
      required this.sideCoinConfig,
      required this.allTradePairs,
      required this.doUpdateCoinBalance,
      required this.getApproveBalance,
      required this.doChangeTradeSide,
      required this.doChangeTradePair,
      required this.doSubscribeMqtt,
      required this.getCoinInfo,
      required this.doUnlockWallet,
      required this.doApproveOrder,
      required this.doCreateOrder,
      required this.doCancelOrder,
      required this.getTransactionInfo,
      required this.transferResult,
      required this.needShowSlowTradePair,
      required this.doHideSlowTradePair,
      required this.getOrderBalance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hasWallet, 'TradeHomeVM', 'hasWallet');
    BuiltValueNullFieldError.checkNotNull(
        ethAddress, 'TradeHomeVM', 'ethAddress');
    BuiltValueNullFieldError.checkNotNull(
        tradePair, 'TradeHomeVM', 'tradePair');
    BuiltValueNullFieldError.checkNotNull(
        tradeSide, 'TradeHomeVM', 'tradeSide');
    BuiltValueNullFieldError.checkNotNull(
        fiatCurrency, 'TradeHomeVM', 'fiatCurrency');
    BuiltValueNullFieldError.checkNotNull(
        activeWalletId, 'TradeHomeVM', 'activeWalletId');
    BuiltValueNullFieldError.checkNotNull(
        priceCoinInfo, 'TradeHomeVM', 'priceCoinInfo');
    BuiltValueNullFieldError.checkNotNull(
        tradeCoinInfo, 'TradeHomeVM', 'tradeCoinInfo');
    BuiltValueNullFieldError.checkNotNull(
        sideCoinInfo, 'TradeHomeVM', 'sideCoinInfo');
    BuiltValueNullFieldError.checkNotNull(
        sideCoinConfig, 'TradeHomeVM', 'sideCoinConfig');
    BuiltValueNullFieldError.checkNotNull(
        allTradePairs, 'TradeHomeVM', 'allTradePairs');
    BuiltValueNullFieldError.checkNotNull(
        doUpdateCoinBalance, 'TradeHomeVM', 'doUpdateCoinBalance');
    BuiltValueNullFieldError.checkNotNull(
        getApproveBalance, 'TradeHomeVM', 'getApproveBalance');
    BuiltValueNullFieldError.checkNotNull(
        doChangeTradeSide, 'TradeHomeVM', 'doChangeTradeSide');
    BuiltValueNullFieldError.checkNotNull(
        doChangeTradePair, 'TradeHomeVM', 'doChangeTradePair');
    BuiltValueNullFieldError.checkNotNull(
        doSubscribeMqtt, 'TradeHomeVM', 'doSubscribeMqtt');
    BuiltValueNullFieldError.checkNotNull(
        getCoinInfo, 'TradeHomeVM', 'getCoinInfo');
    BuiltValueNullFieldError.checkNotNull(
        doUnlockWallet, 'TradeHomeVM', 'doUnlockWallet');
    BuiltValueNullFieldError.checkNotNull(
        doApproveOrder, 'TradeHomeVM', 'doApproveOrder');
    BuiltValueNullFieldError.checkNotNull(
        doCreateOrder, 'TradeHomeVM', 'doCreateOrder');
    BuiltValueNullFieldError.checkNotNull(
        doCancelOrder, 'TradeHomeVM', 'doCancelOrder');
    BuiltValueNullFieldError.checkNotNull(
        getTransactionInfo, 'TradeHomeVM', 'getTransactionInfo');
    BuiltValueNullFieldError.checkNotNull(
        transferResult, 'TradeHomeVM', 'transferResult');
    BuiltValueNullFieldError.checkNotNull(
        needShowSlowTradePair, 'TradeHomeVM', 'needShowSlowTradePair');
    BuiltValueNullFieldError.checkNotNull(
        doHideSlowTradePair, 'TradeHomeVM', 'doHideSlowTradePair');
    BuiltValueNullFieldError.checkNotNull(
        getOrderBalance, 'TradeHomeVM', 'getOrderBalance');
  }

  @override
  TradeHomeVM rebuild(void Function(TradeHomeVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeHomeVMBuilder toBuilder() => new TradeHomeVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeHomeVM &&
        hasWallet == other.hasWallet &&
        ethAddress == other.ethAddress &&
        tradePair == other.tradePair &&
        tradeSide == other.tradeSide &&
        fiatCurrency == other.fiatCurrency &&
        activeWalletId == other.activeWalletId &&
        priceCoinInfo == other.priceCoinInfo &&
        tradeCoinInfo == other.tradeCoinInfo &&
        sideCoinInfo == other.sideCoinInfo &&
        sideCoinConfig == other.sideCoinConfig &&
        allTradePairs == other.allTradePairs;
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
                                        $jc($jc(0, hasWallet.hashCode),
                                            ethAddress.hashCode),
                                        tradePair.hashCode),
                                    tradeSide.hashCode),
                                fiatCurrency.hashCode),
                            activeWalletId.hashCode),
                        priceCoinInfo.hashCode),
                    tradeCoinInfo.hashCode),
                sideCoinInfo.hashCode),
            sideCoinConfig.hashCode),
        allTradePairs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeHomeVM')
          ..add('hasWallet', hasWallet)
          ..add('ethAddress', ethAddress)
          ..add('tradePair', tradePair)
          ..add('tradeSide', tradeSide)
          ..add('fiatCurrency', fiatCurrency)
          ..add('activeWalletId', activeWalletId)
          ..add('priceCoinInfo', priceCoinInfo)
          ..add('tradeCoinInfo', tradeCoinInfo)
          ..add('sideCoinInfo', sideCoinInfo)
          ..add('sideCoinConfig', sideCoinConfig)
          ..add('allTradePairs', allTradePairs)
          ..add('doUpdateCoinBalance', doUpdateCoinBalance)
          ..add('getApproveBalance', getApproveBalance)
          ..add('doChangeTradeSide', doChangeTradeSide)
          ..add('doChangeTradePair', doChangeTradePair)
          ..add('doSubscribeMqtt', doSubscribeMqtt)
          ..add('getCoinInfo', getCoinInfo)
          ..add('doUnlockWallet', doUnlockWallet)
          ..add('doApproveOrder', doApproveOrder)
          ..add('doCreateOrder', doCreateOrder)
          ..add('doCancelOrder', doCancelOrder)
          ..add('getTransactionInfo', getTransactionInfo)
          ..add('transferResult', transferResult)
          ..add('needShowSlowTradePair', needShowSlowTradePair)
          ..add('doHideSlowTradePair', doHideSlowTradePair)
          ..add('getOrderBalance', getOrderBalance))
        .toString();
  }
}

class TradeHomeVMBuilder implements Builder<TradeHomeVM, TradeHomeVMBuilder> {
  _$TradeHomeVM? _$v;

  bool? _hasWallet;
  bool? get hasWallet => _$this._hasWallet;
  set hasWallet(bool? hasWallet) => _$this._hasWallet = hasWallet;

  String? _ethAddress;
  String? get ethAddress => _$this._ethAddress;
  set ethAddress(String? ethAddress) => _$this._ethAddress = ethAddress;

  TradePairBuilder? _tradePair;
  TradePairBuilder get tradePair =>
      _$this._tradePair ??= new TradePairBuilder();
  set tradePair(TradePairBuilder? tradePair) => _$this._tradePair = tradePair;

  TradeSide? _tradeSide;
  TradeSide? get tradeSide => _$this._tradeSide;
  set tradeSide(TradeSide? tradeSide) => _$this._tradeSide = tradeSide;

  String? _fiatCurrency;
  String? get fiatCurrency => _$this._fiatCurrency;
  set fiatCurrency(String? fiatCurrency) => _$this._fiatCurrency = fiatCurrency;

  String? _activeWalletId;
  String? get activeWalletId => _$this._activeWalletId;
  set activeWalletId(String? activeWalletId) =>
      _$this._activeWalletId = activeWalletId;

  AssetCoinBuilder? _priceCoinInfo;
  AssetCoinBuilder get priceCoinInfo =>
      _$this._priceCoinInfo ??= new AssetCoinBuilder();
  set priceCoinInfo(AssetCoinBuilder? priceCoinInfo) =>
      _$this._priceCoinInfo = priceCoinInfo;

  AssetCoinBuilder? _tradeCoinInfo;
  AssetCoinBuilder get tradeCoinInfo =>
      _$this._tradeCoinInfo ??= new AssetCoinBuilder();
  set tradeCoinInfo(AssetCoinBuilder? tradeCoinInfo) =>
      _$this._tradeCoinInfo = tradeCoinInfo;

  AssetCoinBuilder? _sideCoinInfo;
  AssetCoinBuilder get sideCoinInfo =>
      _$this._sideCoinInfo ??= new AssetCoinBuilder();
  set sideCoinInfo(AssetCoinBuilder? sideCoinInfo) =>
      _$this._sideCoinInfo = sideCoinInfo;

  TradeConfigCoinBuilder? _sideCoinConfig;
  TradeConfigCoinBuilder get sideCoinConfig =>
      _$this._sideCoinConfig ??= new TradeConfigCoinBuilder();
  set sideCoinConfig(TradeConfigCoinBuilder? sideCoinConfig) =>
      _$this._sideCoinConfig = sideCoinConfig;

  ListBuilder<TradePair>? _allTradePairs;
  ListBuilder<TradePair> get allTradePairs =>
      _$this._allTradePairs ??= new ListBuilder<TradePair>();
  set allTradePairs(ListBuilder<TradePair>? allTradePairs) =>
      _$this._allTradePairs = allTradePairs;

  Future<void> Function(TradePair tradePair)? _doUpdateCoinBalance;
  Future<void> Function(TradePair tradePair)? get doUpdateCoinBalance =>
      _$this._doUpdateCoinBalance;
  set doUpdateCoinBalance(
          Future<void> Function(TradePair tradePair)? doUpdateCoinBalance) =>
      _$this._doUpdateCoinBalance = doUpdateCoinBalance;

  Future<double> Function(TradePair)? _getApproveBalance;
  Future<double> Function(TradePair)? get getApproveBalance =>
      _$this._getApproveBalance;
  set getApproveBalance(
          Future<double> Function(TradePair)? getApproveBalance) =>
      _$this._getApproveBalance = getApproveBalance;

  Future<void> Function(TradeSide tradeSide)? _doChangeTradeSide;
  Future<void> Function(TradeSide tradeSide)? get doChangeTradeSide =>
      _$this._doChangeTradeSide;
  set doChangeTradeSide(
          Future<void> Function(TradeSide tradeSide)? doChangeTradeSide) =>
      _$this._doChangeTradeSide = doChangeTradeSide;

  Future<void> Function(TradePair tradePair)? _doChangeTradePair;
  Future<void> Function(TradePair tradePair)? get doChangeTradePair =>
      _$this._doChangeTradePair;
  set doChangeTradePair(
          Future<void> Function(TradePair tradePair)? doChangeTradePair) =>
      _$this._doChangeTradePair = doChangeTradePair;

  Future<void> Function(TradePair tradePair)? _doSubscribeMqtt;
  Future<void> Function(TradePair tradePair)? get doSubscribeMqtt =>
      _$this._doSubscribeMqtt;
  set doSubscribeMqtt(
          Future<void> Function(TradePair tradePair)? doSubscribeMqtt) =>
      _$this._doSubscribeMqtt = doSubscribeMqtt;

  AssetCoin Function({@required String chain, @required String symbol})?
      _getCoinInfo;
  AssetCoin Function({@required String chain, @required String symbol})?
      get getCoinInfo => _$this._getCoinInfo;
  set getCoinInfo(
          AssetCoin Function({@required String chain, @required String symbol})?
              getCoinInfo) =>
      _$this._getCoinInfo = getCoinInfo;

  Future<WalletPrivateData> Function(String password)? _doUnlockWallet;
  Future<WalletPrivateData> Function(String password)? get doUnlockWallet =>
      _$this._doUnlockWallet;
  set doUnlockWallet(
          Future<WalletPrivateData> Function(String password)?
              doUnlockWallet) =>
      _$this._doUnlockWallet = doUnlockWallet;

  Future<void> Function(
      {@required
          TradeSide tradeSide,
      @required
          TradePair tradePair,
      @required
          Future<bool> Function(
                  {@required WalletTemplateData approveData,
                  @required double currentBalance,
                  @required double approveAmount,
                  @required bool needReset})
              onConfirmSubmit,
      @required
          Future<WalletPrivateData> Function() onUnlockWallet,
      @required
          void Function(String) onSuccessTransaction})? _doApproveOrder;
  Future<void> Function(
      {@required
          TradeSide tradeSide,
      @required
          TradePair tradePair,
      @required
          Future<bool> Function(
                  {@required WalletTemplateData approveData,
                  @required double currentBalance,
                  @required double approveAmount,
                  @required bool needReset})
              onConfirmSubmit,
      @required
          Future<WalletPrivateData> Function() onUnlockWallet,
      @required
          void Function(String) onSuccessTransaction})? get doApproveOrder =>
      _$this._doApproveOrder;
  set doApproveOrder(
          Future<void> Function(
                  {@required
                      TradeSide tradeSide,
                  @required
                      TradePair tradePair,
                  @required
                      Future<bool> Function(
                              {@required WalletTemplateData approveData,
                              @required double currentBalance,
                              @required double approveAmount,
                              @required bool needReset})
                          onConfirmSubmit,
                  @required
                      Future<WalletPrivateData> Function() onUnlockWallet,
                  @required
                      void Function(String) onSuccessTransaction})?
              doApproveOrder) =>
      _$this._doApproveOrder = doApproveOrder;

  Future<void> Function(
      {@required TradeSide tradeSide,
      @required TradePair tradePair,
      @required String price,
      @required String amount,
      @required String total,
      @required Future<bool> Function(DexCreateOrderParams) onConfirmSubmit,
      @required Future<WalletPrivateData> Function() onUnlockWallet,
      @required void Function(String) onSuccessTransaction})? _doCreateOrder;
  Future<void> Function(
          {@required TradeSide tradeSide,
          @required TradePair tradePair,
          @required String price,
          @required String amount,
          @required String total,
          @required Future<bool> Function(DexCreateOrderParams) onConfirmSubmit,
          @required Future<WalletPrivateData> Function() onUnlockWallet,
          @required void Function(String) onSuccessTransaction})?
      get doCreateOrder => _$this._doCreateOrder;
  set doCreateOrder(
          Future<void> Function(
                  {@required
                      TradeSide tradeSide,
                  @required
                      TradePair tradePair,
                  @required
                      String price,
                  @required
                      String amount,
                  @required
                      String total,
                  @required
                      Future<bool> Function(DexCreateOrderParams)
                          onConfirmSubmit,
                  @required
                      Future<WalletPrivateData> Function() onUnlockWallet,
                  @required
                      void Function(String) onSuccessTransaction})?
              doCreateOrder) =>
      _$this._doCreateOrder = doCreateOrder;

  Future<void> Function(
      {@required TradeOrder order,
      @required Future<bool> Function(double) onConfirmCancel,
      @required Future<WalletPrivateData> Function() onUnlockWallet,
      @required void Function(String) onSuccessTransaction})? _doCancelOrder;
  Future<void> Function(
          {@required TradeOrder order,
          @required Future<bool> Function(double) onConfirmCancel,
          @required Future<WalletPrivateData> Function() onUnlockWallet,
          @required void Function(String) onSuccessTransaction})?
      get doCancelOrder => _$this._doCancelOrder;
  set doCancelOrder(
          Future<void> Function(
                  {@required TradeOrder order,
                  @required Future<bool> Function(double) onConfirmCancel,
                  @required Future<WalletPrivateData> Function() onUnlockWallet,
                  @required void Function(String) onSuccessTransaction})?
              doCancelOrder) =>
      _$this._doCancelOrder = doCancelOrder;

  Future<Transaction> Function(
      {@required String chain,
      @required String symbol,
      @required String fromAddress,
      @required int chainPrecision,
      @required String txId})? _getTransactionInfo;
  Future<Transaction> Function(
          {@required String chain,
          @required String symbol,
          @required String fromAddress,
          @required int chainPrecision,
          @required String txId})?
      get getTransactionInfo => _$this._getTransactionInfo;
  set getTransactionInfo(
          Future<Transaction> Function(
                  {@required String chain,
                  @required String symbol,
                  @required String fromAddress,
                  @required int chainPrecision,
                  @required String txId})?
              getTransactionInfo) =>
      _$this._getTransactionInfo = getTransactionInfo;

  Future<void> Function(
      {@required WithdrawSubmitParams param,
      @required String txId})? _transferResult;
  Future<void> Function(
      {@required WithdrawSubmitParams param,
      @required String txId})? get transferResult => _$this._transferResult;
  set transferResult(
          Future<void> Function(
                  {@required WithdrawSubmitParams param,
                  @required String txId})?
              transferResult) =>
      _$this._transferResult = transferResult;

  bool Function(TradePair)? _needShowSlowTradePair;
  bool Function(TradePair)? get needShowSlowTradePair =>
      _$this._needShowSlowTradePair;
  set needShowSlowTradePair(bool Function(TradePair)? needShowSlowTradePair) =>
      _$this._needShowSlowTradePair = needShowSlowTradePair;

  void Function(TradePair)? _doHideSlowTradePair;
  void Function(TradePair)? get doHideSlowTradePair =>
      _$this._doHideSlowTradePair;
  set doHideSlowTradePair(void Function(TradePair)? doHideSlowTradePair) =>
      _$this._doHideSlowTradePair = doHideSlowTradePair;

  Future<double> Function(TradeOrder order)? _getOrderBalance;
  Future<double> Function(TradeOrder order)? get getOrderBalance =>
      _$this._getOrderBalance;
  set getOrderBalance(
          Future<double> Function(TradeOrder order)? getOrderBalance) =>
      _$this._getOrderBalance = getOrderBalance;

  TradeHomeVMBuilder();

  TradeHomeVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hasWallet = $v.hasWallet;
      _ethAddress = $v.ethAddress;
      _tradePair = $v.tradePair.toBuilder();
      _tradeSide = $v.tradeSide;
      _fiatCurrency = $v.fiatCurrency;
      _activeWalletId = $v.activeWalletId;
      _priceCoinInfo = $v.priceCoinInfo.toBuilder();
      _tradeCoinInfo = $v.tradeCoinInfo.toBuilder();
      _sideCoinInfo = $v.sideCoinInfo.toBuilder();
      _sideCoinConfig = $v.sideCoinConfig.toBuilder();
      _allTradePairs = $v.allTradePairs.toBuilder();
      _doUpdateCoinBalance = $v.doUpdateCoinBalance;
      _getApproveBalance = $v.getApproveBalance;
      _doChangeTradeSide = $v.doChangeTradeSide;
      _doChangeTradePair = $v.doChangeTradePair;
      _doSubscribeMqtt = $v.doSubscribeMqtt;
      _getCoinInfo = $v.getCoinInfo;
      _doUnlockWallet = $v.doUnlockWallet;
      _doApproveOrder = $v.doApproveOrder;
      _doCreateOrder = $v.doCreateOrder;
      _doCancelOrder = $v.doCancelOrder;
      _getTransactionInfo = $v.getTransactionInfo;
      _transferResult = $v.transferResult;
      _needShowSlowTradePair = $v.needShowSlowTradePair;
      _doHideSlowTradePair = $v.doHideSlowTradePair;
      _getOrderBalance = $v.getOrderBalance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeHomeVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeHomeVM;
  }

  @override
  void update(void Function(TradeHomeVMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeHomeVM build() => _build();

  _$TradeHomeVM _build() {
    _$TradeHomeVM _$result;
    try {
      _$result = _$v ??
          new _$TradeHomeVM._(
              hasWallet: BuiltValueNullFieldError.checkNotNull(
                  hasWallet, 'TradeHomeVM', 'hasWallet'),
              ethAddress: BuiltValueNullFieldError.checkNotNull(
                  ethAddress, 'TradeHomeVM', 'ethAddress'),
              tradePair: tradePair.build(),
              tradeSide: BuiltValueNullFieldError.checkNotNull(
                  tradeSide, 'TradeHomeVM', 'tradeSide'),
              fiatCurrency: BuiltValueNullFieldError.checkNotNull(
                  fiatCurrency, 'TradeHomeVM', 'fiatCurrency'),
              activeWalletId: BuiltValueNullFieldError.checkNotNull(
                  activeWalletId, 'TradeHomeVM', 'activeWalletId'),
              priceCoinInfo: priceCoinInfo.build(),
              tradeCoinInfo: tradeCoinInfo.build(),
              sideCoinInfo: sideCoinInfo.build(),
              sideCoinConfig: sideCoinConfig.build(),
              allTradePairs: allTradePairs.build(),
              doUpdateCoinBalance: BuiltValueNullFieldError.checkNotNull(
                  doUpdateCoinBalance, 'TradeHomeVM', 'doUpdateCoinBalance'),
              getApproveBalance: BuiltValueNullFieldError.checkNotNull(
                  getApproveBalance, 'TradeHomeVM', 'getApproveBalance'),
              doChangeTradeSide: BuiltValueNullFieldError.checkNotNull(
                  doChangeTradeSide, 'TradeHomeVM', 'doChangeTradeSide'),
              doChangeTradePair: BuiltValueNullFieldError.checkNotNull(doChangeTradePair, 'TradeHomeVM', 'doChangeTradePair'),
              doSubscribeMqtt: BuiltValueNullFieldError.checkNotNull(doSubscribeMqtt, 'TradeHomeVM', 'doSubscribeMqtt'),
              getCoinInfo: BuiltValueNullFieldError.checkNotNull(getCoinInfo, 'TradeHomeVM', 'getCoinInfo'),
              doUnlockWallet: BuiltValueNullFieldError.checkNotNull(doUnlockWallet, 'TradeHomeVM', 'doUnlockWallet'),
              doApproveOrder: BuiltValueNullFieldError.checkNotNull(doApproveOrder, 'TradeHomeVM', 'doApproveOrder'),
              doCreateOrder: BuiltValueNullFieldError.checkNotNull(doCreateOrder, 'TradeHomeVM', 'doCreateOrder'),
              doCancelOrder: BuiltValueNullFieldError.checkNotNull(doCancelOrder, 'TradeHomeVM', 'doCancelOrder'),
              getTransactionInfo: BuiltValueNullFieldError.checkNotNull(getTransactionInfo, 'TradeHomeVM', 'getTransactionInfo'),
              transferResult: BuiltValueNullFieldError.checkNotNull(transferResult, 'TradeHomeVM', 'transferResult'),
              needShowSlowTradePair: BuiltValueNullFieldError.checkNotNull(needShowSlowTradePair, 'TradeHomeVM', 'needShowSlowTradePair'),
              doHideSlowTradePair: BuiltValueNullFieldError.checkNotNull(doHideSlowTradePair, 'TradeHomeVM', 'doHideSlowTradePair'),
              getOrderBalance: BuiltValueNullFieldError.checkNotNull(getOrderBalance, 'TradeHomeVM', 'getOrderBalance'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tradePair';
        tradePair.build();

        _$failedField = 'priceCoinInfo';
        priceCoinInfo.build();
        _$failedField = 'tradeCoinInfo';
        tradeCoinInfo.build();
        _$failedField = 'sideCoinInfo';
        sideCoinInfo.build();
        _$failedField = 'sideCoinConfig';
        sideCoinConfig.build();
        _$failedField = 'allTradePairs';
        allTradePairs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TradeHomeVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TradePairVM extends TradePairVM {
  @override
  final BuiltList<TradePair> allTradePairs;
  @override
  final BuiltList<TradeMarket> allTradeMarkets;
  @override
  final String fiatCurrency;
  @override
  final TradePair tradePair;
  @override
  final void Function() doLoadTradePair;

  factory _$TradePairVM([void Function(TradePairVMBuilder)? updates]) =>
      (new TradePairVMBuilder()..update(updates))._build();

  _$TradePairVM._(
      {required this.allTradePairs,
      required this.allTradeMarkets,
      required this.fiatCurrency,
      required this.tradePair,
      required this.doLoadTradePair})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allTradePairs, 'TradePairVM', 'allTradePairs');
    BuiltValueNullFieldError.checkNotNull(
        allTradeMarkets, 'TradePairVM', 'allTradeMarkets');
    BuiltValueNullFieldError.checkNotNull(
        fiatCurrency, 'TradePairVM', 'fiatCurrency');
    BuiltValueNullFieldError.checkNotNull(
        tradePair, 'TradePairVM', 'tradePair');
    BuiltValueNullFieldError.checkNotNull(
        doLoadTradePair, 'TradePairVM', 'doLoadTradePair');
  }

  @override
  TradePairVM rebuild(void Function(TradePairVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradePairVMBuilder toBuilder() => new TradePairVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradePairVM &&
        allTradePairs == other.allTradePairs &&
        allTradeMarkets == other.allTradeMarkets &&
        fiatCurrency == other.fiatCurrency &&
        tradePair == other.tradePair;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, allTradePairs.hashCode), allTradeMarkets.hashCode),
            fiatCurrency.hashCode),
        tradePair.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradePairVM')
          ..add('allTradePairs', allTradePairs)
          ..add('allTradeMarkets', allTradeMarkets)
          ..add('fiatCurrency', fiatCurrency)
          ..add('tradePair', tradePair)
          ..add('doLoadTradePair', doLoadTradePair))
        .toString();
  }
}

class TradePairVMBuilder implements Builder<TradePairVM, TradePairVMBuilder> {
  _$TradePairVM? _$v;

  ListBuilder<TradePair>? _allTradePairs;
  ListBuilder<TradePair> get allTradePairs =>
      _$this._allTradePairs ??= new ListBuilder<TradePair>();
  set allTradePairs(ListBuilder<TradePair>? allTradePairs) =>
      _$this._allTradePairs = allTradePairs;

  ListBuilder<TradeMarket>? _allTradeMarkets;
  ListBuilder<TradeMarket> get allTradeMarkets =>
      _$this._allTradeMarkets ??= new ListBuilder<TradeMarket>();
  set allTradeMarkets(ListBuilder<TradeMarket>? allTradeMarkets) =>
      _$this._allTradeMarkets = allTradeMarkets;

  String? _fiatCurrency;
  String? get fiatCurrency => _$this._fiatCurrency;
  set fiatCurrency(String? fiatCurrency) => _$this._fiatCurrency = fiatCurrency;

  TradePairBuilder? _tradePair;
  TradePairBuilder get tradePair =>
      _$this._tradePair ??= new TradePairBuilder();
  set tradePair(TradePairBuilder? tradePair) => _$this._tradePair = tradePair;

  void Function()? _doLoadTradePair;
  void Function()? get doLoadTradePair => _$this._doLoadTradePair;
  set doLoadTradePair(void Function()? doLoadTradePair) =>
      _$this._doLoadTradePair = doLoadTradePair;

  TradePairVMBuilder();

  TradePairVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allTradePairs = $v.allTradePairs.toBuilder();
      _allTradeMarkets = $v.allTradeMarkets.toBuilder();
      _fiatCurrency = $v.fiatCurrency;
      _tradePair = $v.tradePair.toBuilder();
      _doLoadTradePair = $v.doLoadTradePair;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradePairVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradePairVM;
  }

  @override
  void update(void Function(TradePairVMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradePairVM build() => _build();

  _$TradePairVM _build() {
    _$TradePairVM _$result;
    try {
      _$result = _$v ??
          new _$TradePairVM._(
              allTradePairs: allTradePairs.build(),
              allTradeMarkets: allTradeMarkets.build(),
              fiatCurrency: BuiltValueNullFieldError.checkNotNull(
                  fiatCurrency, 'TradePairVM', 'fiatCurrency'),
              tradePair: tradePair.build(),
              doLoadTradePair: BuiltValueNullFieldError.checkNotNull(
                  doLoadTradePair, 'TradePairVM', 'doLoadTradePair'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allTradePairs';
        allTradePairs.build();
        _$failedField = 'allTradeMarkets';
        allTradeMarkets.build();

        _$failedField = 'tradePair';
        tradePair.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TradePairVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TradeConfig extends TradeConfig {
  @override
  final BuiltList<TradeConfigCoin> coins;
  @override
  final BuiltMap<String, TradeConfigPair> tradePairs;
  @override
  final BuiltList<String> mqttHosts;

  factory _$TradeConfig([void Function(TradeConfigBuilder)? updates]) =>
      (new TradeConfigBuilder()..update(updates))._build();

  _$TradeConfig._(
      {required this.coins, required this.tradePairs, required this.mqttHosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(coins, 'TradeConfig', 'coins');
    BuiltValueNullFieldError.checkNotNull(
        tradePairs, 'TradeConfig', 'tradePairs');
    BuiltValueNullFieldError.checkNotNull(
        mqttHosts, 'TradeConfig', 'mqttHosts');
  }

  @override
  TradeConfig rebuild(void Function(TradeConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeConfigBuilder toBuilder() => new TradeConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeConfig &&
        coins == other.coins &&
        tradePairs == other.tradePairs &&
        mqttHosts == other.mqttHosts;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, coins.hashCode), tradePairs.hashCode), mqttHosts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeConfig')
          ..add('coins', coins)
          ..add('tradePairs', tradePairs)
          ..add('mqttHosts', mqttHosts))
        .toString();
  }
}

class TradeConfigBuilder implements Builder<TradeConfig, TradeConfigBuilder> {
  _$TradeConfig? _$v;

  ListBuilder<TradeConfigCoin>? _coins;
  ListBuilder<TradeConfigCoin> get coins =>
      _$this._coins ??= new ListBuilder<TradeConfigCoin>();
  set coins(ListBuilder<TradeConfigCoin>? coins) => _$this._coins = coins;

  MapBuilder<String, TradeConfigPair>? _tradePairs;
  MapBuilder<String, TradeConfigPair> get tradePairs =>
      _$this._tradePairs ??= new MapBuilder<String, TradeConfigPair>();
  set tradePairs(MapBuilder<String, TradeConfigPair>? tradePairs) =>
      _$this._tradePairs = tradePairs;

  ListBuilder<String>? _mqttHosts;
  ListBuilder<String> get mqttHosts =>
      _$this._mqttHosts ??= new ListBuilder<String>();
  set mqttHosts(ListBuilder<String>? mqttHosts) =>
      _$this._mqttHosts = mqttHosts;

  TradeConfigBuilder();

  TradeConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coins = $v.coins.toBuilder();
      _tradePairs = $v.tradePairs.toBuilder();
      _mqttHosts = $v.mqttHosts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeConfig;
  }

  @override
  void update(void Function(TradeConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeConfig build() => _build();

  _$TradeConfig _build() {
    _$TradeConfig _$result;
    try {
      _$result = _$v ??
          new _$TradeConfig._(
              coins: coins.build(),
              tradePairs: tradePairs.build(),
              mqttHosts: mqttHosts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coins';
        coins.build();
        _$failedField = 'tradePairs';
        tradePairs.build();
        _$failedField = 'mqttHosts';
        mqttHosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TradeConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TradeConfigCoin extends TradeConfigCoin {
  @override
  final String chain;
  @override
  final String symbol;
  @override
  final String dealAddress;
  @override
  final String matchAddress;
  @override
  final int matchFee;
  @override
  final int dealPrecision;
  @override
  final double networkFee;
  @override
  final int minBlockHeight;
  @override
  final int maxBlockHeight;
  @override
  final double minAmount;
  @override
  final double maxAmount;

  factory _$TradeConfigCoin([void Function(TradeConfigCoinBuilder)? updates]) =>
      (new TradeConfigCoinBuilder()..update(updates))._build();

  _$TradeConfigCoin._(
      {required this.chain,
      required this.symbol,
      required this.dealAddress,
      required this.matchAddress,
      required this.matchFee,
      required this.dealPrecision,
      required this.networkFee,
      required this.minBlockHeight,
      required this.maxBlockHeight,
      required this.minAmount,
      required this.maxAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(chain, 'TradeConfigCoin', 'chain');
    BuiltValueNullFieldError.checkNotNull(symbol, 'TradeConfigCoin', 'symbol');
    BuiltValueNullFieldError.checkNotNull(
        dealAddress, 'TradeConfigCoin', 'dealAddress');
    BuiltValueNullFieldError.checkNotNull(
        matchAddress, 'TradeConfigCoin', 'matchAddress');
    BuiltValueNullFieldError.checkNotNull(
        matchFee, 'TradeConfigCoin', 'matchFee');
    BuiltValueNullFieldError.checkNotNull(
        dealPrecision, 'TradeConfigCoin', 'dealPrecision');
    BuiltValueNullFieldError.checkNotNull(
        networkFee, 'TradeConfigCoin', 'networkFee');
    BuiltValueNullFieldError.checkNotNull(
        minBlockHeight, 'TradeConfigCoin', 'minBlockHeight');
    BuiltValueNullFieldError.checkNotNull(
        maxBlockHeight, 'TradeConfigCoin', 'maxBlockHeight');
    BuiltValueNullFieldError.checkNotNull(
        minAmount, 'TradeConfigCoin', 'minAmount');
    BuiltValueNullFieldError.checkNotNull(
        maxAmount, 'TradeConfigCoin', 'maxAmount');
  }

  @override
  TradeConfigCoin rebuild(void Function(TradeConfigCoinBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeConfigCoinBuilder toBuilder() =>
      new TradeConfigCoinBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeConfigCoin &&
        chain == other.chain &&
        symbol == other.symbol &&
        dealAddress == other.dealAddress &&
        matchAddress == other.matchAddress &&
        matchFee == other.matchFee &&
        dealPrecision == other.dealPrecision &&
        networkFee == other.networkFee &&
        minBlockHeight == other.minBlockHeight &&
        maxBlockHeight == other.maxBlockHeight &&
        minAmount == other.minAmount &&
        maxAmount == other.maxAmount;
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
                                        $jc($jc(0, chain.hashCode),
                                            symbol.hashCode),
                                        dealAddress.hashCode),
                                    matchAddress.hashCode),
                                matchFee.hashCode),
                            dealPrecision.hashCode),
                        networkFee.hashCode),
                    minBlockHeight.hashCode),
                maxBlockHeight.hashCode),
            minAmount.hashCode),
        maxAmount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeConfigCoin')
          ..add('chain', chain)
          ..add('symbol', symbol)
          ..add('dealAddress', dealAddress)
          ..add('matchAddress', matchAddress)
          ..add('matchFee', matchFee)
          ..add('dealPrecision', dealPrecision)
          ..add('networkFee', networkFee)
          ..add('minBlockHeight', minBlockHeight)
          ..add('maxBlockHeight', maxBlockHeight)
          ..add('minAmount', minAmount)
          ..add('maxAmount', maxAmount))
        .toString();
  }
}

class TradeConfigCoinBuilder
    implements Builder<TradeConfigCoin, TradeConfigCoinBuilder> {
  _$TradeConfigCoin? _$v;

  String? _chain;
  String? get chain => _$this._chain;
  set chain(String? chain) => _$this._chain = chain;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  String? _dealAddress;
  String? get dealAddress => _$this._dealAddress;
  set dealAddress(String? dealAddress) => _$this._dealAddress = dealAddress;

  String? _matchAddress;
  String? get matchAddress => _$this._matchAddress;
  set matchAddress(String? matchAddress) => _$this._matchAddress = matchAddress;

  int? _matchFee;
  int? get matchFee => _$this._matchFee;
  set matchFee(int? matchFee) => _$this._matchFee = matchFee;

  int? _dealPrecision;
  int? get dealPrecision => _$this._dealPrecision;
  set dealPrecision(int? dealPrecision) =>
      _$this._dealPrecision = dealPrecision;

  double? _networkFee;
  double? get networkFee => _$this._networkFee;
  set networkFee(double? networkFee) => _$this._networkFee = networkFee;

  int? _minBlockHeight;
  int? get minBlockHeight => _$this._minBlockHeight;
  set minBlockHeight(int? minBlockHeight) =>
      _$this._minBlockHeight = minBlockHeight;

  int? _maxBlockHeight;
  int? get maxBlockHeight => _$this._maxBlockHeight;
  set maxBlockHeight(int? maxBlockHeight) =>
      _$this._maxBlockHeight = maxBlockHeight;

  double? _minAmount;
  double? get minAmount => _$this._minAmount;
  set minAmount(double? minAmount) => _$this._minAmount = minAmount;

  double? _maxAmount;
  double? get maxAmount => _$this._maxAmount;
  set maxAmount(double? maxAmount) => _$this._maxAmount = maxAmount;

  TradeConfigCoinBuilder();

  TradeConfigCoinBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chain = $v.chain;
      _symbol = $v.symbol;
      _dealAddress = $v.dealAddress;
      _matchAddress = $v.matchAddress;
      _matchFee = $v.matchFee;
      _dealPrecision = $v.dealPrecision;
      _networkFee = $v.networkFee;
      _minBlockHeight = $v.minBlockHeight;
      _maxBlockHeight = $v.maxBlockHeight;
      _minAmount = $v.minAmount;
      _maxAmount = $v.maxAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeConfigCoin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeConfigCoin;
  }

  @override
  void update(void Function(TradeConfigCoinBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeConfigCoin build() => _build();

  _$TradeConfigCoin _build() {
    final _$result = _$v ??
        new _$TradeConfigCoin._(
            chain: BuiltValueNullFieldError.checkNotNull(
                chain, 'TradeConfigCoin', 'chain'),
            symbol: BuiltValueNullFieldError.checkNotNull(
                symbol, 'TradeConfigCoin', 'symbol'),
            dealAddress: BuiltValueNullFieldError.checkNotNull(
                dealAddress, 'TradeConfigCoin', 'dealAddress'),
            matchAddress: BuiltValueNullFieldError.checkNotNull(
                matchAddress, 'TradeConfigCoin', 'matchAddress'),
            matchFee: BuiltValueNullFieldError.checkNotNull(
                matchFee, 'TradeConfigCoin', 'matchFee'),
            dealPrecision: BuiltValueNullFieldError.checkNotNull(
                dealPrecision, 'TradeConfigCoin', 'dealPrecision'),
            networkFee: BuiltValueNullFieldError.checkNotNull(
                networkFee, 'TradeConfigCoin', 'networkFee'),
            minBlockHeight: BuiltValueNullFieldError.checkNotNull(
                minBlockHeight, 'TradeConfigCoin', 'minBlockHeight'),
            maxBlockHeight:
                BuiltValueNullFieldError.checkNotNull(maxBlockHeight, 'TradeConfigCoin', 'maxBlockHeight'),
            minAmount: BuiltValueNullFieldError.checkNotNull(minAmount, 'TradeConfigCoin', 'minAmount'),
            maxAmount: BuiltValueNullFieldError.checkNotNull(maxAmount, 'TradeConfigCoin', 'maxAmount'));
    replace(_$result);
    return _$result;
  }
}

class _$TradeConfigPair extends TradeConfigPair {
  @override
  final BuiltMap<String, String> localizedName;
  @override
  final BuiltList<TradeConfigPairItem> pairs;

  factory _$TradeConfigPair([void Function(TradeConfigPairBuilder)? updates]) =>
      (new TradeConfigPairBuilder()..update(updates))._build();

  _$TradeConfigPair._({required this.localizedName, required this.pairs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        localizedName, 'TradeConfigPair', 'localizedName');
    BuiltValueNullFieldError.checkNotNull(pairs, 'TradeConfigPair', 'pairs');
  }

  @override
  TradeConfigPair rebuild(void Function(TradeConfigPairBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeConfigPairBuilder toBuilder() =>
      new TradeConfigPairBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeConfigPair &&
        localizedName == other.localizedName &&
        pairs == other.pairs;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, localizedName.hashCode), pairs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeConfigPair')
          ..add('localizedName', localizedName)
          ..add('pairs', pairs))
        .toString();
  }
}

class TradeConfigPairBuilder
    implements Builder<TradeConfigPair, TradeConfigPairBuilder> {
  _$TradeConfigPair? _$v;

  MapBuilder<String, String>? _localizedName;
  MapBuilder<String, String> get localizedName =>
      _$this._localizedName ??= new MapBuilder<String, String>();
  set localizedName(MapBuilder<String, String>? localizedName) =>
      _$this._localizedName = localizedName;

  ListBuilder<TradeConfigPairItem>? _pairs;
  ListBuilder<TradeConfigPairItem> get pairs =>
      _$this._pairs ??= new ListBuilder<TradeConfigPairItem>();
  set pairs(ListBuilder<TradeConfigPairItem>? pairs) => _$this._pairs = pairs;

  TradeConfigPairBuilder();

  TradeConfigPairBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localizedName = $v.localizedName.toBuilder();
      _pairs = $v.pairs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeConfigPair other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeConfigPair;
  }

  @override
  void update(void Function(TradeConfigPairBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeConfigPair build() => _build();

  _$TradeConfigPair _build() {
    _$TradeConfigPair _$result;
    try {
      _$result = _$v ??
          new _$TradeConfigPair._(
              localizedName: localizedName.build(), pairs: pairs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localizedName';
        localizedName.build();
        _$failedField = 'pairs';
        pairs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TradeConfigPair', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TradeConfigPairItem extends TradeConfigPairItem {
  @override
  final String id;
  @override
  final String name;
  @override
  final String speed;
  @override
  final BuiltList<String> spans;
  @override
  final String status;
  @override
  final TradeConfigPairItemInfo price;
  @override
  final TradeConfigPairItemInfo trade;

  factory _$TradeConfigPairItem(
          [void Function(TradeConfigPairItemBuilder)? updates]) =>
      (new TradeConfigPairItemBuilder()..update(updates))._build();

  _$TradeConfigPairItem._(
      {required this.id,
      required this.name,
      required this.speed,
      required this.spans,
      required this.status,
      required this.price,
      required this.trade})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'TradeConfigPairItem', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'TradeConfigPairItem', 'name');
    BuiltValueNullFieldError.checkNotNull(
        speed, 'TradeConfigPairItem', 'speed');
    BuiltValueNullFieldError.checkNotNull(
        spans, 'TradeConfigPairItem', 'spans');
    BuiltValueNullFieldError.checkNotNull(
        status, 'TradeConfigPairItem', 'status');
    BuiltValueNullFieldError.checkNotNull(
        price, 'TradeConfigPairItem', 'price');
    BuiltValueNullFieldError.checkNotNull(
        trade, 'TradeConfigPairItem', 'trade');
  }

  @override
  TradeConfigPairItem rebuild(
          void Function(TradeConfigPairItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeConfigPairItemBuilder toBuilder() =>
      new TradeConfigPairItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeConfigPairItem &&
        id == other.id &&
        name == other.name &&
        speed == other.speed &&
        spans == other.spans &&
        status == other.status &&
        price == other.price &&
        trade == other.trade;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        speed.hashCode),
                    spans.hashCode),
                status.hashCode),
            price.hashCode),
        trade.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeConfigPairItem')
          ..add('id', id)
          ..add('name', name)
          ..add('speed', speed)
          ..add('spans', spans)
          ..add('status', status)
          ..add('price', price)
          ..add('trade', trade))
        .toString();
  }
}

class TradeConfigPairItemBuilder
    implements Builder<TradeConfigPairItem, TradeConfigPairItemBuilder> {
  _$TradeConfigPairItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _speed;
  String? get speed => _$this._speed;
  set speed(String? speed) => _$this._speed = speed;

  ListBuilder<String>? _spans;
  ListBuilder<String> get spans => _$this._spans ??= new ListBuilder<String>();
  set spans(ListBuilder<String>? spans) => _$this._spans = spans;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  TradeConfigPairItemInfoBuilder? _price;
  TradeConfigPairItemInfoBuilder get price =>
      _$this._price ??= new TradeConfigPairItemInfoBuilder();
  set price(TradeConfigPairItemInfoBuilder? price) => _$this._price = price;

  TradeConfigPairItemInfoBuilder? _trade;
  TradeConfigPairItemInfoBuilder get trade =>
      _$this._trade ??= new TradeConfigPairItemInfoBuilder();
  set trade(TradeConfigPairItemInfoBuilder? trade) => _$this._trade = trade;

  TradeConfigPairItemBuilder();

  TradeConfigPairItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _speed = $v.speed;
      _spans = $v.spans.toBuilder();
      _status = $v.status;
      _price = $v.price.toBuilder();
      _trade = $v.trade.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeConfigPairItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeConfigPairItem;
  }

  @override
  void update(void Function(TradeConfigPairItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeConfigPairItem build() => _build();

  _$TradeConfigPairItem _build() {
    _$TradeConfigPairItem _$result;
    try {
      _$result = _$v ??
          new _$TradeConfigPairItem._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'TradeConfigPairItem', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'TradeConfigPairItem', 'name'),
              speed: BuiltValueNullFieldError.checkNotNull(
                  speed, 'TradeConfigPairItem', 'speed'),
              spans: spans.build(),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'TradeConfigPairItem', 'status'),
              price: price.build(),
              trade: trade.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spans';
        spans.build();

        _$failedField = 'price';
        price.build();
        _$failedField = 'trade';
        trade.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TradeConfigPairItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TradeConfigPairItemInfo extends TradeConfigPairItemInfo {
  @override
  final String chain;
  @override
  final String symbol;

  factory _$TradeConfigPairItemInfo(
          [void Function(TradeConfigPairItemInfoBuilder)? updates]) =>
      (new TradeConfigPairItemInfoBuilder()..update(updates))._build();

  _$TradeConfigPairItemInfo._({required this.chain, required this.symbol})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        chain, 'TradeConfigPairItemInfo', 'chain');
    BuiltValueNullFieldError.checkNotNull(
        symbol, 'TradeConfigPairItemInfo', 'symbol');
  }

  @override
  TradeConfigPairItemInfo rebuild(
          void Function(TradeConfigPairItemInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeConfigPairItemInfoBuilder toBuilder() =>
      new TradeConfigPairItemInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeConfigPairItemInfo &&
        chain == other.chain &&
        symbol == other.symbol;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, chain.hashCode), symbol.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeConfigPairItemInfo')
          ..add('chain', chain)
          ..add('symbol', symbol))
        .toString();
  }
}

class TradeConfigPairItemInfoBuilder
    implements
        Builder<TradeConfigPairItemInfo, TradeConfigPairItemInfoBuilder> {
  _$TradeConfigPairItemInfo? _$v;

  String? _chain;
  String? get chain => _$this._chain;
  set chain(String? chain) => _$this._chain = chain;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  TradeConfigPairItemInfoBuilder();

  TradeConfigPairItemInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chain = $v.chain;
      _symbol = $v.symbol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeConfigPairItemInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeConfigPairItemInfo;
  }

  @override
  void update(void Function(TradeConfigPairItemInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeConfigPairItemInfo build() => _build();

  _$TradeConfigPairItemInfo _build() {
    final _$result = _$v ??
        new _$TradeConfigPairItemInfo._(
            chain: BuiltValueNullFieldError.checkNotNull(
                chain, 'TradeConfigPairItemInfo', 'chain'),
            symbol: BuiltValueNullFieldError.checkNotNull(
                symbol, 'TradeConfigPairItemInfo', 'symbol'));
    replace(_$result);
    return _$result;
  }
}

class _$TradeMarket extends TradeMarket {
  @override
  final String id;
  @override
  final BuiltMap<String, String> names;

  factory _$TradeMarket([void Function(TradeMarketBuilder)? updates]) =>
      (new TradeMarketBuilder()..update(updates))._build();

  _$TradeMarket._({required this.id, required this.names}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'TradeMarket', 'id');
    BuiltValueNullFieldError.checkNotNull(names, 'TradeMarket', 'names');
  }

  @override
  TradeMarket rebuild(void Function(TradeMarketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeMarketBuilder toBuilder() => new TradeMarketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeMarket && id == other.id && names == other.names;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), names.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeMarket')
          ..add('id', id)
          ..add('names', names))
        .toString();
  }
}

class TradeMarketBuilder implements Builder<TradeMarket, TradeMarketBuilder> {
  _$TradeMarket? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  MapBuilder<String, String>? _names;
  MapBuilder<String, String> get names =>
      _$this._names ??= new MapBuilder<String, String>();
  set names(MapBuilder<String, String>? names) => _$this._names = names;

  TradeMarketBuilder();

  TradeMarketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _names = $v.names.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeMarket other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeMarket;
  }

  @override
  void update(void Function(TradeMarketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeMarket build() => _build();

  _$TradeMarket _build() {
    _$TradeMarket _$result;
    try {
      _$result = _$v ??
          new _$TradeMarket._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'TradeMarket', 'id'),
              names: names.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'names';
        names.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TradeMarket', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TradeDeal extends TradeDeal {
  @override
  final int tradeSideId;
  @override
  final String tradePairId;
  @override
  final String price;
  @override
  final String amount;
  @override
  final int createdAt;

  factory _$TradeDeal([void Function(TradeDealBuilder)? updates]) =>
      (new TradeDealBuilder()..update(updates))._build();

  _$TradeDeal._(
      {required this.tradeSideId,
      required this.tradePairId,
      required this.price,
      required this.amount,
      required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tradeSideId, 'TradeDeal', 'tradeSideId');
    BuiltValueNullFieldError.checkNotNull(
        tradePairId, 'TradeDeal', 'tradePairId');
    BuiltValueNullFieldError.checkNotNull(price, 'TradeDeal', 'price');
    BuiltValueNullFieldError.checkNotNull(amount, 'TradeDeal', 'amount');
    BuiltValueNullFieldError.checkNotNull(createdAt, 'TradeDeal', 'createdAt');
  }

  @override
  TradeDeal rebuild(void Function(TradeDealBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeDealBuilder toBuilder() => new TradeDealBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeDeal &&
        tradeSideId == other.tradeSideId &&
        tradePairId == other.tradePairId &&
        price == other.price &&
        amount == other.amount &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, tradeSideId.hashCode), tradePairId.hashCode),
                price.hashCode),
            amount.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeDeal')
          ..add('tradeSideId', tradeSideId)
          ..add('tradePairId', tradePairId)
          ..add('price', price)
          ..add('amount', amount)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class TradeDealBuilder implements Builder<TradeDeal, TradeDealBuilder> {
  _$TradeDeal? _$v;

  int? _tradeSideId;
  int? get tradeSideId => _$this._tradeSideId;
  set tradeSideId(int? tradeSideId) => _$this._tradeSideId = tradeSideId;

  String? _tradePairId;
  String? get tradePairId => _$this._tradePairId;
  set tradePairId(String? tradePairId) => _$this._tradePairId = tradePairId;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  TradeDealBuilder();

  TradeDealBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tradeSideId = $v.tradeSideId;
      _tradePairId = $v.tradePairId;
      _price = $v.price;
      _amount = $v.amount;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeDeal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeDeal;
  }

  @override
  void update(void Function(TradeDealBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeDeal build() => _build();

  _$TradeDeal _build() {
    final _$result = _$v ??
        new _$TradeDeal._(
            tradeSideId: BuiltValueNullFieldError.checkNotNull(
                tradeSideId, 'TradeDeal', 'tradeSideId'),
            tradePairId: BuiltValueNullFieldError.checkNotNull(
                tradePairId, 'TradeDeal', 'tradePairId'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, 'TradeDeal', 'price'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, 'TradeDeal', 'amount'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, 'TradeDeal', 'createdAt'));
    replace(_$result);
    return _$result;
  }
}

class _$TradeOrderDetail extends TradeOrderDetail {
  @override
  final String total;
  @override
  final BuiltList<TradeOrderDetailItem> matchList;
  @override
  final BuiltList<TradeOrderDetailItem> exchangeList;

  factory _$TradeOrderDetail(
          [void Function(TradeOrderDetailBuilder)? updates]) =>
      (new TradeOrderDetailBuilder()..update(updates))._build();

  _$TradeOrderDetail._(
      {required this.total,
      required this.matchList,
      required this.exchangeList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(total, 'TradeOrderDetail', 'total');
    BuiltValueNullFieldError.checkNotNull(
        matchList, 'TradeOrderDetail', 'matchList');
    BuiltValueNullFieldError.checkNotNull(
        exchangeList, 'TradeOrderDetail', 'exchangeList');
  }

  @override
  TradeOrderDetail rebuild(void Function(TradeOrderDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeOrderDetailBuilder toBuilder() =>
      new TradeOrderDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeOrderDetail &&
        total == other.total &&
        matchList == other.matchList &&
        exchangeList == other.exchangeList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, total.hashCode), matchList.hashCode),
        exchangeList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeOrderDetail')
          ..add('total', total)
          ..add('matchList', matchList)
          ..add('exchangeList', exchangeList))
        .toString();
  }
}

class TradeOrderDetailBuilder
    implements Builder<TradeOrderDetail, TradeOrderDetailBuilder> {
  _$TradeOrderDetail? _$v;

  String? _total;
  String? get total => _$this._total;
  set total(String? total) => _$this._total = total;

  ListBuilder<TradeOrderDetailItem>? _matchList;
  ListBuilder<TradeOrderDetailItem> get matchList =>
      _$this._matchList ??= new ListBuilder<TradeOrderDetailItem>();
  set matchList(ListBuilder<TradeOrderDetailItem>? matchList) =>
      _$this._matchList = matchList;

  ListBuilder<TradeOrderDetailItem>? _exchangeList;
  ListBuilder<TradeOrderDetailItem> get exchangeList =>
      _$this._exchangeList ??= new ListBuilder<TradeOrderDetailItem>();
  set exchangeList(ListBuilder<TradeOrderDetailItem>? exchangeList) =>
      _$this._exchangeList = exchangeList;

  TradeOrderDetailBuilder();

  TradeOrderDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _matchList = $v.matchList.toBuilder();
      _exchangeList = $v.exchangeList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeOrderDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeOrderDetail;
  }

  @override
  void update(void Function(TradeOrderDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeOrderDetail build() => _build();

  _$TradeOrderDetail _build() {
    _$TradeOrderDetail _$result;
    try {
      _$result = _$v ??
          new _$TradeOrderDetail._(
              total: BuiltValueNullFieldError.checkNotNull(
                  total, 'TradeOrderDetail', 'total'),
              matchList: matchList.build(),
              exchangeList: exchangeList.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matchList';
        matchList.build();
        _$failedField = 'exchangeList';
        exchangeList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TradeOrderDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TradeOrderDetailItem extends TradeOrderDetailItem {
  @override
  final String matchPrice;
  @override
  final String amount;
  @override
  final int createdAt;
  @override
  final String fee;
  @override
  final String txId;
  @override
  final String matchId;

  factory _$TradeOrderDetailItem(
          [void Function(TradeOrderDetailItemBuilder)? updates]) =>
      (new TradeOrderDetailItemBuilder()..update(updates))._build();

  _$TradeOrderDetailItem._(
      {required this.matchPrice,
      required this.amount,
      required this.createdAt,
      required this.fee,
      required this.txId,
      required this.matchId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        matchPrice, 'TradeOrderDetailItem', 'matchPrice');
    BuiltValueNullFieldError.checkNotNull(
        amount, 'TradeOrderDetailItem', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'TradeOrderDetailItem', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(fee, 'TradeOrderDetailItem', 'fee');
    BuiltValueNullFieldError.checkNotNull(txId, 'TradeOrderDetailItem', 'txId');
    BuiltValueNullFieldError.checkNotNull(
        matchId, 'TradeOrderDetailItem', 'matchId');
  }

  @override
  TradeOrderDetailItem rebuild(
          void Function(TradeOrderDetailItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeOrderDetailItemBuilder toBuilder() =>
      new TradeOrderDetailItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeOrderDetailItem &&
        matchPrice == other.matchPrice &&
        amount == other.amount &&
        createdAt == other.createdAt &&
        fee == other.fee &&
        txId == other.txId &&
        matchId == other.matchId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, matchPrice.hashCode), amount.hashCode),
                    createdAt.hashCode),
                fee.hashCode),
            txId.hashCode),
        matchId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeOrderDetailItem')
          ..add('matchPrice', matchPrice)
          ..add('amount', amount)
          ..add('createdAt', createdAt)
          ..add('fee', fee)
          ..add('txId', txId)
          ..add('matchId', matchId))
        .toString();
  }
}

class TradeOrderDetailItemBuilder
    implements Builder<TradeOrderDetailItem, TradeOrderDetailItemBuilder> {
  _$TradeOrderDetailItem? _$v;

  String? _matchPrice;
  String? get matchPrice => _$this._matchPrice;
  set matchPrice(String? matchPrice) => _$this._matchPrice = matchPrice;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _fee;
  String? get fee => _$this._fee;
  set fee(String? fee) => _$this._fee = fee;

  String? _txId;
  String? get txId => _$this._txId;
  set txId(String? txId) => _$this._txId = txId;

  String? _matchId;
  String? get matchId => _$this._matchId;
  set matchId(String? matchId) => _$this._matchId = matchId;

  TradeOrderDetailItemBuilder();

  TradeOrderDetailItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matchPrice = $v.matchPrice;
      _amount = $v.amount;
      _createdAt = $v.createdAt;
      _fee = $v.fee;
      _txId = $v.txId;
      _matchId = $v.matchId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeOrderDetailItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeOrderDetailItem;
  }

  @override
  void update(void Function(TradeOrderDetailItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeOrderDetailItem build() => _build();

  _$TradeOrderDetailItem _build() {
    final _$result = _$v ??
        new _$TradeOrderDetailItem._(
            matchPrice: BuiltValueNullFieldError.checkNotNull(
                matchPrice, 'TradeOrderDetailItem', 'matchPrice'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, 'TradeOrderDetailItem', 'amount'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, 'TradeOrderDetailItem', 'createdAt'),
            fee: BuiltValueNullFieldError.checkNotNull(
                fee, 'TradeOrderDetailItem', 'fee'),
            txId: BuiltValueNullFieldError.checkNotNull(
                txId, 'TradeOrderDetailItem', 'txId'),
            matchId: BuiltValueNullFieldError.checkNotNull(
                matchId, 'TradeOrderDetailItem', 'matchId'));
    replace(_$result);
    return _$result;
  }
}

class _$TradePair extends TradePair {
  @override
  final String id;
  @override
  final String name;
  @override
  final String speed;
  @override
  final BuiltList<String> spans;
  @override
  final String apiStatus;
  @override
  final String marketId;
  @override
  final String tradeName;
  @override
  final String tradeChain;
  @override
  final String tradeSymbol;
  @override
  final String priceName;
  @override
  final String priceChain;
  @override
  final String priceSymbol;

  factory _$TradePair([void Function(TradePairBuilder)? updates]) =>
      (new TradePairBuilder()..update(updates))._build();

  _$TradePair._(
      {required this.id,
      required this.name,
      required this.speed,
      required this.spans,
      required this.apiStatus,
      required this.marketId,
      required this.tradeName,
      required this.tradeChain,
      required this.tradeSymbol,
      required this.priceName,
      required this.priceChain,
      required this.priceSymbol})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'TradePair', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'TradePair', 'name');
    BuiltValueNullFieldError.checkNotNull(speed, 'TradePair', 'speed');
    BuiltValueNullFieldError.checkNotNull(spans, 'TradePair', 'spans');
    BuiltValueNullFieldError.checkNotNull(apiStatus, 'TradePair', 'apiStatus');
    BuiltValueNullFieldError.checkNotNull(marketId, 'TradePair', 'marketId');
    BuiltValueNullFieldError.checkNotNull(tradeName, 'TradePair', 'tradeName');
    BuiltValueNullFieldError.checkNotNull(
        tradeChain, 'TradePair', 'tradeChain');
    BuiltValueNullFieldError.checkNotNull(
        tradeSymbol, 'TradePair', 'tradeSymbol');
    BuiltValueNullFieldError.checkNotNull(priceName, 'TradePair', 'priceName');
    BuiltValueNullFieldError.checkNotNull(
        priceChain, 'TradePair', 'priceChain');
    BuiltValueNullFieldError.checkNotNull(
        priceSymbol, 'TradePair', 'priceSymbol');
  }

  @override
  TradePair rebuild(void Function(TradePairBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradePairBuilder toBuilder() => new TradePairBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradePair &&
        id == other.id &&
        name == other.name &&
        speed == other.speed &&
        spans == other.spans &&
        apiStatus == other.apiStatus &&
        marketId == other.marketId &&
        tradeName == other.tradeName &&
        tradeChain == other.tradeChain &&
        tradeSymbol == other.tradeSymbol &&
        priceName == other.priceName &&
        priceChain == other.priceChain &&
        priceSymbol == other.priceSymbol;
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
                                            $jc($jc(0, id.hashCode),
                                                name.hashCode),
                                            speed.hashCode),
                                        spans.hashCode),
                                    apiStatus.hashCode),
                                marketId.hashCode),
                            tradeName.hashCode),
                        tradeChain.hashCode),
                    tradeSymbol.hashCode),
                priceName.hashCode),
            priceChain.hashCode),
        priceSymbol.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradePair')
          ..add('id', id)
          ..add('name', name)
          ..add('speed', speed)
          ..add('spans', spans)
          ..add('apiStatus', apiStatus)
          ..add('marketId', marketId)
          ..add('tradeName', tradeName)
          ..add('tradeChain', tradeChain)
          ..add('tradeSymbol', tradeSymbol)
          ..add('priceName', priceName)
          ..add('priceChain', priceChain)
          ..add('priceSymbol', priceSymbol))
        .toString();
  }
}

class TradePairBuilder implements Builder<TradePair, TradePairBuilder> {
  _$TradePair? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _speed;
  String? get speed => _$this._speed;
  set speed(String? speed) => _$this._speed = speed;

  ListBuilder<String>? _spans;
  ListBuilder<String> get spans => _$this._spans ??= new ListBuilder<String>();
  set spans(ListBuilder<String>? spans) => _$this._spans = spans;

  String? _apiStatus;
  String? get apiStatus => _$this._apiStatus;
  set apiStatus(String? apiStatus) => _$this._apiStatus = apiStatus;

  String? _marketId;
  String? get marketId => _$this._marketId;
  set marketId(String? marketId) => _$this._marketId = marketId;

  String? _tradeName;
  String? get tradeName => _$this._tradeName;
  set tradeName(String? tradeName) => _$this._tradeName = tradeName;

  String? _tradeChain;
  String? get tradeChain => _$this._tradeChain;
  set tradeChain(String? tradeChain) => _$this._tradeChain = tradeChain;

  String? _tradeSymbol;
  String? get tradeSymbol => _$this._tradeSymbol;
  set tradeSymbol(String? tradeSymbol) => _$this._tradeSymbol = tradeSymbol;

  String? _priceName;
  String? get priceName => _$this._priceName;
  set priceName(String? priceName) => _$this._priceName = priceName;

  String? _priceChain;
  String? get priceChain => _$this._priceChain;
  set priceChain(String? priceChain) => _$this._priceChain = priceChain;

  String? _priceSymbol;
  String? get priceSymbol => _$this._priceSymbol;
  set priceSymbol(String? priceSymbol) => _$this._priceSymbol = priceSymbol;

  TradePairBuilder();

  TradePairBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _speed = $v.speed;
      _spans = $v.spans.toBuilder();
      _apiStatus = $v.apiStatus;
      _marketId = $v.marketId;
      _tradeName = $v.tradeName;
      _tradeChain = $v.tradeChain;
      _tradeSymbol = $v.tradeSymbol;
      _priceName = $v.priceName;
      _priceChain = $v.priceChain;
      _priceSymbol = $v.priceSymbol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradePair other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradePair;
  }

  @override
  void update(void Function(TradePairBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradePair build() => _build();

  _$TradePair _build() {
    _$TradePair _$result;
    try {
      _$result = _$v ??
          new _$TradePair._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'TradePair', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'TradePair', 'name'),
              speed: BuiltValueNullFieldError.checkNotNull(
                  speed, 'TradePair', 'speed'),
              spans: spans.build(),
              apiStatus: BuiltValueNullFieldError.checkNotNull(
                  apiStatus, 'TradePair', 'apiStatus'),
              marketId: BuiltValueNullFieldError.checkNotNull(
                  marketId, 'TradePair', 'marketId'),
              tradeName: BuiltValueNullFieldError.checkNotNull(
                  tradeName, 'TradePair', 'tradeName'),
              tradeChain: BuiltValueNullFieldError.checkNotNull(
                  tradeChain, 'TradePair', 'tradeChain'),
              tradeSymbol: BuiltValueNullFieldError.checkNotNull(
                  tradeSymbol, 'TradePair', 'tradeSymbol'),
              priceName: BuiltValueNullFieldError.checkNotNull(
                  priceName, 'TradePair', 'priceName'),
              priceChain: BuiltValueNullFieldError.checkNotNull(
                  priceChain, 'TradePair', 'priceChain'),
              priceSymbol: BuiltValueNullFieldError.checkNotNull(
                  priceSymbol, 'TradePair', 'priceSymbol'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spans';
        spans.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TradePair', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TradeInfo24h extends TradeInfo24h {
  @override
  final String high;
  @override
  final String low;
  @override
  final String vol;

  factory _$TradeInfo24h([void Function(TradeInfo24hBuilder)? updates]) =>
      (new TradeInfo24hBuilder()..update(updates))._build();

  _$TradeInfo24h._({required this.high, required this.low, required this.vol})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(high, 'TradeInfo24h', 'high');
    BuiltValueNullFieldError.checkNotNull(low, 'TradeInfo24h', 'low');
    BuiltValueNullFieldError.checkNotNull(vol, 'TradeInfo24h', 'vol');
  }

  @override
  TradeInfo24h rebuild(void Function(TradeInfo24hBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeInfo24hBuilder toBuilder() => new TradeInfo24hBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeInfo24h &&
        high == other.high &&
        low == other.low &&
        vol == other.vol;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, high.hashCode), low.hashCode), vol.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeInfo24h')
          ..add('high', high)
          ..add('low', low)
          ..add('vol', vol))
        .toString();
  }
}

class TradeInfo24hBuilder
    implements Builder<TradeInfo24h, TradeInfo24hBuilder> {
  _$TradeInfo24h? _$v;

  String? _high;
  String? get high => _$this._high;
  set high(String? high) => _$this._high = high;

  String? _low;
  String? get low => _$this._low;
  set low(String? low) => _$this._low = low;

  String? _vol;
  String? get vol => _$this._vol;
  set vol(String? vol) => _$this._vol = vol;

  TradeInfo24hBuilder();

  TradeInfo24hBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _high = $v.high;
      _low = $v.low;
      _vol = $v.vol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeInfo24h other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeInfo24h;
  }

  @override
  void update(void Function(TradeInfo24hBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeInfo24h build() => _build();

  _$TradeInfo24h _build() {
    final _$result = _$v ??
        new _$TradeInfo24h._(
            high: BuiltValueNullFieldError.checkNotNull(
                high, 'TradeInfo24h', 'high'),
            low: BuiltValueNullFieldError.checkNotNull(
                low, 'TradeInfo24h', 'low'),
            vol: BuiltValueNullFieldError.checkNotNull(
                vol, 'TradeInfo24h', 'vol'));
    replace(_$result);
    return _$result;
  }
}

class _$TradeTicker extends TradeTicker {
  @override
  final int tradeSideId;
  @override
  final String tradePairId;
  @override
  final String price;
  @override
  final double amount;

  factory _$TradeTicker([void Function(TradeTickerBuilder)? updates]) =>
      (new TradeTickerBuilder()..update(updates))._build();

  _$TradeTicker._(
      {required this.tradeSideId,
      required this.tradePairId,
      required this.price,
      required this.amount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tradeSideId, 'TradeTicker', 'tradeSideId');
    BuiltValueNullFieldError.checkNotNull(
        tradePairId, 'TradeTicker', 'tradePairId');
    BuiltValueNullFieldError.checkNotNull(price, 'TradeTicker', 'price');
    BuiltValueNullFieldError.checkNotNull(amount, 'TradeTicker', 'amount');
  }

  @override
  TradeTicker rebuild(void Function(TradeTickerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeTickerBuilder toBuilder() => new TradeTickerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeTicker &&
        tradeSideId == other.tradeSideId &&
        tradePairId == other.tradePairId &&
        price == other.price &&
        amount == other.amount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, tradeSideId.hashCode), tradePairId.hashCode),
            price.hashCode),
        amount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeTicker')
          ..add('tradeSideId', tradeSideId)
          ..add('tradePairId', tradePairId)
          ..add('price', price)
          ..add('amount', amount))
        .toString();
  }
}

class TradeTickerBuilder implements Builder<TradeTicker, TradeTickerBuilder> {
  _$TradeTicker? _$v;

  int? _tradeSideId;
  int? get tradeSideId => _$this._tradeSideId;
  set tradeSideId(int? tradeSideId) => _$this._tradeSideId = tradeSideId;

  String? _tradePairId;
  String? get tradePairId => _$this._tradePairId;
  set tradePairId(String? tradePairId) => _$this._tradePairId = tradePairId;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  TradeTickerBuilder();

  TradeTickerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tradeSideId = $v.tradeSideId;
      _tradePairId = $v.tradePairId;
      _price = $v.price;
      _amount = $v.amount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeTicker other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeTicker;
  }

  @override
  void update(void Function(TradeTickerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeTicker build() => _build();

  _$TradeTicker _build() {
    final _$result = _$v ??
        new _$TradeTicker._(
            tradeSideId: BuiltValueNullFieldError.checkNotNull(
                tradeSideId, 'TradeTicker', 'tradeSideId'),
            tradePairId: BuiltValueNullFieldError.checkNotNull(
                tradePairId, 'TradeTicker', 'tradePairId'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, 'TradeTicker', 'price'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, 'TradeTicker', 'amount'));
    replace(_$result);
    return _$result;
  }
}

class _$TradeState extends TradeState {
  @override
  final TradeConfig config;
  @override
  final int configState;
  @override
  final TradePair tradePair;
  @override
  final TradeSide tradeSide;
  @override
  final BuiltList<String> hideSlowTradePairTip;
  @override
  final TradeOrderDetail currentOrderDetail;

  factory _$TradeState([void Function(TradeStateBuilder)? updates]) =>
      (new TradeStateBuilder()..update(updates))._build();

  _$TradeState._(
      {required this.config,
      required this.configState,
      required this.tradePair,
      required this.tradeSide,
      required this.hideSlowTradePairTip,
      required this.currentOrderDetail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(config, 'TradeState', 'config');
    BuiltValueNullFieldError.checkNotNull(
        configState, 'TradeState', 'configState');
    BuiltValueNullFieldError.checkNotNull(tradePair, 'TradeState', 'tradePair');
    BuiltValueNullFieldError.checkNotNull(tradeSide, 'TradeState', 'tradeSide');
    BuiltValueNullFieldError.checkNotNull(
        hideSlowTradePairTip, 'TradeState', 'hideSlowTradePairTip');
    BuiltValueNullFieldError.checkNotNull(
        currentOrderDetail, 'TradeState', 'currentOrderDetail');
  }

  @override
  TradeState rebuild(void Function(TradeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TradeStateBuilder toBuilder() => new TradeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TradeState &&
        config == other.config &&
        configState == other.configState &&
        tradePair == other.tradePair &&
        tradeSide == other.tradeSide &&
        hideSlowTradePairTip == other.hideSlowTradePairTip &&
        currentOrderDetail == other.currentOrderDetail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, config.hashCode), configState.hashCode),
                    tradePair.hashCode),
                tradeSide.hashCode),
            hideSlowTradePairTip.hashCode),
        currentOrderDetail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TradeState')
          ..add('config', config)
          ..add('configState', configState)
          ..add('tradePair', tradePair)
          ..add('tradeSide', tradeSide)
          ..add('hideSlowTradePairTip', hideSlowTradePairTip)
          ..add('currentOrderDetail', currentOrderDetail))
        .toString();
  }
}

class TradeStateBuilder implements Builder<TradeState, TradeStateBuilder> {
  _$TradeState? _$v;

  TradeConfigBuilder? _config;
  TradeConfigBuilder get config => _$this._config ??= new TradeConfigBuilder();
  set config(TradeConfigBuilder? config) => _$this._config = config;

  int? _configState;
  int? get configState => _$this._configState;
  set configState(int? configState) => _$this._configState = configState;

  TradePairBuilder? _tradePair;
  TradePairBuilder get tradePair =>
      _$this._tradePair ??= new TradePairBuilder();
  set tradePair(TradePairBuilder? tradePair) => _$this._tradePair = tradePair;

  TradeSide? _tradeSide;
  TradeSide? get tradeSide => _$this._tradeSide;
  set tradeSide(TradeSide? tradeSide) => _$this._tradeSide = tradeSide;

  ListBuilder<String>? _hideSlowTradePairTip;
  ListBuilder<String> get hideSlowTradePairTip =>
      _$this._hideSlowTradePairTip ??= new ListBuilder<String>();
  set hideSlowTradePairTip(ListBuilder<String>? hideSlowTradePairTip) =>
      _$this._hideSlowTradePairTip = hideSlowTradePairTip;

  TradeOrderDetailBuilder? _currentOrderDetail;
  TradeOrderDetailBuilder get currentOrderDetail =>
      _$this._currentOrderDetail ??= new TradeOrderDetailBuilder();
  set currentOrderDetail(TradeOrderDetailBuilder? currentOrderDetail) =>
      _$this._currentOrderDetail = currentOrderDetail;

  TradeStateBuilder();

  TradeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _config = $v.config.toBuilder();
      _configState = $v.configState;
      _tradePair = $v.tradePair.toBuilder();
      _tradeSide = $v.tradeSide;
      _hideSlowTradePairTip = $v.hideSlowTradePairTip.toBuilder();
      _currentOrderDetail = $v.currentOrderDetail.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TradeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TradeState;
  }

  @override
  void update(void Function(TradeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TradeState build() => _build();

  _$TradeState _build() {
    _$TradeState _$result;
    try {
      _$result = _$v ??
          new _$TradeState._(
              config: config.build(),
              configState: BuiltValueNullFieldError.checkNotNull(
                  configState, 'TradeState', 'configState'),
              tradePair: tradePair.build(),
              tradeSide: BuiltValueNullFieldError.checkNotNull(
                  tradeSide, 'TradeState', 'tradeSide'),
              hideSlowTradePairTip: hideSlowTradePairTip.build(),
              currentOrderDetail: currentOrderDetail.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        config.build();

        _$failedField = 'tradePair';
        tradePair.build();

        _$failedField = 'hideSlowTradePairTip';
        hideSlowTradePairTip.build();
        _$failedField = 'currentOrderDetail';
        currentOrderDetail.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TradeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TradeOrderAdapter extends TypeAdapter<TradeOrder> {
  @override
  final int typeId = 30;

  @override
  TradeOrder read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TradeOrder()
      ..txId = fields[0] as String
      ..chain = fields[1] as String
      ..symbol = fields[2] as String
      ..priceSymbol = fields[3] as String
      ..tradeSymbol = fields[4] as String
      ..tradeSideId = fields[5] as int
      ..tradePairId = fields[6] as String
      ..confirmations = fields[7] as int
      ..validHeight = fields[8] as int
      ..currentHeight = fields[9] as int
      ..submitAt = fields[10] as int
      ..confirmedAt = fields[11] as int
      ..tradedAt = fields[12] as int
      ..cancelAt = fields[13] as int
      ..cancelTxId = fields[14] as String
      ..templateAddress = fields[15] as String
      ..templateHex = fields[16] as String
      ..fromAddress = fields[17] as String
      ..matchAddress = fields[18] as String
      ..dealAddress = fields[19] as String
      ..price = fields[20] as double
      ..avgPrice = fields[21] as double
      ..remaining = fields[22] as double
      ..amount = fields[23] as double
      ..filled = fields[24] as double
      ..total = fields[25] as double
      ..dealAmount = fields[26] as double
      ..withdrawAmount = fields[30] as double
      ..networkFee = fields[27] as double
      ..matchFee = fields[28] as int
      ..feeSymbol = fields[29] as String
      ..status = fields[40] as TradeOrderStatus
      ..type = fields[41] as String;
  }

  @override
  void write(BinaryWriter writer, TradeOrder obj) {
    writer
      ..writeByte(33)
      ..writeByte(0)
      ..write(obj.txId)
      ..writeByte(1)
      ..write(obj.chain)
      ..writeByte(2)
      ..write(obj.symbol)
      ..writeByte(3)
      ..write(obj.priceSymbol)
      ..writeByte(4)
      ..write(obj.tradeSymbol)
      ..writeByte(5)
      ..write(obj.tradeSideId)
      ..writeByte(6)
      ..write(obj.tradePairId)
      ..writeByte(7)
      ..write(obj.confirmations)
      ..writeByte(8)
      ..write(obj.validHeight)
      ..writeByte(9)
      ..write(obj.currentHeight)
      ..writeByte(10)
      ..write(obj.submitAt)
      ..writeByte(11)
      ..write(obj.confirmedAt)
      ..writeByte(12)
      ..write(obj.tradedAt)
      ..writeByte(13)
      ..write(obj.cancelAt)
      ..writeByte(14)
      ..write(obj.cancelTxId)
      ..writeByte(15)
      ..write(obj.templateAddress)
      ..writeByte(16)
      ..write(obj.templateHex)
      ..writeByte(17)
      ..write(obj.fromAddress)
      ..writeByte(18)
      ..write(obj.matchAddress)
      ..writeByte(19)
      ..write(obj.dealAddress)
      ..writeByte(20)
      ..write(obj.price)
      ..writeByte(21)
      ..write(obj.avgPrice)
      ..writeByte(22)
      ..write(obj.remaining)
      ..writeByte(23)
      ..write(obj.amount)
      ..writeByte(24)
      ..write(obj.filled)
      ..writeByte(25)
      ..write(obj.total)
      ..writeByte(26)
      ..write(obj.dealAmount)
      ..writeByte(30)
      ..write(obj.withdrawAmount)
      ..writeByte(27)
      ..write(obj.networkFee)
      ..writeByte(28)
      ..write(obj.matchFee)
      ..writeByte(29)
      ..write(obj.feeSymbol)
      ..writeByte(40)
      ..write(obj.status)
      ..writeByte(41)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TradeOrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TradeOrderStatusAdapter extends TypeAdapter<TradeOrderStatus> {
  @override
  final int typeId = 31;

  @override
  TradeOrderStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TradeOrderStatus.confirming;
      case 1:
        return TradeOrderStatus.pending;
      case 2:
        return TradeOrderStatus.traded;
      case 3:
        return TradeOrderStatus.partialCancel;
      case 4:
        return TradeOrderStatus.cancelled;
      case 5:
        return TradeOrderStatus.dusts;
      case 6:
        return TradeOrderStatus.cancelling;
      case 7:
        return TradeOrderStatus.failed;
      case 8:
        return TradeOrderStatus.matchFailed;
      default:
        return TradeOrderStatus.confirming;
    }
  }

  @override
  void write(BinaryWriter writer, TradeOrderStatus obj) {
    switch (obj) {
      case TradeOrderStatus.confirming:
        writer.writeByte(0);
        break;
      case TradeOrderStatus.pending:
        writer.writeByte(1);
        break;
      case TradeOrderStatus.traded:
        writer.writeByte(2);
        break;
      case TradeOrderStatus.partialCancel:
        writer.writeByte(3);
        break;
      case TradeOrderStatus.cancelled:
        writer.writeByte(4);
        break;
      case TradeOrderStatus.dusts:
        writer.writeByte(5);
        break;
      case TradeOrderStatus.cancelling:
        writer.writeByte(6);
        break;
      case TradeOrderStatus.failed:
        writer.writeByte(7);
        break;
      case TradeOrderStatus.matchFailed:
        writer.writeByte(8);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TradeOrderStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TradePreferenceAdapter extends TypeAdapter<TradePreference> {
  @override
  final int typeId = 32;

  @override
  TradePreference read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TradePreference()
      ..tradePairSpan = (fields[1] as Map).cast<String, String>()
      ..tradePairResolution = (fields[2] as Map).cast<String, String>();
  }

  @override
  void write(BinaryWriter writer, TradePreference obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.tradePairSpan)
      ..writeByte(2)
      ..write(obj.tradePairResolution);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TradePreferenceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
