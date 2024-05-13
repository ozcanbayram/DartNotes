
//adı olmak zorunda
//parası olmak zorunda
//yaşını vermeyebilir
//city vermeyebilir 
//id degiskenine sadece bu sınıftan erisilebilsin (private)
class User{
  late final String name; //Late ile constructor esnasında yani daha sonra değer atanacağını belirtiriz.
  late int _money; //private olan money değerinin daha sonra değişebilmesi için aşağıda get ve set ile encapsule edelim.

  int get money => _money; // computed bir value tanımlıyor ve bununla money'i geri döndürüyor.
  set money(int money){//burada money'i set edebilir ve üzerinde işlemler yapabilriz. Private olmasına rağmen başka bir sayfada değerini değiştirebiliriz.

  //buraya istediğimiz kontrolleri ekleyebiliriz örneğin null kontrolu yapalım:
  // if(money == null || money < 0){
  //   return;
  // } else{
  //   _money = money;
  // }

  //bu kontrolü daha kısa da yapabiliriz. Yukarıdaki kontrol kodlarını yorum satırı yapıp arasındaki farkı görelim.
  _money = money == null ? 0 : money; // --> _money'i money'e eşitle. Bu değer bize diğer sayfadan gelecek. Eğer null ise 0'a eşitle değilse money'e eşitle 
    
  }

  late final int? age;
  late final String? city;

  late final String _id; //required --> bu veri gelmek zorunda.   Private yapmak için -> _id

  //Constructor
  User(String name, int money,{required String id, int? age, String? city}){
    this.name = name;
    this._money = money;
    this.age = age;
    _id =id;
    this.city = city;
  }

  //id ye diğer yerlerden bizim kontrolümüzde erişilmesini istiyorsak bunu bir metot ile sağlayabiliriz. Encapsule olmuş değişkene erişim izni verebiliriz.
  bool isSpecialUser(String id) {
    return _id == id; //Private olan _id yi id ye eşitleyerek kullanılmasına izin verilen id üzerinde işlem yapılmasına güvenli bir şekilde izin verdik.
  }

  // bool isEmpty() { //Bu metot id nin boş olup olmasığını döndürür. Bunu daha az kodla yazabiliriz. Aşağıda...
  //   return _id.isEmpty;
  // }

  bool get isEmptyId => _id.isEmpty; // Get ile  computed value olur.
  //Computed value: Hesaplanan değer, diğer reaktif veri kaynaklarının değerlerine göre otomatik olarak hesaplanan ve güncellenen bir değerdir.
  //Yani bu değer çağrıldığında her defasında hesaplanır ve değer döndürür.

}
