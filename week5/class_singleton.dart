import 'model/product_config_model.dart';

void main(List<String> args) {
  final newProduct = Product.money;

  calculateMoney(Product.money ?? 0);

  // x
  productNameChange();

  // x
  calculateMoney(Product.money ?? 0);

  // user classımı kullanarak product yapmak istiyorum

  final user1 = User("veli", "aa");
  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);

  productNameChange();

  // api key neydi acaba?
  ProductConfig.instance.apiKey;
  ProductLazySingleton.instance;
}

void calculateMoney(int money) {
  if (money > 5) {
    print("5 TL daha ekledik");
    Product.incrementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  // bu classtan artık heryerden static ile money çağrılabilir.
  // static instance lar pşroje boyunca hayatta durur. Kill edilmediği sürece ayakta kalır.
  static int? money = 10;
  String name;
  Product(this.name);

  // opsiyonel olarak default parametre atmak
  Product.veli([this.name = "veli"]);

  // fabrika metodu, constructor geriye değer döndürmez,
  // geriye değer döndürmesini istiyorsak factory metodunu eklememiz gerekiyor
  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  // Java da magic number denir.
  static const companyName = "VB BANK";

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
    ;
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
