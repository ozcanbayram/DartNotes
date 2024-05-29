void main() {
  Map<String,int> user = {
    'Ozcan':1, 'Ahmet':2, 'Mehmet':3, 'Ali':4, 'Serkan':5
  };
  print('GOSTERIM - 1');
  for(var item in user.keys){
    print('${item}  -  ${user.values} ');
  }
  print('');
  print('GOSTERIM - 2');
  for(var i=0; i<=user.length - 1; i++){
    print('${user.keys.elementAt(i)} - ${user.values.elementAt(i)}');
  }

  print('');
  print('');
  print('');

  //ben bir bankayim. musterilerimin birden fazla hesabi olabilir.
  //ahmet bey 3 hesabi var -> 100,300,200
  //mehmet bey 2 hesabi var -> 30,50
  //veli bey 1 hesabi var -> 30
  //hesaplari kontrol et herhangi bir hesapta 150 tlden fazla para varsa 'Krediniz hazir' yaz.

  Map<String,List<int>> bank = {
    'Ahmet':[100,300,200],
    'Mehmet':[30,50],
    'Veli':[30]
  };
  for(var i in bank.keys){
    //bankanin tum elemanlari
    for(var money in bank[i]!){
        //hesaplari dolasir
        if(money>150){
          print('$i -> Kredin hazır.');
          break;
        }
    }
  }

  print('');

  //musterilerin hesaplarındaki toplam para
  for(var name in bank.keys){
    int result = 0;
    for (var money in bank[name]!){
      result = result + money;
    }
    print('$name --> $result TL');
  }

}