void main() {
// benim bir müşterim var parası var mı yok mu kontrol eder misin?

  final int userMoney = 0;
  controlUserMoney(userMoney, 0);
  // if (userMoney > 5) {
  //   print("parası var");
  // } else {
  //   print("parası yok");
  // }

  // benim bir müşterim daha geldi onada bakar mısın?
  final int user2Money = 5;
  controlUserMoney(user2Money, 5);

  // if (user2Money > 5) {
  //   print("parası var");
  // } else {
  //   print("parası yok");
  // }

  // ya acaba 0 değilde en azından bir 5 tl si olsun

  // yeni müşteri gelir parası 50 tl
  // parasını dolar yapmak istiyor ve kaç dolar yaptığını merak ediyor

  final newUserMoney = 50;
  print(newUserMoney / 13);

  int result = convertToDolar(newUserMoney);
  print(result);
  if (result > 0) {}

  // bana bir dolar hesaplama yap eğer ben sana söylemezsem yeni bir durum var diye her zaman 13 al

  final newResult = convertToStandartDolar(100, dolarIndex: 13);
  final newResult2 = convertToStandartDolar(100);
  final newResult3 = convertToEuro(userMoney: 500);
  sayHello("aa");
}

void controlUserMoney(int money, int minimumValue) {
  if (money > minimumValue) {
    print("para var");
  } else {
    print("para yok");
  }
}

int convertToDolar(int userMoney) {
  return userMoney ~/ 13;
  // print(userMoney / 13);
}

int convertToStandartDolar(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

// fonksiyonel programlama
int convertToEuro({required int userMoney, int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

String sayHello(String name) {
  return "hello $name";
}
