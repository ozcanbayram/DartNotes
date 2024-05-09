void main(List<String> args) {
  //musterinin parasi var mi yok mu kontrol eden metot
  
  int user1 = 0;
  int user2 = 5;
  int user3 = 10;

  controllUserMoney(user1,0);
  controllUserMoney(user2,5);
  controllUserMoney(user3,5);
}

void controllUserMoney(int money, int minimumValue){
  if (money>minimumValue){
    print('parasi var.');
  }
  else{
    print('parasi yok.');
  }
}