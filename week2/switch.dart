void main() {
  final int classDegree = 45;
  bool isSuccess = false;

  // 2 ise ekrana bravo
  // 1 ise olur
  // 0 ise yeterli
  // diğer durumlarda başarısız

  const int successValueHigh = 2;

  // switch case if e göre daha performanslıdır!!
  switch (classDegree) {
    case successValueHigh:
      print("bravo");
      isSuccess = true;
      break;
    case 1:
      print("olur");
      isSuccess = true;
      break;
    case 0:
      print("yeterli");
      isSuccess = true;
      break;
    default:
      print("başarısız");
      isSuccess = false;
  }
  print("beyefendi çocuğunuzun sonucu: $isSuccess");

  // mağazaya gelen isimlerden veli olan olursda print bravo yaz
  const String name = "asdsd";

  const String specialUser1 = "veli";
  const String specialUser2 = "ekin";

  switch (name) {
    case "veli":
    case "ekin":
      print("bravo");
      break;
    default:
      print("sorunlu");
  }

  switch (name) {
    case specialUser1:
    case specialUser2:
      print("bravo");
      break;
    default:
      print("sorunlu");
  }
}
