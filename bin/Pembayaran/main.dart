import 'dart:io';
import 'dart:core';

class myClass {
//   static int umur = 0;
//   static int no_telp = 0;
//   static int rawatinap = 0;
//   static int rawatjalan = 0;
}

void  main(List<String> args) {
  const registrationdate = "Senin 12 Desember 2021";
  final date = new DateTime.now();

  List<List> listPenyakit = [
    ['1','Anemia','Antibiotik','2000000'],
    ['2',' Demam','Paracetamol','100000'],
  ];

  print("--------------------------------------------------------------------------");
  print("-                           Hospital Cashier Payment                     -");
  print("-                              Disease price data                        -");
  print("--------------------------------------------------------------------------");
  print("--------------------------------------------------------------------------");
  print(" No. | Name Disease  | Medicine                    | Harga              ");
  print("--------------------------------------------------------------------------");
  for(var i = 0; i < listPenyakit.length; i++) {
    print(" ${i+1}.  | ${listPenyakit[i][1]}       | ${listPenyakit[i][2]}                  | Rp ${listPenyakit[i][3]}");
  }
  print("--------------------------------------------------------------------------");
  print("Enter the following data :");
  String? nomorPenyakit = stdin.readLineSync();
  String nmobat ='';
  for(var i = 0; i < listPenyakit.length; i++) {
    if(listPenyakit[i][0] == nomorPenyakit) {
      nmobat = listPenyakit[i][2];
    }
  }
  String harga = '';
  for(var i = 0; i < listPenyakit.length; i++) {
    if(listPenyakit[i][0] == nomorPenyakit) {
      print('The total price is :Rp. ${listPenyakit[i][3]}\n');
      harga = listPenyakit[i][3];
    }
  }

  if(nomorPenyakit != null){

  print("Enter the amount paid : Rp.");
  String? jumlahBayar = stdin.readLineSync();
  var kembalian = int.parse(jumlahBayar.toString()) - int.parse(harga);
  print("Return : Rp ${kembalian}\n");
  }

  //input data
  print("Enter Name : ");
  String? nama = stdin.readLineSync();
  
  print("\n----------------------------------------");
  print("-   Payment Note for taking medicine   -");
  print("----------------------------------------");
  print("Nama : ${nama}");
  print("Tanggal Sekarang : $date");
  print("Medicine name :  $nmobat"); 
  print("Total Pay : Rp. $harga ");
  print("----------------------------------------\n");
}

