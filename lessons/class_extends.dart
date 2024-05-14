void main() {

  //Şimdi User sınıfından bir user oluşturalım ve abstaract class extend edildikten sonra doğru çalışıyor test edelim.
  final user1 = User('Cem', 1500);
  final user2 = BankUser('Ali', 2100, 205659);
  final user3 = SpecialUser('Kasım', 1800, 205875, 15);

  user1.sayMoneyWithCompanyName();
  user2.sayMoneyWithCompanyName();
  user3.sayMoneyWithCompanyName();
  print('Sn. ${user3.name} indirimli paranız: ${user3.calculateMoney}');
  print('Sn. ${user3.name} total paranız: ${user3.money}');
  
}

// Tüm müşterilerin bankanın ismi ile birlikte paralarını görebilmeleri isteniyor. 
// Bunu her sınıfta tek tek metotlar halinde yapabiliriz. Ama yeni bir güncellemeyi hepsinde değitirmemiz gerekir ve kod tekrarı ortaya çıkar.
// Böyle durumlarda soyut sınıf denilen abstract class yapısı kullanılır. Bu sınıf kullanılmak istediği class'a Extend edilmelidir. Böylelikle abstract class'ın özellikleri kullanılabilir.

abstract class IUser{

  //Tüm classlarda ortak olan name ve money özelliklerini ekleyelim.
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {//isim ve parayı yazdıran methot.
    print('$name - $money paran var.'); 
  }
}

class User extends IUser{  //IUser sınıfı extend edilerek özellikleri kullanılabilir hale geldi.
  final String name;
  final int money;

  //Aşağıdaki constructor, abstract class'a  money ve name özellikleri eklendikten sonra hata verir. Çünkü bu özellikleri abstract classtakilere taşımamız gerekir.
  //Bunun için super fonksiyonunu kullanırız. 
  User(this.name, this.money) : super(name,money);
}

class BankUser extends IUser{

  //Bu sınıfta name ve money özelliklerine ihtiyacımız yoktur. Çünlü zaten abstract class'tan bu özellikleri alabiliriz.
  //super methodu ile bu özellikleri taşıyabiliriz. 
  //Klasik sınıfımıza öncelikle IUser abstract class'ını extend edelim.
  //Daha sonra özellikleri abstract class'a taşımak için : super(name,money) kodunu constructor kısmına yazalım. 
  //Buraya kadar yapılanlarla sorunsuz çalışacaktır fakat name ve money özelliklerine artık gerek yoktur. 
  //final String name ve final String money özelliklerini silelim.
  //Sildikten sonra constructor hata verecektir bunun için:
  //this.name, this.money kodlarını silerek sadece tanımlama yapmak için String name ve int money özelliklerini tanımlayabiliriz.
  //Çalışıp çalışmadığını kontrol etmek için basit bir fonksiyonla yazdırma işlemi yapabiliriz.
  //Bu durumda abtract class, bir çok farklı sınıftaki ortak özellik ve metotları tek bir soyut sınıf üzerinden kontrol etmemizi saglar.

  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name,money);

  void bankSpecialLocig() {
    print(money);
  }
}

class SpecialUser extends IUser{
  final int bankingCode;
  late final int _disccount; //discount özel olsun ve 1 kere kullanılsın diye _discount şeklinde private olarak tanımlarız. 
  //late final ile daha sonra değer geleceğini belirtiriz. 
  //Ve aşağıda encapsule ederek başka yerde değiştirilebilmesini sağlarız.

  SpecialUser(String name, int money, this.bankingCode,  int disccount) : super(name, money){
    //_discount'un daha sonra degistirilebilmesi için this.discount yerine int discount ile public bir discount oluşturduk. 
    //Bu discount'un disari cikma izni oldugundan dolayi private olanı buna eşitleyerek degistirilmesini saglayabiliriz.
    _disccount = disccount; 
  }

  //indirimli fiyatı göstermek için:
  int get calculateMoney => money - (money ~/ _disccount); //property olmadiği için get ile yapabiliriz. ~ ile int bölme yapabiliriz.
}