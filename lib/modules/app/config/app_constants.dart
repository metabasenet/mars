part of app_module;

class AppConstants {
  static const mnt_fork =
      '00000000ed7baa7cd66a44d0c6f98efa3c3e8972bf30ef7fc3b50f043ebe5b30';

  static const mnt_chain = '\u{0042}\u{0042}\u{0043}';

  static const codeVersion = 0;

  // From env
  static bool isBeta = true;
  static String buildId = '0';
  static String commitHash = 'local';

  // App Info
  static const appName = 'Mars';

  // Api/Service data
  static const apiUrl = [
    'https://browser.Metabasenet.site/api',
    //'http://124.221.253.93:7711',
  ];
  static const apiUrlDev = [
    'https://browser.Metabasenet.site/api/mars_api',
    //'http://124.221.253.93:7711/mars_api',
  ];
  static const imageUrl = 'https://image.mars.com/';

  // AppCenter
  static const appCenterId = 'Mars-Mirror';
  static const appCenterIOsSecret = '8a747517-190c-40e9-84cd-5620cf4ad6d7';
  static const appCenterAndroidSecret = '1f372149-8eee-4eaa-8105-610c753d72c1';
  static const appCenterIOsDist = '9ca5b51c-b363-4655-93b9-291246901a1f';
  static const appCenterAndroidDist = 'd8aab221-5f96-4fc4-8d2b-d69ae8efa5bb';

  static const sentryDnsBeta =
      'https://c8147acda83e4de98fc9b239d958f0b3@o381530.ingest.sentry.io/5557281';
  static const sentryDnsProd =
      'https://211e5700eaf94713a1308c6c7b273140@o381530.ingest.sentry.io/5557833';

  static const amplitudeApiKey = 'd96d63bb78e3de19567eae1b3d523cf5';
  static const etherscanApiKey = 'M4ECBHNAZA8DRPPF2FK19I1CZSR64PXFZU';

  static const defaultLanguage = 'en';
  static const defaultCurrency = 'USD';
  static const currencySymbol = '\u{0024}'; //ASCII 16 Hexadecimal $
  static final supportedCurrency = ['CNY', 'USD'];

  static const defaultMarket = 'MNT';
  static const defaultTradePair = 'MNT/USDT-TRC20';
  static const dexConfigVersion = 20210208;

  static const admissionUUID = '99757c2b210e4bd898dcf239b233e301';
  static const swapUUID = '4b19a2cabd0d4e859b02bc776af87d01';

  static const bridge_mnt =
      '1231kgws0rhjtfewv57jegfe5bp4dncax60szxk8f4y546jsfkap3t5ws';
  static const bridge_bsc = '0x0873093DEb492A6425d85906E2CE6E856BCDC71F';

  static const fiatPrecision = 2;
  static const dposAddress =
      '20m07m5nyy63ngawb76qhnts1xyfk9c3yc56sjv711vadnxq05m1gxy1t';

  static String get sentryDns => isBeta ? sentryDnsBeta : sentryDnsProd;

  static String get randomApiUrl {
    final random = math.Random();
    final randomIndex = random.nextInt(apiUrl.length);
    return apiUrl[randomIndex];
  }
}
