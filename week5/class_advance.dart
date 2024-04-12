void main(List<String> args) {
  final user = _User("veli", age: 21);

  // müşterinin yaşı 18 den küçük kontrolü yapar mısın?
  // if ((user.age ?? 0) < 18) {}

  // yaşı sayı mı null mı konrtolü is int olarak veriliyor
  if (user.age is! int) {
    if (user.age! < 18) {
      print("evet küçük");
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  // kullanıcılarımın parası var ama paranın tipi değişken olabilir
  // parası olan adamın o parametresi bir isim de olabilir değer de olabilir
  // tr yazacak ya da orada 15 yazabilir
  // ekranda göster

  final _newType = user.moneyType is String ? (user.moneyType as String) : "";
  print(_newType + "A");

  //---------
  int money1 = 50;
  int money2 = 50;

  if (money1 == money2) {
    print("ok");
  }

  final moneyBank1 = Bank(40, '12');
  final moneyBank2 = Bank(30, '12');

  print(moneyBank1 == moneyBank2);

  // müşteri banka sınıfından iki kişinin parasını toplayıp sonucusnu bana söyler misin
  //
  print(moneyBank1 + moneyBank2);

  // benim bankama gelen müşterilerimin id si aynı olanlar aynı müşteri olmalıdır
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  // diğer bankadan bir modül aldık bunu ekleyip müşterinin parasını sorgular mısın

  // müşteri adamın parasına 10 tl ekle ekranda yazdır. Adamın id sini 1 arttır sonrasında ismini veli yap

  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName("veli");
  print(moneyBank1);
}

class _User {
  final String name;
  int? age;

  // String moneyType = "TR";
  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(
    this.money,
    this.id,
  );

  //class içinde operator tanımlayarak 2 classın arasında işleme izin verir
  int operator +(Bank newbank) {
    return this.money + newbank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  // aşırı yükleme demek, custom yapabilirsin.

  @override
  String toString() {
    return super.toString() + "veli";
  }

  //eşitliğin kontrolü yapılıyor. Obje bankaysa ve id ler eşitrse eşittir sözdizimini anlatıyor
  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  void sayBAnkHello() {
    calculateMoney(money);
  }
}

// mixinlerin genel amacı bir metodun belli bir işi yapması. Birden fazla durum varsa çalıştırılabilir. Polimorfizim.
// database in birden fazla anlamlşarı varsa kullanılabilir
mixin BankMixin {
  void sayBAnkHello();
  void calculateMoney(int money) {
    print("money");
  }
}
