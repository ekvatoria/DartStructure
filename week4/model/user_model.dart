// adı olmak zorunda
// parası olmak zorunda
// yaşını vermeyebilir
// city vermeyebilir
// city yoksa istanbul say
// id değişkenine sadece bu sınıf içinden erişilebilsin
class User extends Object {
  // özellikleri neler
  late final String name;
  late int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  late final String _id;

  // fonksiyonel programlamada {int? age, String? city} değerler zorunlu değil.
  // İlle de vermek isteniyorsa age:, city: gibi map gibi verilebilir

  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    // city gelmezse İstanbul kabul et demek
    userCode = (city ?? "İstanbul") + name;
  }

  bool isSpecialUser(String id) {
    return _id == id;
  }

  // bool isEmptyId() {
  //   return _id.isEmpty;
  // }

  // computed value, çağırıldığında hesaplanır
  bool get isEmptyId => _id.isEmpty;
}
