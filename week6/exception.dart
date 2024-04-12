void main(List<String> args) {
  String? userName = "a";

  if (userName.length > 2) {
    print("a");
  } else {
    throw UserNameException();
  }

  // try {
  //   if (userName!.length > 2) {
  //     print("a");
  //   }
  // } catch (e) {
  //   print(e);
  // }
}

class UserNameException implements Exception {
  @override
  String toString() {
    return 'username null girmişsin bunu düzelt';
  }
}
