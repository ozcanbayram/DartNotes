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


  //Extension ile kazandırılan özellik:
  if(customerMouse.isCheckedName('a4')){print('aaa');}


}

enum Mouses { // içerisinde sayı, değişken, veri tutan sınıf.
  Magic,
  Logitech,
  Everest,
  Apple,
  a4,
}

extension MousesSelectedExtension on Mouses{  //Bu şekilde normalde enum'a katamayacağımız özellikleri extend ederek katabiliriz.

bool isCheckedName(String name){
  return this.name == name;  // this.name --> enum'un name'i - name --> kullanıcıdan gelen name'i kontol eder. 
  //bu örnekte olduğu gibi bazı özellikleri enum ya da class'lara extension ile ekleyebilriz.
}

}