import 'dart:io';
class Kamar {
  // create list of kamar
  List<String?> kamarList = [];

  // aad kamar to list from input
  void addKamar(String? kamar) {
    kamarList.add(kamar);
  }
  // show kamar list
  void showKamar() {
    print('Kamar List:');
    for (var kamar in kamarList) {
      print(kamar);
    }
  }

}

void main() {
  Kamar kamar = new Kamar();
  // create input io 
  print('Enter kamar: ');
  // read input
  String? kamarInput = stdin.readLineSync();
  // add kamar to list
  kamar.addKamar(kamarInput);
  kamar.showKamar();


}
