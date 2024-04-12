import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main() {
  // müşteri adı var, parası var, yaşı var vb.

  final int CustomerMoney = 50;
  final String customerName = "veli";
  final int customerAge = 13;
  final String customerCity = "Ardahan";

  // bu müşterinin yaşı 10 büyükse bir işlem yapalım

  controlCustomerAge(CustomerMoney);

  // if (customerAge > 10) {
  //   print("alışveriş yapabilirsiniz");
  // } else {
  //   print("alışveri yapamayız");
  // }

  // yeni müşteri geliyor yine aynı alanlar
  final int CustomerMoney2 = 50;
  final String customerName2 = "veli";
  final int customerAge2 = 13;
  final String customerCity2 = "asd";

  controlCustomerAge(CustomerMoney2);

  // unutmuşuz müşterilerin şehirleri

  // ------

  // ya ben bu müşterileri gruplasam, yani bir kümelesem ve bunlar aynı şekilde bana gösterilse

  // int? demek null gelebilir demek!
  int? newMoney;
  // ignore: unnecessary_null_comparison
  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }

  // müşteri diyor ki ya bak bizim bir servisimiz var paraları veren eğer bir cevap gelmezse sen ana değer olarak 10 ata
  // print(newMoney! + 10);
  // print(newMoney + 10);

  // bankaya 3 tane müşteri gelir birinin 10 tl si var diğerinin hesabı hiç yok diğerinin 0 tl si var
  // hesabı olmayana gelin hesap açalım 0 tl si olanı kov, 100 tl si olana müşteri hoşgeldin

  // yeni bir metod olsun bu metodda hesabı olmayanları ve parası olmayanları yok sayalım
  // para verdiklerimizi ekranda true yazalım

  //listede int? hesabı olmayan kayıtlar için yapılmalıdır null gelebilir.
  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print("beyefendi");
      } else {
        print("byy");
      }
    } else {
      print("haydi hesap açalım");
    }

    // ------ conditional expression
    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }

  print("-----------" * 10);

  int customerMoney = 15;
  User user1 = User("vb", 15, age: 21, city: "aa", id: '');
  // User user2 = User("vb", 15, null, null);

  final user3 = User("aa", 150, age: 13, id: '12');

  print(user1.name);

  // müşteri son gelen kişinin city sine göre kampanya yapacak eğer İstanbul ise

  if (user3.city == null) {
    print("Müşteri şehir bilgisini vermemiş");
  } else {
    if (user3.city!.isEmpty) {
      print("okok");
    }

    if (user3.city == "İstanbul") {
      print("Tebrikler kazandınız");
    }
  }
  print(user3.userCode);

  // müşteri id si 12 olana indirim yap
  if (user3.isSpecialUser("12")) {
    user3.money += 5;
    print("para eklendi");
  }

  //

  User2 newUser2 = User2("vb", 15);
  newUser2.money += 5;
  newUser2.money = null;

  print(newUser2.toString());
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }
  return null;
  // if (money == null || money == 0) {
  // return null;
  // }
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print("alışveriş yapabilirsiniz");
  } else {
    print("alışveri yapamayız");
  }
}
