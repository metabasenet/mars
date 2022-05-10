library invest_ui_module;

// Dart imports:
import 'dart:async';
import 'dart:math' as math;

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// Project imports:
import 'package:mars/modules/app/app.dart';
import 'package:mars/modules/asset/domain/asset.dart';
import 'package:mars/modules/asset/ui/asset.dart';
import 'package:mars/modules/invest/domain/invest.dart';
import 'package:mars/routers/navigator.dart';
import 'package:mars/routers/transitions.dart';
import 'package:mars/themes/themes.dart';
import 'package:mars/utils/utils.dart';
import 'package:mars/widgets/widgets.dart';

part 'screens/invest_home.dart';
part 'screens/main_tab.dart';
part 'screens/mining_reward_record.dart';
part 'widgets/airdrop/airdrop_header.dart';
part 'widgets/airdrop/airdrop_step_card.dart';
part 'widgets/airdrop/airdrop_tab.dart';
part 'widgets/invest_title.dart';
part 'widgets/loading_header.dart';
part 'widgets/mining/mining_header.dart';
part 'widgets/mining/mining_invitation_tab.dart';
part 'widgets/mining/mining_reward_chart.dart';
part 'widgets/mining/mining_reward_item.dart';
part 'widgets/mining/mining_reward_tab.dart';
part 'widgets/mint_select_drawer.dart';

Route<dynamic> moduleInvestRoutes(RouteSettings settings) {
  switch (settings.name) {
    case MiningRewardRecordPage.routeName:
      return MiningRewardRecordPage.route(settings);
    default:
      return null;
  }
}
