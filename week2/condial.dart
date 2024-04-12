import '../week5/class_singleton.dart';

void main() {
  int money = 50;
  String userName = "uğur";

  // bool => 0, 1
  bool isCustomerRich = true;
  print("$money" + ' ' + userName);

  if (money > 10) {
    print("Sen zenginsin abi");
  } else {
    print("gerekirse simit yeriz");
  }

  money = money - 10;

  if (money > 10) {
    print("Sen çok zenginsin abi");
  } else {
    print("abi burada ne işin var");
  }

  //

  // müşteri bankaya gelir ve 10 Tl si vardır ve bir sorgu yapar
  // sorgu sonucu 20 tl si alınacak fakat eğer parası sorguya yeterliyse
  // eğer kalan parası sıfırdan küçükse bankadan kovulur
  // eğer diyor adamın parası banking costa yetmiyorsa bankaya almayın

  int newCustomerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > 5) {
    print("hoşgeldiniz beyefendi");
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print("beyefendi lütfen sıra alınız");
  } else {
    print("beyefendi kredinizi ödeyin");
  }

  // bir mağazaya isim verilecek
  // ve örnek isimler toplanır
  // örnek isimler: ahmet, mehmet, veli, kx, x
  // mağaza der kji ben sadece karakter uzunluğu iki veya daha altı olanları görmek istiyorum
  // mağazada bu koşula uyanları yan yana görmek istiyorum aralarında boşluk olacak

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompany = "kx";
  final String xCompany = "x";

  const int companyLength = 6;
  String result = "";

  if (ahmetCompany.length > companyLength) {
    result = result + ahmetCompany;
  }
  if (mehmetCompany.length > companyLength) {
    result = result + mehmetCompany;
  }
  if (veliCompany.length > companyLength) {
    result = result + veliCompany;
  }
  if (kxCompany.length > companyLength) {
    result = result + kxCompany;
  }
  if (xCompany.length > companyLength) {
    result += kxCompany;
  }

  // if (result.length <= 0) {
  if (result.isEmpty) {
    print("patron bulamadık");
  } else {
    print(result);
  }
}
