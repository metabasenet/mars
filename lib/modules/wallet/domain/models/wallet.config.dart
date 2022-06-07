part of wallet_domain_module;

/// Chains that need to fetch Unspent data before make a transaction
const kChainsNeedUnspent = ['BTC', AppConstants.mnt_chain];

/// Chains that need lock refresh balance
const kChainsNeedLockBalance = ['ETH', 'TRX', 'BTC'];

// Chains where balance api return Unconfirmed balance
const kChainsHasUnconfirmedBalance = [AppConstants.mnt_chain];

class WalletConfigNetwork {
  static bool mnt = kDebugMode;
  static bool btc = false;
  static bool eth = false;
  static bool trx = false;

  static bool getTestNetByChain(String chain) {
    switch (chain) {
      case AppConstants.mnt_chain:
        return WalletConfigNetwork.mnt;
        break;
      case 'BTC':
        return WalletConfigNetwork.btc;
        break;
      case 'ETH':
        return WalletConfigNetwork.eth;
        break;
      case 'TRX':
        return WalletConfigNetwork.trx;
        break;
      default:
        return true;
    }
  }

  static void setTestNetByChain(String chain, {bool? value}) {
    switch (chain) {
      case AppConstants.mnt_chain:
        WalletConfigNetwork.mnt = value ?? false;
        break;
      case 'BTC':
        WalletConfigNetwork.btc = value ?? false;
        break;
      case 'ETH':
        WalletConfigNetwork.eth = value ?? false;
        break;
      case 'TRX':
        WalletConfigNetwork.trx = value ?? false;
        break;
      default:
    }
  }
}
