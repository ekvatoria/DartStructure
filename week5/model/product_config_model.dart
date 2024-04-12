// ApiKey gibi değişmemesi gereken değer varsa class._() olarak kullanılır. ERişilebilir ancak değiştirilemez.
// EAGER singleton
class ProductConfig {
  static final ProductConfig instance = ProductConfig._("a");

  final String apiKey;

  ProductConfig._(this.apiKey);
}

// LAZY singleton
class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance {
    if (_instance == null) _instance = ProductLazySingleton._init();
    return _instance!;
  }

  ProductLazySingleton._init();
}
