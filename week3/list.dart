void main() {
  // bir bankaya 10 müşteri gelir bunların 100 tl si 110 tl si 50 tl si vardır

  final int money1 = 100;
  final int money2 = 110;

  // 100 büyük olanlara hoşgeldiniz beyefendi

  if (money1 > 100) {
    print("beyefendi");
  }

  if (money2 > 100) {
    print("aa");
  }

  String name = '';

  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300];

  print('müşteri 1 parası: ${moneys[0]}');

  // paraları parası büyük olana göre

  moneys.sort();
  //add özelliği en sona ekler indexte
  moneys.add(15);
  // insert özelliği index sırası verilip değer verilerek eklenir
  moneys.insert(2, 300);
  //moneys.reversed.toList().add(25);
  moneys.insert(0, 5);
  print(moneys);

  //newMoneys = [];
  newMoneys.add(5);
  newMoneys.clear();

  print(newMoneys);
  // toList deyince mevcut listeye  dokunmadan yeni bir liste oluşturulur
  // newMoneys.reversed.toList();

  // 100 tane müşteri yap bunların hepsine sıra ile numarasına göre 5 TL ekle

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  // Customers 100  30 40 60
  // 35 TL den büyük olanları burada kredi verebiliriz yaz
  // küçük olanlara bye yaz

  List<int> moneyCustomerNews = [100, 30, 40, 60, -5];
  // listeyi küçükten büyüğe sırala
  moneyCustomerNews.sort();

  print("--------");
  // for (int i = 0; i < moneyCustomerNews.length; i = i + 1) {
  for (int i = moneyCustomerNews.length - 1; i >= 0; i += -1) {
    print("müşteri parası: ${moneyCustomerNews[i]}");
    if (moneyCustomerNews[i] > 35) {
      print("kredi hazır");
    } else if (moneyCustomerNews[i] > 0) {
      print("kredi veremeyiz ama bi bakalım");
    } else {
      print("bye");
    }
  }

  print("aaaaaa");
  List<dynamic> users = [1, "a", true];
  for (var item in users) {
    print(item);
  }

  print("-------");
  List<String> userNames = ["ali", "mehmet", "ayşe"];

  userNames.contains("veli");

  for (var item in userNames) {
    if (item == "veli") {
      print("var");
    } else {
      print("yok");
    }
  }
}
