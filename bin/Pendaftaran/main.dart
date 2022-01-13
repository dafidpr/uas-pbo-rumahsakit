import 'dart:io';
class Pasien {
  String? _identitas;
  String? _nama;
  String? _alamat;
  String? _umur;
  String? _poli;

  void set identitas(String? identitas) {
    _identitas = identitas;
  }

  void set nama(String? nama) {
    _nama = nama;
  }

  void set alamat(String? alamat) {
    _alamat = alamat;
  }

  void set umur(String? umur) {
    _umur = umur;
  }

  void set poli(String? poli) {
    _poli = poli;
  }
}

class Registrasi extends Pasien {
  List<Pasien> listPasien = [];

  void addPasien(Pasien pasien) {
    listPasien.add(pasien);
  }

  void printPasien() {
    for (var i = 0; i < listPasien.length; i++) {
      print(listPasien[i]._identitas);
      print(listPasien[i]._nama);
      print(listPasien[i]._alamat);
      print(listPasien[i]._umur);
      print(listPasien[i]._poli);
    }
  }
}

void main() {
  Registrasi registrasi = new Registrasi();
  stdout.write("Masukkan identitas pasien : ");
  String? nomorIdentitas = stdin.readLineSync();
  registrasi.identitas = nomorIdentitas;
  stdout.write("Masukkan nama pasien : ");
  String? nama = stdin.readLineSync();
  registrasi.nama = nama;
  stdout.write("Masukkan alamat pasien : ");
  String? alamat = stdin.readLineSync();
  registrasi.alamat = alamat;
  stdout.write("Masukkan umur pasien : ");
  String? umur = stdin.readLineSync();
  registrasi.umur = umur;
  stdout.write("Masukkan poli pasien : ");
  String? poli = stdin.readLineSync();
  registrasi.poli = poli;


  registrasi.addPasien(registrasi);

  registrasi.printPasien();
}
