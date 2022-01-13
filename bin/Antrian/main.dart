import 'abstrak.dart';
import 'dart:io';

List Queue = [];
late int no = 100;
int? input, sakit;
antrian antri = antrian();

class antrian {
  void add(int noAntrian) {
    Queue.add("$noAntrian");
  }

  void delete() {
    Queue.removeAt(0);
  }

  void viewMenu() {}
}

void pasien() {
  print(
      "\n\t====================================================================");
  print("\t\t\tSELAMAT DATANG DI RUMAH SAKIT DR. SUCIPTO");
  print(
      "\t====================================================================");
  daftarpenyakit();
  stdout.write("\n\tNAMA PASIEN           : ");
  String? nama = stdin.readLineSync();
  stdout.write("\tALAMAT PASIEN         : ");
  String? alamat = stdin.readLineSync();
  stdout.write("\tPENYAKIT PASIEN       : ");
  sakit = int.parse(stdin.readLineSync()!);
  detailsakit();
}

void detailsakit() {
  switch (sakit) {
    case 1:
      stdout.write("\tDESKRIPSI PENYAKIT    : ");
      mataKering().jenisPenyakit();
      stdout.write("\tPOLIKLINIK RUJUKAN    : ");
      mataKering().poliklinik();
      break;
    case 2:
      stdout.write("\tDESKRIPSI PENYAKIT    : ");
      glaukoma().jenisPenyakit();
      stdout.write("\tPOLIKLINIK RUJUKAN    : ");
      glaukoma().poliklinik();
      break;
    case 3:
      stdout.write("\tDESKRIPSI PENYAKIT    : ");
      sifilis().jenisPenyakit();
      stdout.write("\tPOLIKLINIK RUJUKAN    : ");
      sifilis().poliklinik();
      break;
    case 4:
      stdout.write("\tDESKRIPSI PENYAKIT    : ");
      kurap().jenisPenyakit();
      stdout.write("\tPOLIKLINIK RUJUKAN    : ");
      kurap().poliklinik();
      break;
    default:
      print(
          "\tDATA YANG ANDA MASUKKAN SALAH. SILAKAN MASUKKAN DATA SESUAI DENGAN\n\tDAFTAR KAMI");
  }
}

void daftarpenyakit() {
  print("\n\tDAFTAR PENYAKIT");
  print("\t   1. MATA KERING");
  print("\t   2. GLAUKOMA");
  print("\t   3. SIFILIS");
  print("\t   4. KURAP");
}

void menuAntrian() {
  print(
      "\t====================================================================");
  print("\n\tMENU POLIKLINIK RUMAH SAKIT DR. SUCIPTO");
  print("\t   1. TAMBAH ANTRIAN");
  print("\t   2. PANGGILAN ANTRIAN");
  print("\t   3. KELUAR");
  stdout.write("\n\tPILIH LAYANAN : ");
  input = int.parse(stdin.readLineSync()!);
  print("");
}

void tambahAntrian() {
  print("\t\t\t\t   NOMOR ANTRIAN");
  no++;
  antri.add(no);
  print("\n\t\t\t\t        $no" + "\n\n\t\t\t      RUMAH SAKIT DR. SUCIPTO");
}

void panggilAntrian() {
  print("\t\t\t\t   NOMOR ANTRIAN");
  print("\n\t\t\t\t        " +
      Queue[0] +
      "\n\t\t\t      SILAKAN MENUJU RUANGAN" +
      "\n\t\t\t      RUMAH SAKIT DR. SUCIPTO");
  antri.delete();
}

void main(List<String> args) {
  pasien();
  while (true) {
    menuAntrian();
    switch (input) {
      case 1:
        tambahAntrian();
        break;
      case 2:
        panggilAntrian();
        break;
      case 3:
        pasien();
        break;
      default:
        print(
            "\tDATA YANG ANDA MASUKKAN SALAH. SILAKAN MASUKKAN DATA SESUAI DENGAN\n\tDAFTAR KAMI");
        break;
    }
  }
}
