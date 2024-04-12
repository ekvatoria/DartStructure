void main() {
  // müşteri geldi adı ahmet parası 20

  Map<String, int> users = {"ahmet": 20, "mehmet": 30};

  // ahmetin ne kadar parası var?
  print("ahmetin parası ${users["ahmet"]}");

  // müşteri kimler var senin elinde
  for (var item in users.keys) {
    print("${item} - ${users[item]}");
  }

  for (var i = 0; i < users.length; i++) {
    print("${users.keys.elementAt(i)} - ${users.values.elementAt(i)}");
  }

  // ben bir bankayım, müşterilerimin birden fazla hesabnı olabilir
  // ahmet bey 3 hesabı var sırasıyla 100, 300, 200
  // mehmet bey 2 hesabı var 30 50
  // veli bey 1 hesabı var 30

  // adamların hesaplarını kontrol et herhangi bir hesapta 150 tl den fazla olan varsa krediniz hazır de

  print("--------");

  final Map<String, List<int>> vbBank = {
    "ahmet": [100, 300, 200]
  };
  vbBank["mehmet"] = [30, 50];
  vbBank["veli"] = [30];

  for (var item in vbBank.keys) {
    //bankanın tüm elemanları

    for (var money in vbBank[item]!) {
      // userın hesaplarını dolaşıyorum

      if (money > 150) {
        print("kredin hazır");
        //çoklama varsa for u sonlandırmak için return yaz!!! ama programı sonlandırır
        // return;
        break;
      }
    }
  }

  // bankadaki müşterilerin hesaplarının toplam meblasını merak ediyorum

  for (var name in vbBank.keys) {
    //vbBank[item]! ---> müşterinin hesapları demek
    int result = 0;
    for (var money in vbBank[name]!) {
      result = result + money;
    }
    print("$name senin toplam paran --> $result");
  }
}
