void main() {
  int money = 5;

  money = money + 1;
  money += 1;
  money++;
  money--;

  String name = "uğur";
  String surName = "kılıç";
  print(name + surName);

  if (name == "uğur") {}
  if (name != "uğur") {}
  if (name.length > "uğur".length) {}
  if (name.length < "uğur".length) {}
  if (name.length >= "uğur".length) {}
  if (name.length <= "uğur".length) {}

  const int appleMoney = 20;
  const double discount = 2.5;
  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ discount);
  print(myMoney);

  // 11 / 2 kalan kaç? 1
  print(myMoney % 2 == 0);
  print(myMoney.isOdd);
}
