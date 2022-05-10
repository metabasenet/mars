part of asset_domain_module;

abstract class AssetDposCubit extends Cubit<List<Transaction>> {
  AssetDposCubit([AssetRepository repository]) : super([]) {
    assetRepository = repository ?? AssetRepository();
  }
  AssetRepository assetRepository;

  Future<int> loadAll();
}
