part of app_module;

abstract class _BaseAction extends ReduxAction<AppState> {
  //
}

class AppActionInitApp extends _BaseAction {
  AppActionInitApp(this.progress, this.context);

  final StreamController<double> progress;
  final BuildContext context;

  @override
  Future<AppState?> reduce() async {
    // Init App Actions
    progress.add(0.1);

    // 1- Load State
    await store.dispatchAsync(CommonActionLoadCache(), notify: false);

    // 2- Load/Update device info in CommonState
    await store.dispatchAsync(CommonActionLoadDeviceInfo(), notify: false);

    // 3- Load Settings
    await store.dispatchAsync(CommonActionLoadSettings(), notify: false);

    // 4- Setup API header with app info

    // Request().setup(
    //   AppConstants.randomApiUrl,
    //   headers: {
    //     'app-os': Platform.isIOS ? ' ios' : 'android',
    //     'app-build': state.commonState.appInfo.buildNumber,
    //     'app-version': state.commonState.appInfo.version,
    //     'app-language': state.commonState.languageForApi,
    //   },
    // );

    if (AppConstants.isBeta) {
      /*
      final settings = await SettingsRepository().getSettings();
      Request().updateHeader('env', 'develop');
      if (settings.hasApiBaseUrl) {
        Request().updateBaseUrl(settings.apiBaseUrl);
      }
      if (settings.hasApiAppVersion) {
        Request().updateHeader('app-version', settings.apiAppVersion);
      }
      if (settings.hasProxyUrl && Platform.isAndroid) {
        Request().setupProxy(settings.proxyUrl);
      }*/
    } else {
      // First get api url from api1
      store.dispatch(CommonActionLoadHost(), notify: false);
    }
    progress.add(0.5);

    // 5- Initial Data
    store
        .dispatchAsync(WalletActionWalletLoadAll(), notify: false)
        .whenComplete(() {
      store.dispatch(AppActionLoadWallet(state.walletState.activeWallet));
    });
    store.dispatch(CommonActionLoadConfig(), notify: false);
    //store.dispatch(CommonActionLoadImageConfig(), notify: false);
    store.dispatch(TradeActionLoadConfig(), notify: false);
    store.dispatch(CommunityActionLoadConfig(), notify: false);
    store.dispatch(AdmissionActionLoadConfig(), notify: false);
    store.dispatch(SwapActionLoadConfig(), notify: false);
    if (AppConstants.isBeta) {
      store.dispatch(InvestActionLoadConfig(), notify: false);
    }

    progress.add(0.8);

    AnalyticsReport().setUserId(state.commonState.deviceId ?? '');
    AnalyticsReport().reportLog(
      'InitApp',
      {'version': state.commonState.appInfo?.version},
    );

    //get language cache
    if (!AppLanguages.isSetLanguages) {
      final settings = CommonRepository().getSettings();
      final languageCode = settings?.language ?? '';
      context.setLocale(Locale(languageCode));
    }

    progress.add(1);
    return null;
  }

  @override
  Object? wrapError(dynamic error) {
    CrashesReport().reportEvent(
      'CommonLog_01_InitApp',
      error,
      StackTrace.current,
    );
    return error;
  }
}

// /// Select and activate a Wallet
// /// - We will "sync" the wallet coin with online coins, in order to add new coins to the wallet
// /// - We will create AssetCoin to display to our asset list
class AppActionLoadWallet extends _BaseAction {
  AppActionLoadWallet(this.wallet);
  final Wallet? wallet;

  @override
  Future<AppState?> reduce() async {
    if (wallet != null) {
      // Make sure I set the current wallet
      await dispatchAsync(WalletActionWalletSetActive(wallet!));

      await dispatchAsync(AssetActionSyncWalletCoins(wallet!));
      // Action to be perform after we load the wallet

      // Update prices
      dispatch(
        AssetActionUpdatePrices(
          store.state.commonState.fiatCurrency ?? '',
        ),
      );
      // Update balances
      dispatch(
        AssetActionUpdateWalletBalances(
          wallet: wallet!,
          skipFrequentUpdate: true,
        ),
      );

      dispatch(InvestActionClear());
      dispatch(InvitationActionClear());
      dispatch(TradeActionReSubmitCancelTxid());

      // Check wallet status and register
      dispatch(WalletActionWalletRegister(wallet!));

      //doSwitchWallet
      final ret = {
        'PrivateKey': '',
        'Address': wallet?.ethAddress,
      };
      final src =
          'window.dispatchEvent(new CustomEvent("Init",{"detail":${json.encode(ret)}}));';
      TradeHomePage.webView.evaluateJavascript(source: src);
    }
    return null;
  }

  @override
  Object? wrapError(dynamic error) {
    CrashesReport().reportEvent(
      'WalletLog_03_LoadActiveWallet',
      error,
      StackTrace.current,
    );
    return error;
  }
}

class AppActionAfterChangeLanguage extends _BaseAction {
  AppActionAfterChangeLanguage(this.language);
  final String language;

  @override
  AppState? reduce() {
    // NOTE: Add Actions that need reload data when change Language
    dispatch(CommunityActionLoadConfig());
    dispatch(HomeActionInit());

    return null;
  }
}

class AppActionAfterChangeFiatCurrency extends _BaseAction {
  AppActionAfterChangeFiatCurrency(this.fiatCurrency);
  final String fiatCurrency;

  @override
  AppState? reduce() {
    // NOTE: Add Actions that need reload data when change Fiat Currency
    dispatch(AssetActionUpdatePrices(fiatCurrency));

    return null;
  }
}

class AppActionAfterCommonConfig extends _BaseAction {
  AppActionAfterCommonConfig(this.config);
  final Config config;

  @override
  AppState? reduce() {
    // NOTE: Add Actions that need execute after get the main config
    if (state.walletState.activeWallet != null) {
      dispatch(AssetActionSyncWalletCoins(state.walletState.activeWallet!));
    }

    return null;
  }
}
