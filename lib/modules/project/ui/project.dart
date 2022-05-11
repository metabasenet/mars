library project_ui_module;

// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// Project imports:
import 'package:mars/dialogs/dialogs.dart';
import 'package:mars/modules/app/app.dart';
import 'package:mars/modules/asset/domain/asset.dart';
import 'package:mars/modules/asset/ui/asset.dart';
import 'package:mars/modules/common/ui/common.dart';
import 'package:mars/modules/project/domain/project.dart';
import 'package:mars/routers/navigator.dart';
import 'package:mars/themes/themes.dart';
import 'package:mars/utils/utils.dart';
import 'package:mars/widgets/widgets.dart';

part 'screens/project_apply_create.dart';
part 'screens/project_apply_rule.dart';
part 'screens/project_apply_submit.dart';
part 'screens/project_detail.dart';
part 'screens/project_list.dart';
part 'widgets/home_project.dart';
part 'widgets/project_item.dart';
part 'widgets/project_pool_plan.dart';

part 'dialogs/project_submit_dialog.dart';

Route<dynamic> moduleProjectInitRoutes(RouteSettings settings) {
  switch (settings.name) {
    case ProjectListPage.routeName:
      return ProjectListPage.route(settings);
    case ProjectDetailPage.routeName:
      return ProjectDetailPage.route(settings);
    case ProjectApplyRulePage.routeName:
      return ProjectApplyRulePage.route(settings);
    case ProjectApplyCreatePage.routeName:
      return ProjectApplyCreatePage.route(settings);
    case ProjectApplySubmitPage.routeName:
      return ProjectApplySubmitPage.route(settings);
    default:
      return null;
  }
}
