void main() {
  final String userName = "uğur";

  //kodu sabitler ve final verildiğinde değiştirilemez
  //final init state te değerini alır ve değiştirilemez
  final int bankMoney = 100;
  //constant uygulama ayağa kalkarken kesinlikle sabit kalır
  const String bankName = "UK Bank";

  var userName2 = "uğur2";
  var userName2Money = 15;

  userName2Money -= 10;

  // bankMoney = bankMoney + 10;

  // userName = "";

  // bankName = "";

  // --------
  // Bank name = "UK BANK"
  // bank user 1 = "bank1musteri"
  // bank yser 1 in parası 100.00
  // bank1 müşteriye kimse dokunamaz!
  // yeni bir müşteri gelercek adı bank2musteri
  // yeni bankaya gelenden bu bank user1 parasını çıkarıp ekrana gösterelim

  // came case , kebap case, upper case
  //kirmizi araba kirmiziAraba KirmiziAraba (pascal case), KIRMIZI_ARABA (upper case)

  const String bankNameSpecial = "UK Bank";
  final String user1 = "Bank 1 müşteri";
  const double user1Money = 100.00;

  const String user2 = "Bank 2 müşteri";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("user 2 money: $user2Money");

  // odev2
  // benim bir halı saham var 100 kişi kapasiteli
  // saat 10'da 20 kişilik bir musteri1 maç yapacak ve 20 kişi kesin gelecek
  // saat 10'da  musteri2 gelip bana 50 kişilik yer ayırtacak
  // bu işlem sonrasında benim halı saha kapasitem kaç kalmıştır

  // HINT
  // int sum = musteri1 + musteri2
  // printtotal(const) - sum
}
