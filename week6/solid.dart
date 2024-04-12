void main(List<String> args) {
  IDatabase database = SQL();

  database = Mongo();
  database.write();
}

// Solid: S (Single Responsibility)

class UserManager {
  String name;
  UserManager({
    required this.name,
  });

  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;
  UserLocalization({
    required this.manager,
  });
  void updateNameAndLocalization() {
    manager.changeUserName("u");
    changeLocalization();
  }

  void changeLocalization() {
    print("object");
  }
}

// Solid: O (Open Closed)

class Product {
  final String name;
  final String money;
  Product({
    required this.name,
    required this.money,
  });
}

// alt dallardan üst dallara dokunmadan kullanmak
class ProductCategories extends Product {
  ProductCategories({required super.name, required super.money});

  final String category = "asdf";
}

// Solid: L (Liskow - Sen bir class yapıyorsan bu class her zaman alt dallardan üst dallara eşitlenebilir)

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {}
}

class Mongo extends IDatabase {
  @override
  void write() {}
}

// Solid: I (Interfacelerin parçalanması)

abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

mixin IUserLocation {
  void locationChange();
}

mixin ILanguage {
  void language();
}

class UserLocation implements IUserLocation {
  @override
  void locationChange() {}
}

// Solid: D

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IPhoneCameraReader iPhoneCameraReader;
  DeviceCameraManager({
    required this.iPhoneCameraReader,
  });
  @override
  void readQR() {}
}

class IPhoneCameraReader extends ICameraManager {
  @override
  void readQR() {}
}
