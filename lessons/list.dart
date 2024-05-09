void main() {
  List<int> moneys = [300,100,200,400,500];
  final List<int> newMoneys = [300,100,200,400,500];
  print('Birinci musterinin parasi: ${moneys[0]}');

  moneys.add(600); //Listeye ekleme yapmak.

  print(moneys); //Listeyi yazdirir.

  moneys.sort(); //Listeyi küçükten buyuge sıralar.
  print(moneys); 

  moneys.insert(1, 150); // 1. indexe 150 yazdırır.
  print(moneys);

  newMoneys.reversed.toList(); // newMoney listesini tersine çevirerek yeni liste oluşturur. Listenin kendisine karışmaz.

  //ORNEK: 100 tane müşteri yap, bunların hepsine sıra ile numarasına göre 5 tl ekle:
  List<int> customerMoney = List.generate(100, (index) {
    return index + 5;
    // generate metodu ile 100 elemanlı bir dizi oluşturduk ve indexlerine istediğimiz işlemi yaptık.
  },);
  print(customerMoney);

  //customers: 100,30,40,60.
  //35 tlden buyuk olanlar için kredi verilebilir yaz.
  //kucuk olanlar için kredi verilemez yaz.

  List<int> moneyCustomerNew = [100,30,40,60];
  for (int i=0; i<=moneyCustomerNew.length - 1; i++){
    print('Musterinin parasi = ${moneyCustomerNew[i]}');
    if(moneyCustomerNew[i]>=35){
      print('Kredi verilebilir');
      print(' ');
    }
    else{
      print('Kredi verilemez');
      print(' ');
    }
  }

}