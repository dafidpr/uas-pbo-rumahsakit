import 'dart:io';
import 'dart:convert';
import 'dart:core';

// class myClass {
//   final String nama ;
//   static String nama_obat = 0;
//   static int umur = 0;
//   static int no_telp = 0;
//   static int harga = 0;
//   static int totalbayar =0; 
//   static int totalharga = 0;
//   static int rawatinap = 0;
//   static int rawatjalan = 0;
// }

void  main(List<String> args) {

  List<List> listPenyakit = [
    ['1', 'Anemia','Antibiotik dan Immunosupresan', '2000000'],
    ['2', 'Demam','Paracetamol', '100000'],
  ];

  print("-----------------------------------------------");
  print("-            Hospital Cashier Payment         -");
  print("-               Disease price data            -");
  print("-----------------------------------------------");
  print("-----------------------------------------------");
  print("- No. Name Disease  Medicine    Harga     -");
  print("-----------------------------------------------");
  for(var i = 0; i < listPenyakit.length; i++) {
    print("${i+1}. ${listPenyakit[i][1]} ${listPenyakit[i][2]} Rp ${listPenyakit[i][3]}");
  }
  print("-----------------------------------------------");
  print("Enter the following data :");
  String? nomorPenyakit = stdin.readLineSync();
  String harga = '';
  for(var i = 0; i < listPenyakit.length; i++) {
    if(listPenyakit[i][0] == nomorPenyakit) {
      print('Total harganya adalah : ${listPenyakit[i][3]}');
      harga = listPenyakit[i][3];
    }
  }

  if(nomorPenyakit != null){

  print("Masukan jumlah bayar : ");
  String? jumlahBayar = stdin.readLineSync();
  var kembalian = int.parse(jumlahBayar.toString()) - int.parse(harga);
  print("Kembalian : Rp ${kembalian}");
  }

  // print("Enter Name : ");

  // print("Enter Length of Stay : ");

  print("Total Pay = Rp ");
  print("_____________________________");
  
  print("----------------------------------------");
  print("- Payment Note for taking medicine -");
  print("----------------------------------------");
  print("Medicine name : "); 
  print("Harga Obat : Rp" );
  print("Lama Menginap : ");
  print("Total Harga : Rp");
  print("Total Bayar = Rp");
  print("_____________________________");
}

