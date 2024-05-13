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

  User user1 = User('Ozcan', 2000, age:21, city: 'İstanbul', id: '5'); // User sınıfından user1 nesnesini oluşturduk.
  if(user1.city == null){
    print('Kişi şehir verisini girmedi.');
  }else{
    if(user1.city == 'İstanbul'){
      print('İstanbullu müşterilere özel 100 tl indirim');
    }
  }

}

int? controlMoney(int? money) {
  if(money == null || money == 0){
    return null;
  }
}


//adı olmak zorunda
//parası olmak zorunda
//yaşını vermeyebilir
//city vermeyebilir 
//id degiskenine sadece bu sınıftan erisilebilsin (private)
class User{
  late final String name; //Late ile constructor esnasında yani daha sonra değer atanacağını belirtiriz.
  late final int money;
  late final int? age;
  late final String? city;

  late final String _id; //required --> bu veri gelmek zorunda.   Private yapmak için -> _id

  //Constructor
  User(String name, int money,{required String id, int? age, String? city}){
    this.name = name;
    this.money = money;
    this.age = age;
    _id =id;
    this.city = city;
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
  