import '../week4/model/user_model.dart';

void main(List<String> args) {
  final model = CarModel(
      category: CarModels.bmw,
      name: "bmw X5",
      money: 1412,
      isSecondHand: false);

  final carItems = [
    CarModel(
        category: CarModels.bmw,
        name: "bmw X5",
        money: 12,
        isSecondHand: false),
    CarModel(category: CarModels.toyota, name: "toyota X5", money: 45),
    CarModel(
        category: CarModels.yamaha,
        name: "yamaha X5",
        money: 44,
        isSecondHand: false),
    CarModel(category: CarModels.bmw, name: "bmw X5", money: 33),
    CarModel(
        category: CarModels.toyota,
        name: "toyota X5",
        money: 55,
        isSecondHand: false),
  ];

  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  final newCar = CarModel(category: CarModels.bmw, name: "bmw X5", money: 33);
  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print("elimizde var");
  } else {
    print("patron yok alalım");
  }

  final resultBmwMore20 = carItems
      .where(
          (element) => element.category == CarModels.bmw && element.money > 20)
      .join();
  print(resultBmwMore20);

  // map yapmak demek bundan yeni bir obje üretmek demektir. join içindeki virgül de aralarına virgül ekler
  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  // singleWhere de exception alınabilir eğer data yoksa bu koşulda try catch yazılarak hata atlatılır. Çok önemli!
  bool isHaveCarMercedes = false;
  try {
    final mercedesCar = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
    isHaveCarMercedes = true;
  } catch (e) {
    print("araba yok abi");
    isHaveCarMercedes = false;

    // try cactch sonrası finally ise karar verip mesajı döndürür. Finally her türlü senaryoda çalışır.
  } finally {
    print("abi bu işlem ağır oldu bir daha sorma $isHaveCarMercedes");
  }

  final index = carItems.indexOf(newCar);
  print(index);
  final _mercedes =
      CarModel(category: CarModels.mercedes, name: "Mercedes", money: 12312);

  carItems.add(
      CarModel(category: CarModels.mercedes, name: "Mercedes", money: 12312));
  // sort içinde first second ve compareto hight order function olarak geçer.
  // Sıralamalarda önceliği verip tersten veya düz olarak sıralama yapar.
  carItems.sort((first, second) => second.money.compareTo(first.money));

  print(carItems);

  final users = carItems.expand((element) => element.users).toList();
  calculateToUser([...carItems]);
  carItems.remove(_mercedes);
  carItems.removeWhere(
      (element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
}

void calculateToUser(List<CarModel> items) {
  // itemları düzelt bmw olanları yamaha yap

  final newItems = items.map((e) {
    if (e.category == CarModels.bmw) {
      e.category = CarModels.yamaha;
    }
    if (e.isSecondHand) {
      e.isSecondHand = false;
    }
    return e;
  });

  print(newItems);
}

// benim bir arabalar sınıfım olacak
// arabaların modeli , ismi, parası olacak şehri olmayacak, ikinci el durumu eğer müşteri söylemezse
// her ürün ikinci el kabul edilecek

// benim 5 tane arabam olacak bunlar gibi

// benim bu arabalarımın kaç tanesi ikinci el
// yeni bir araba geldi bu bizde var gibi hissediyorum doğru mu?

// bana bmw olan ve money 20 den büyük arabalarımızı söyler misin

// ya acaba sadece isimleri yan yana gösterir misin

// benim elimde mercedes var mı

// şu yeni gelen arabaya var demiştin kaçınmcı sırada söyler misin

// ya ben yeni araba aldım mercedes ekler misin

// bana arabalarımı küçükten büyüğe göre sıralar mısın

// ben bütün arabalarımı user yapacağım

// ya bu son ekleneni silelim
// bmw olan ve 30 dan düşük olanları silelim
class CarModel {
  CarModels category;
  final String name;
  final double money;

  List<User> users;
  String? city;
  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.users = const [],
    this.city,
    this.isSecondHand = true,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$name - $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
