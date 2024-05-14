import 'model/user_model.dart';

void main() {

  //null
  int? money;
  if(money != null){
    print(money+10);
  }

  // bankaya 3 tane musteri gelecek birinin 100 tlsi var birinin hesabi yok bir diğerinin 0 tlsi var
  // hesabi olmayana gelin hesap acalim, parai olmayanı kov, 100 tlsi olana hosgeldin de

  //yeni bir meyhod olsun hesabı olmayanlar ve parası olmayanlar yok sayılsın
  List<int?> customersMoney = [100,null,0];

  for (var item in customersMoney) {
      if(item != null){
        if(item <= 0){
          print('Kovuldun.');
        }
        else{
          print('Hoşgeldiniz.');
        }
      } 
      else{
        print('Gelin size hesap açalım.');
      }

      bool result = controlMoney(item) == null ? false : true; //parası olmayanlar ve hesabı olmayanlar için null yani false döner.
      print(result);   
  } 

  print('--------------');

  //class kullanimi:

  User user1 = User('Ozcan', 2000, age:21, city: 'İstanbul', id: '12'); // User sınıfından user1 nesnesini oluşturduk.
  if(user1.city == null){
    print('Kişi şehir verisini girmedi.');
  }else{
    if(user1.city == 'İstanbul'){
      print('İstanbullu müşterilere özel 100 tl indirim');
    }
  }


  //user_model den gelen id ye göre idsi 12 olana indirim yap
  if(user1.isSpecialUser('12')){
    print('indirim yapildi');
    user1.isEmptyId;
  }

  print(user1.toString()); // instanve of 'User' çıktısını verir. Yani User sınıfından bir nesne oluşturulduğunu belirtir.
  //Bu da bu anlama gelir: Bütün nesneler görünmese de başka bir elemandan türer, bir objedir. Extend edilmiştir ve kullanılır.

}

int? controlMoney(int? money) {
  if(money == null || money == 0){
    return null;
  }
}



//Bir diğer tanımlama
class User1{
  late final String name; //Late ile constructor esnasında yani daha sonra değer atanacağını belirtiriz.
  late final int money;
  late final int? age;
  late final String? city;

  //Constructor
  User1(this.name,this.money,{this.age,this.city});
}
  