class User2 {
  // özellikleri neler
  late final String name;

  // Enkapsüle etme başlangıç
  int _money;

  int get money => _money;

  set money(int? money) {
    _money = money == null ? 0 : money;
  }
  // Enkapsüle etme bitiş

  late final int? age;
  late final String? city;

  late final String userCode;

  User2(this.name, this._money, {this.age, this.city}) {
    userCode = (city ?? "İstanbul") + name;
  }
}

extension User2ControlExtension on User2 {
  void controlName() {
    print(name);
  }
}
