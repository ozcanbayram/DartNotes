void main(List<String> args) {
  String user = 'Ali';
  user.isAdmin(); //Bu şekilde String sınıfına bir özellik extend etmiş (eklemiş) olduk.
  print(user.isAdmin()); // --> user != admin, doalysıyla fasle dönecek.

}

extension StringUserCheckExtension on String{  
  // Bu şekilde String sınıfına bir özellik ekleyerek gerektiğinde toString() gibi kullanılabilecek bir metot yaratabiliriz.

  bool isAdmin(){
    return this.toLowerCase() == 'Admin';
  }

}