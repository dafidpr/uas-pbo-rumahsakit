import 'dart:io';
import 'dart:core';

void  main(List<String> args) {
  final date = new DateTime.now();
  const bdate = "kamis, 14 januari 2022";

  List<List> listPenyakit = [
    ['1','Anemia','Antibiotik','2000000','3–6 mg/kg,3 times a day'],
    ['2',' Demam','Paracetamol','100000','0–15 mg/kg,not 4–6 hours'],
    ['3',' Tipes','Antibiotik','144000','20–90 mg/kgBW per day'],
    ['4','Difteri','Antibiotik','180000','25–75 mg/kgBW per day'],
  ];

  print("--------------------------------------------------------------------------");
  print("-                           Hospital Cashier Payment                     -");
  print("-                              Disease price data                        -");
  print("--------------------------------------------------------------------------");
  print("--------------------------------------------------------------------------");
  print(" No. | Name Disease  | Medicine     | Harga      | Usage Rules            ");
  print("--------------------------------------------------------------------------");
  for(var i = 0; i < listPenyakit.length; i++) {
    print(" ${i+1}.  | ${listPenyakit[i][1]}       | ${listPenyakit[i][2]}    | Rp ${listPenyakit[i][3]}  | ${listPenyakit[i][4]} ");
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
  print("Enter Address : ");
  String? alamat = stdin.readLineSync();

  
  print("\n----------------------------------------------");
  print("-        Payment Note for taking medicine      -");
  print("------------------------------------------------");
  print("Nama             : ${nama}");
  print("Address          : $alamat");
  print("registration date: $bdate");
  print("Date now         : $date");
  print("Medicine name    : $nmobat"); 
  print("Total Pay        : Rp. $harga");
  print("----------------------------------------\n");
}

