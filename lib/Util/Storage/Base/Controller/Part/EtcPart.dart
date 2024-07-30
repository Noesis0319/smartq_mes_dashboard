part of '../Controller.dart';

extension EtcShared on StorageController {
  ///set
  void setSeedColorValue({
    required int seedColorValue,
    StorageType? storageType,
  }) {
    setData(
        sharedRoute: StorageRoute.None,
        sharedKey: StorageKey.ThemeSeedColor,
        value: seedColorValue,
        storageType: storageType);
  }

  ///get
  Future<int?> getSeedColorValue({
    StorageType? storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.None,
      storageKey: StorageKey.ThemeSeedColor,
      primitiveType: PrimitiveType.Int,
      storageType: storageType,
    );
  }

  ///remove
  // void removeSeedColorValue() {
  //   removeShared(sharedRoute: SharedRoute.none, sharedKey: SharedKey.themeSeedColor);
  // }
}
