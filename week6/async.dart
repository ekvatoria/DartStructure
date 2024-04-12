Future<void> main(List<String> args) async {
  print("a");
  // 5 sn bekle sonra gel ve hiçbir müşteri aldırma
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = addDataBankMoney(55, 3);
  // bankMoneys.listen((event) {
  //   print(event);
  // });

  print(await bankMoneys.where((event) => event == 258).toList());

  // // başında await tagı varsa sırasıyla işlemi yapar yoksa senkron çalışır
  // await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print("işlem bitti $element");
  // });
  // // await Future.delayed(Duration(seconds: 2));
  // print("ab");

  print("hello");
  Future.delayed(Duration(seconds: 1)).whenComplete(
    () {
      print("hello2");
    },
  );
  print("hello3");
  Future.delayed(Duration(seconds: 2)).whenComplete(
    () {
      print("hello4");
    },
  );
//   çıktısı duration 0 olunca eventloop ta ilk önce future olmayanlar sonra kod sırasına göre olanlar çalışıyor
//   hello
//   hello3
//   hello2
//   hello4
}

// bir servise cevap sonradan gelecek
// matematik zaman alacak

// senkron - sync

Stream<int> addDataBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
    yield 5;
  }
}
