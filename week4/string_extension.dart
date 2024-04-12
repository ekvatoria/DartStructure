void main(List<String> args) {
  if ("ali".isAdmin()) {
    print("object");
  }
  ;

  String? name;

  name.isAdmin();
}

// gelmezse boş kabul et
extension StringUserCheckExtension on String? {
  bool isAdmin() {
    // tolowercase her taraftaki hardleri küçültür. Böylece eşitlik sağlanır ve kontrol edilebilir.
    return (this ?? '').toLowerCase() == "admin".toLowerCase();
  }
}
