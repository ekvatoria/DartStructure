void main() {
  // müsterinin adını tut
  // müşterinin parasını öğren
  // müşteriye merhjaba diyip parasını söyle
  // bizim bankaya geldiği için parasına +5 TL ekle
  // ya acaba 10 yapabilir miyiz

  print("Merhaba" + '${25 + 5}');

  int userMoney = 25;
  String userName = "Uğur";
  userMoney = userMoney + 5;

  print("Merhaba $userName" + ' ' + "$userMoney");

  print("----------");
  userMoney = userMoney - 10;
  print("Paranız değer kaybetti $userMoney");

  userMoney = userMoney + 5;
  userMoney += 5;

  // tilda control n
  userMoney = userMoney ~/ 2;

  double ahmetMoney = 15.2;

  ahmetMoney = ahmetMoney / 2;
  print("ahmet bey paranız uçtu $ahmetMoney");
  print("uğur bey paranız uçtu $userMoney");
}


  // yeni bir user adı oluştur
  // yeni bir para ver
  // bu parayı 20 ye böl ve ekranda göster