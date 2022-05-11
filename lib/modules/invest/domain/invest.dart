library invest_domain_module;

// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:network_flutter/network_flutter.dart';

// Project imports:
import 'package:mars/modules/app/app.dart';
import 'package:mars/modules/asset/domain/asset.dart';
import 'package:mars/modules/common/domain/common.dart';
import 'package:mars/utils/utils.dart';

part 'invest.g.dart';
part 'logic/invest_home_vm.dart';
part 'logic/invest_profit_vm.dart';
part 'models/config.dart';
part 'models/mint_chart.dart';
part 'models/mint_info.dart';
part 'models/mint_item.dart';
part 'models/profit_invitation_item.dart';
part 'models/profit_record_item.dart';
part 'services/invest_api.dart';
part 'services/invest_repository.dart';
part 'store/invest_actions.config.dart';
part 'store/invest_actions.dart';
part 'store/invest_actions.info.dart';
part 'store/invest_state.dart';

Future<void> moduleInvestInitHive() async {
//
}

Future<void> moduleInvestInitGetIt() async {
  //
}

const kModuleInvestSerializeModels = [
  InvestConfig,
  MintInfo,
  ProfitRecordItem,
  ProfitInvitationItem,
  MintChart,
];
