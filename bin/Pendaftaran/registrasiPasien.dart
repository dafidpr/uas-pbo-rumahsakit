import 'dart:ffi';
import 'dart:io';

//inheritance class parents
abstract class Pasien {
  void info();
}

//class child
class Registrasi extends Pasien {
  List<List<String?>> listPasien = [];
  List<String?> pasien = [];
  String? nik;
  String? nama;
  String? alamat;
  String? _umur;
  String? poliTujuan;

  //constrctor
  Registrasi(String? nik, String? nama, String? alamat,  String? poliTujuan) {
    this.pasien.add(nik);
    this.pasien.add(nama);
    this.pasien.add(alamat);
    this.pasien.add(this._umur);
    this.pasien.add(poliTujuan);
    this.listPasien.add(pasien);
  }
  void set umur(String? umur) {
    this._umur = umur;
  }

  @override
  void info() {
    for (var i = 0; i < this.listPasien.length; i++) {
      print("\n\t-----------------------------------------------------------\n"
          " \t\t\t         REGISTRASI PASIEN BARU \n"
          "\t NIK : ${this.listPasien[i][0]} \n "
          "\t Nama :  ${this.listPasien[i][1]} \n"
          "\t Alamat : ${this.listPasien[i][2]} \n"
          "\t Umur : ${this.listPasien[i][3]} \n"
          "\t Poli Tujuan :  ${this.listPasien[i][4]} \n"
          "\n\t-----------------------------------------------------------\n");
    }

    // void addPasien() {
    //   this.pasien.add(this.nik);
    //   this.pasien.add(this.nama);
    //   this.pasien.add(this.alamat);
    //   this.pasien.add(this.umur);
    //   this.pasien.add(this.poli);
    //   this.listPasien.add(pasien);
  }
}

void main(List<String> args) {
  print(
      "\n\t====================================================================");
  print("\t\t\tSELAMAT DATANG DI RUMAH SAKIT DR. SUCIPTO");
  print(
      "\t====================================================================");
  print("\t\t\t\tINPUT DATA PASIEN ");
  stdout.write("\n\tEnter nik : ");
  String? nik = stdin.readLineSync();
  stdout.write("\tEnter nama : ");
  String? nama = stdin.readLineSync();
  stdout.write("\tEnter alamat : ");
  String? alamat = stdin.readLineSync();
  stdout.write("\tEnter umur : ");
  String? umur = stdin.readLineSync();
  stdout.write("\tEnter poliTujuan : ");
  String? poliTujuan = stdin.readLineSync();
  Registrasi
  Registrasi pasien = new Registrasi(nik, nama, alamat, umur, poliTujuan);

  pasien.info();
}
