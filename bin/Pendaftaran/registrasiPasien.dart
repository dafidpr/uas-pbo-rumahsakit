import 'dart:io';

class regristrasiPasien {
  String? NIK;
  String? nama;
  String? alamat;
  String? poliTujuan;
  List<List<String?>> listPasien = [];
  List<String?> pasien = [];

  regristrasiPasien(
      String? nik, String? nama, String? alamat, String? poliTujuan) {
    this.pasien.add(nik);
    this.pasien.add(nama);
    this.pasien.add(alamat);
    this.pasien.add(poliTujuan);
    this.listPasien.add(pasien);
  }

  void printOfList() {
    for (var i = 0; i < this.listPasien.length; i++) {
      print("NIK : ${this.listPasien[i][0]} \n "
          "Nama :  ${this.listPasien[i][1]} \n"
          "Alamat : ${this.listPasien[i][2]} \n"
          "Poli Tujuan :  ${this.listPasien[i][3]} \n");
    }
  }
}

void main(List<String> args) {
  print("Enter nik : ");
  String? nik = stdin.readLineSync();
  print("Enter nama : ");
  String? nama = stdin.readLineSync();
  print("Enter alamat : ");
  String? alamat = stdin.readLineSync();
  print("Enter poliTujuan : ");
  String? poliTujuan = stdin.readLineSync();
  regristrasiPasien pasien =
      new regristrasiPasien(nik, nama, alamat, poliTujuan);

  print(
      "\n\t=====================================================================");
  print("\t\t       SELAMAT DATANG DI RUMAH SAKIT DR. SUCIPTO");
  print(
      "\n\t=====================================================================");
  print("\t\t\t  REGISTRASI PASIEN BARU");
  pasien.printOfList();
}
