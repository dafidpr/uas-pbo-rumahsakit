import 'dart:io';

abstract class CheckUp {
  String? _tekanandarah;
  String? _kolestroldanguladarah;
  String? _tesdarah;
  String? _pemeriksaanjantung;
  String? _pemeriksaanmata;
  String? _keluhanpasien;
  String? _diagnosa;
  String? _hasilpemeriksaan;

  void set tekanandarah(String? tekanandarah) {
    _tekanandarah = tekanandarah;
  }

  void set kolestroldanguladarah(String? kolestroldanguladarah) {
    _kolestroldanguladarah = kolestroldanguladarah;
  }

  void set tesdarah(String? tesdarah) {
    _tesdarah = tesdarah;
  }

  void set pemeriksaanjantung(String? pemeriksaanjantung) {
    _pemeriksaanjantung = pemeriksaanjantung;
  }

  void set pemeriksaanmata(String? pemeriksaanmata) {
    _pemeriksaanmata = pemeriksaanmata;
  }

  void set keluhanpasien(String? keluhanpasien) {
    _keluhanpasien = keluhanpasien;
  }

  void set diagnosa(String? diagnosa) {
    _diagnosa = diagnosa;
  }

  void set hasilpemeriksaan(String? hasilpemeriksaan) {
    _hasilpemeriksaan = hasilpemeriksaan;
  }

  void printCheckUp();
}

class Daftar extends CheckUp {
  List<CheckUp> daftarCekUp = [];

  void addCheckUp(CheckUp cekup) {
    daftarCekUp.add(cekup);
  }

  @override
  void printCheckUp() {
    for (var i = 0; i < daftarCekUp.length; i++) {
      print(
          "\n\t--------------------------------------------------------------");
      print(" \t\t\t      HASIL AKHIR PEMERIKSAAN PASIEN \n");
      print("JUMLAH TEKANAN DARAH : ${daftarCekUp[i]._tekanandarah}");
      print(
          "JUMLAH KOLESTROL DAN GULA DARAH : ${daftarCekUp[i]._kolestroldanguladarah}");
      print("HASIL TES DARAH PASIEN : ${daftarCekUp[i]._tesdarah}");
      print(
          "HASIL PEMERIKSAAN JANTUNG : ${daftarCekUp[i]._pemeriksaanjantung}");
      print("HASIL PEMERIKSAAN MATA : ${daftarCekUp[i]._pemeriksaanmata}");
      print("KELUHAN YANG DIALAMI PASIEN : ${daftarCekUp[i]._keluhanpasien}");
      print("DIAGNOSA PENYAKIT :  ${daftarCekUp[i]._diagnosa}");
      print("KESIMPULAN : ${daftarCekUp[i]._hasilpemeriksaan}");
    }
  }
}

void main() {
  Daftar daftar = new Daftar();
  print(
      "\n\t====================================================================");
  print("\t\t\tINPUT PEMERIKSAAN PASIEN");
  print(
      "\t====================================================================");
  stdout.write("Tekanan Darah : ");
  String? tekananDarah = stdin.readLineSync();
  daftar.tekanandarah = tekananDarah;
  stdout.write("Kolestrol dan Gula Darah : ");
  String? kolestrol = stdin.readLineSync();
  daftar.kolestroldanguladarah = kolestrol;
  stdout.write("Tes Darah : ");
  String? tesDarah = stdin.readLineSync();
  daftar.tesdarah = tesDarah;
  stdout.write("Pemeriksaan Jantung : ");
  String? jantung = stdin.readLineSync();
  daftar.pemeriksaanjantung = jantung;
  stdout.write("Pemeriksan Mata : ");
  String? mata = stdin.readLineSync();
  daftar.pemeriksaanjantung = mata;
  stdout.write("Keluhan Pasien : ");
  String? keluhan = stdin.readLineSync();
  daftar.keluhanpasien = keluhan;
  stdout.write("Diagnosa Penyakit : ");
  String? diagnos = stdin.readLineSync();
  daftar.diagnosa = diagnos;
  stdout.write("Hasil Pemeriksaan : ");
  String? hasil = stdin.readLineSync();
  daftar.hasilpemeriksaan = hasil;

  daftar.addCheckUp(daftar);

  daftar.printCheckUp();
}
