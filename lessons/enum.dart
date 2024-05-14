void main() {

  final customerMouse = Mouses.a4;

  print(Mouses.Logitech.name);

  //Kontroller için de kullanılabilir:
  if(customerMouse == Mouses.a4){}

  // switch (Mouses) {
  //   case Mouses.Magic:

  //   case Mouses.Logitech:

  //   case Mouses.Everest:

  //   case Mouses.Apple:

  //   case Mouses.a4:
  // }
}

enum Mouses { // içerisinde sayı, değişken, veri tutan sınıf.
  Magic,
  Logitech,
  Everest,
  Apple,
  a4,
}