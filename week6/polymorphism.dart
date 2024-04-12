void main(List<String> args) {
  IUser user = Turk();

  user.sayName();
  user = English();

  user.sayName();
}

// Polymorphism ortak interfacelerin ortak metodların farklı classların farklı anlamlarda işlerini yapmasıdır

abstract class IUser {
  final String name;
  IUser({
    required this.name,
  });
  void sayName() {}
}

class Turk implements IUser {
  @override
  String get name => "veli";

  @override
  void sayName() {
    print("merhaba kapıdan hoşgeldiniz $name");
    print("karnın aç mı?");
  }
}

class English implements IUser {
  @override
  String get name => "adam";

  @override
  void sayName() {
    print("wellcome to your home $name");
    print("let's meet our friends in Oxford");
  }
}

class German {}
