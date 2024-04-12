void main(List<String> args) {
  final customerMouse = Mouses.a4;

  print(customerMouse.index);
  print(customerMouse.name);

  if (customerMouse == Mouses.a4) {}
  if (customerMouse.name == "a4") {}

  if (customerMouse.isCheckName("a4")) {
    print("object");
  }

  switch (customerMouse) {
    case Mouses.magic:
    case Mouses.apple:
    case Mouses.logitech:
    case Mouses.a4:
  }
}

//enum demek sınıflandırma demek
enum Mouses { magic, apple, logitech, a4 }

extension MousesSelectedExtension on Mouses {
  bool isCheckName(String name) {
    // ilki enum ın ikinci checkName in
    return this.name == name;
  }
}
