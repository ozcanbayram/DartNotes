void main(List<String> args) {
  //Senaryo: bir magazaya isim verilecek.
  //ornek isimler: ahmet, mehmet, veli, kx, j
  //karakter uzunlugu sadece 2 veya daha az olanlar gösterilecek

  final String ahmetC = 'Ahmet';
  final String mehmetC = 'Mehmet';
  final String veliC = 'Veli';
  final String kxC = 'Kx';
  final String xC = 'X';

  int ahmetCL = ahmetC.length;
  int mehmetCL = mehmetC.length;
  int veliCL = veliC.length;
  int kxCL = kxC.length;
  int xCL = xC.length;

  if(ahmetCL<=2){print(ahmetC);}
  if(mehmetCL <=2 ){print(mehmetC);}
  if( veliCL <=2 ){print(veliC);}
  if(  kxCL <=2  ){print(kxC);}
  if(  xCL <=2  ){print(xC);}
}