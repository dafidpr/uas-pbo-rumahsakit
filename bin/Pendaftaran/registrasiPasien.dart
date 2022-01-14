import 'dart:io';

//inheritance class parent
class Pasien {
  //instansiasi properti nik,nama,alamat,umur dan poliTujuan bersifat privat
  String? _nik;
  String? _nama;
  String? _alamat;
  String? _umur;
  String? _poliTujuan;

//meng-assign nik
  void set identitas(String? nik) {
    _nik = nik;
  }

//meng-assign nama
  void set nama(String? nama) {
    _nama = nama;
  }

//meng-assign alamat
  void set alamat(String? alamat) {
    _alamat = alamat;
  }

//meng-assign umur
  void set umur(String? umur) {
    _umur = umur;
  }

//meng-assign poliTujuan
  void set poli(String? poliTujuan) {
    _poliTujuan = poliTujuan;
  }
}

//class child
class Registrasi extends Pasien {
  //array list pasien
  List<Pasien> listPasien = [];

//construktor
  void addPasien(Pasien pasien) {
    listPasien.add(pasien);
  }

//method yang berfungsi untuk menampilkan seluruh data pasien yang telah ditambahkan
  void printPasien() {
    for (var i = 0; i < listPasien.length; i++) {
      print(
          "\n\t--------------------------------------------------------------");
      print(" \t\t\t      REGISTRASI PASIEN BARU \n");
      print("\t NIK         :  ${listPasien[i]._nik}");
      print("\t NAMA        : ${listPasien[i]._nama}");
      print("\t ALAMAT      : ${listPasien[i]._alamat}");
      print("\t UMUR        : ${listPasien[i]._umur}");
      print("\t POLI TUJUAN : ${listPasien[i]._poliTujuan}");

      print(
          "\n\t====================================================================");
      print("\t\t\tSILAHKAN AMBIL NOMOR ANTRIAN ANDA ");
      print(
          "\t====================================================================");
    }
  }
}

void main() {
  Registrasi registrasi = new Registrasi();
  print(
      "\n\t====================================================================");
  print("\t\t\tSELAMAT DATANG DI RUMAH SAKIT DR. SUCIPTO");
  print(
      "\t====================================================================");
  print("\n\t\t\t\tINPUT DATA PASIEN ");
  stdout.write("\n\tMasukkan NIK pasien   : ");
  String? nomorIdentitas = stdin.readLineSync();
  registrasi.identitas = nomorIdentitas;
  stdout.write("\tMasukkan nama pasien    : ");
  String? nama = stdin.readLineSync();
  registrasi.nama = nama;
  stdout.write("\tMasukkan alamat pasien  : ");
  String? alamat = stdin.readLineSync();
  registrasi.alamat = alamat;
  stdout.write("\tMasukkan umur pasien    : ");
  String? umur = stdin.readLineSync();
  registrasi.umur = umur;
  stdout.write("\tMasukkan poli pasien    : ");
  String? poliTujuan = stdin.readLineSync();
  registrasi.poli = poliTujuan;

  registrasi.addPasien(registrasi);

  registrasi.printPasien();
}
