void main() {
  
}

//iplement ile extend arasındaki fark, abstract class'taki tüm özelliklerin aynısını bire bir kullanmak ve kopyalamak zorunda değiliz fakat iplement 
//kullandigimizda abstract class'taki ozellikleri bire bir  kullanmalıyız ve kopyalamalıyız.

abstract class IStudent{
  final String name; 
  final int age;

  int? school;

  void saysomething() {
    print(age);
  }

  IStudent(this.name, this.age);
}

class Student implements IStudent{ //IStudent sınıfı iplement ediltikten sonra içerisinde uygulamadığımız methotlar vara diye bizi uyarır. Hata verir. 
//iplement edilen sınıftaki metotlar bire bir uygulanmalıdır.
  final String name;
  final int age;

  Student(this.name, this.age);
  
  @override
  void saysomething() {
    // TODO: implement saysomething
  }
  
  @override
  int? school;
}

class Student2 implements IStudent {
  final String name;
  final int age;

  Student2(this.name, this.age);
  
  @override
  void saysomething() {
    // iplement edildikten sonra mecburi olarak eklememiz gereken metot. Bu metot, iplement edilen sınıfta oldugu için burada da olmalıdır. 
    // Bu metodu bu sınıfa uygun bir şekilde kullanabiliriz.
  }
  
  @override
  int? school;
  
}