import 'dart:io';

//abstract class sebagai kelas parents
abstract class CheckUp {
  //variabel
  String? _tekanandarah;
  String? _kolestroldanguladarah;
  String? _tesdarah;
  String? _pemeriksaanjantung;
  String? _pemeriksaanmata;
  String? _keluhanpasien;
  String? _diagnosa;
  String? _hasilpemeriksaan;

  //setter
  //String? tekanan darah = parameter
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

  //polimorpihsm
  void printCheckUp();
}

//class daftar = child
//checkup = parents
class Daftar extends CheckUp {
  List<CheckUp> daftarCekUp = [];

  //mengisi nilai array daftarcekup
  void addCheckUp(CheckUp cekup) {
    daftarCekUp.add(cekup);
  }

  //menampilkan daftarcekup
  @override
  void printCheckUp() {
    for (var i = 0; i < daftarCekUp.length; i++) {
      print(
          "\n\t--------------------------------------------------------------");
      print(" \t\t\t      HASIL AKHIR PEMERIKSAAN PASIEN \n");
      print("\t JUMLAH TEKANAN DARAH : ${daftarCekUp[i]._tekanandarah}");
      print(
          "\t JUMLAH KOLESTROL DAN GULA DARAH : ${daftarCekUp[i]._kolestroldanguladarah}");
      print("\t HASIL TES DARAH PASIEN : ${daftarCekUp[i]._tesdarah}");
      print(
          "\t HASIL PEMERIKSAAN JANTUNG : ${daftarCekUp[i]._pemeriksaanjantung}");
      print("\t HASIL PEMERIKSAAN MATA : ${daftarCekUp[i]._pemeriksaanmata}");
      print(
          "\t KELUHAN YANG DIALAMI PASIEN : ${daftarCekUp[i]._keluhanpasien}");
      print("\t DIAGNOSA PENYAKIT :  ${daftarCekUp[i]._diagnosa}");
      print("\t KESIMPULAN : ${daftarCekUp[i]._hasilpemeriksaan}");
    }
  }
}

//mengisi nilai daftar array
void main() {
  Daftar daftar = new Daftar();
  print(
      "\n\t====================================================================");
  print("\t\t\tINPUT PEMERIKSAAN PASIEN");
  print(
      "\t====================================================================");
  stdout.write("\t Tekanan Darah : ");
  String? tekananDarah = stdin.readLineSync();
  daftar.tekanandarah = tekananDarah;
  stdout.write("\t Kolestrol dan Gula Darah : ");
  String? kolestrol = stdin.readLineSync();
  daftar.kolestroldanguladarah = kolestrol;
  stdout.write("\t Tes Darah : ");
  String? tesDarah = stdin.readLineSync();
  daftar.tesdarah = tesDarah;
  stdout.write("\t Pemeriksaan Jantung : ");
  String? jantung = stdin.readLineSync();
  daftar.pemeriksaanjantung = jantung;
  stdout.write("\t Pemeriksan Mata : ");
  String? mata = stdin.readLineSync();
  daftar.pemeriksaanjantung = mata;
  stdout.write("\t Keluhan Pasien : ");
  String? keluhan = stdin.readLineSync();
  daftar.keluhanpasien = keluhan;
  stdout.write("\t Diagnosa Penyakit : ");
  String? diagnos = stdin.readLineSync();
  daftar.diagnosa = diagnos;
  stdout.write("\t Hasil Pemeriksaan : ");
  String? hasil = stdin.readLineSync();
  daftar.hasilpemeriksaan = hasil;

  //memanggil method checkup
  daftar.addCheckUp(daftar);

  //menampilkan daftar printcheckup
  daftar.printCheckUp();
}
