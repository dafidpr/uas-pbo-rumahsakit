//import 'antrian .dart';
import 'dart:io';

List Queue = [];
late int menu1,
    poliKebidanan = 0,
    poliAnak = 0,
    poliBedahUmum = 0,
    poliMata = 0,
    poliKulitKelamin = 0;

class antrian {
  void add(String tipe, String noAntrian) {
    Queue.add("$tipe$noAntrian");
  }
}

void main(List<String> args) {
  antrian antri = antrian();
  // add('A', 1);
  // add('A', 2);
  // add('A', 3);
  // print(Queue);
  // Queue.remove('A1');
  // print(Queue);
  while (true) {
    print(
        "\n\t====================================================================");
    print("\t\t\tSELAMAT DATANG DI RUMAH SAKIT DR. SUCIPTO");
    print(
        "\t====================================================================");
    print("\n\tDAFTAR POLIKLINIK RUMAH SAKIT DR. SUCIPTO");
    print("\t   1. POLI ANAK");
    print("\t   2. POLI BEDAH UMUM");
    print("\t   3. POLI KEBIDANAN");
    print("\t   4. POLI KULIT DAN KELAMIN");
    stdout.write("\n\tPILIH LAYANAN : ");
    int? input = int.parse(stdin.readLineSync()!);
    print("");

    switch (input) {
      case 1:
        print("\t\t\t\t   NOMOR ANTRIAN");
        poliAnak++;
        antri.add("A", poliAnak.toString());
        print("\n\t\t\t\t        A" +
            "$poliAnak" +
            "\n\n\t\t\t\t    POLI ANAK" +
            "\n\t\t\t     RUMAH SAKIT DR. SUCIPTO");
        break;
      case 2:
        print("\t\t\t\t   NOMOR ANTRIAN");
        poliBedahUmum++;
        antri.add("B", poliBedahUmum.toString());
        print("\n\t\t\t\t        B" +
            "$poliBedahUmum" +
            "\n\n\t\t\t\t POLI BEDAH UMUM" +
            "\n\t\t\t     RUMAH SAKIT DR. SUCIPTO");
        break;
      case 3:
        print("\t\t\t\t   NOMOR ANTRIAN");
        poliKebidanan++;
        antri.add("C", poliKebidanan.toString());
        print("\n\t\t\t\t        C" +
            "$poliKebidanan" +
            "\n\n\t\t\t\t  POLI KEBIDANAN" +
            "\n\t\t\t     RUMAH SAKIT DR. SUCIPTO");
        break;
      case 4:
        print("\t\t\t\t   NOMOR ANTRIAN");
        poliKulitKelamin++;
        antri.add("D", poliKulitKelamin.toString());
        print("\n\t\t\t\t        C" +
            "$poliKulitKelamin" +
            "\n\n\t\t\t      POLI KULIT DAN KELAMIN" +
            "\n\t\t\t      RUMAH SAKIT DR. SUCIPTO");
        break;
    }
  }
}
