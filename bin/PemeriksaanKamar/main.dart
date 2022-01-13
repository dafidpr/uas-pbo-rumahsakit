import 'dart:io';

void header() {
  print("========================================================");
  print("== Selamat Datang di Aplikasi SIRANAP RS. Dr. Sucipto ==");
  print("========================================================");
}

List listOfKamar() {
  // create list 3
  List<List<String>> listKamar = [
    ["KMR01", "Kelas 1", "Ruang A", "4"],
    ["KMR02", "Kelas 2", "Ruang B", "3"],
    ["KMR03", "Kelas 3", "Ruang C", "1"],
  ];
  return listKamar;
}

// print list of kamar with table
void printListKamar(List listKamar) {
  // List listKamar = listOfKamar();
  print("====================================================");
  print("==                   Daftar Kamar                 ==");
  print("====================================================");
  print("| No. | Kode | Kelas | Ruang    | Jumlah Bed       |");
  print("====================================================");
  for (int i = 0; i < listKamar.length; i++) {
    print(
        "| ${i + 1} | ${listKamar[i][0]} | ${listKamar[i][1]} | ${listKamar[i][2]} | ${listKamar[i][3]}                |");
  }
  print("====================================================");
  switchMenu();
}
void printAll() {
  List listKamar = listOfKamar();
  print("====================================================");
  print("==                   Daftar Kamar                 ==");
  print("====================================================");
  print("| No. | Kode | Kelas | Ruang    | Jumlah Bed       |");
  print("====================================================");
  for (int i = 0; i < listKamar.length; i++) {
    print("| ${i + 1} | ${listKamar[i][0]} | ${listKamar[i][1]} | ${listKamar[i][2]} | ${listKamar[i][3]}                |");
  }
  print("====================================================");
  switchMenu();
}

// create method show menu
void showMenu() {
  print("====================================================");
  print("==              Menu Aplikasi SIRANAP             ==");
  print("====================================================");
  print("| 1. Daftar Kamar                                  |");
  print("| 2. Pendaftaran Kamar                             |");
  print("| 3. Exit                                          |");
  print("====================================================");
}

void listKamar(String? kodeKamar) {
  // search kamar by kode
  List listKamar = listOfKamar();
  for (int i = 0; i < listOfKamar().length; i++) {
    if (listKamar[i][0] == kodeKamar) {
      print("====================================================");
      print("==               Kamar Yang Di Pilih              ==");
      print("====================================================");
      print("| Kode  | Kelas   | Ruang   | Jumlah Bed           |");
      print("====================================================");
      print(
          "| ${listKamar[i][0]} | ${listKamar[i][1]} | ${listKamar[i][2]} | ${listKamar[i][3]}                    |");
      print("====================================================");
    }
  }
  switchMenu();
}

void daftarKamar() {
  List listKamar1 = listOfKamar();
  stdout.write("Masukkan kode kamar : ");
  String? kodeKamar;
  kodeKamar = stdin.readLineSync();
  stdout.write("Masukan jumlah bed pesanan : ");
  var jumlahBed;
  jumlahBed = stdin.readLineSync();
  // search kamar by jumlah bed
  for (int i = 0; i < listOfKamar().length; i++) {
    if (listKamar1[i][0] == kodeKamar) {
      // paser jumlahBed tstring to int
      var hasil = int.parse(listKamar1[i][3]) - int.parse(jumlahBed);
      listKamar1[i][3] = hasil.toString();
    }
  }

  printListKamar(listKamar1);
  switchMenu();
}

void switchMenu() {
  showMenu();
  stdout.write("Masukkan pilihan menu : ");
  var pilihan;
  pilihan = stdin.readLineSync();
  switch (pilihan) {
    case "1":
      printAll();
      break;
    case "2":
      daftarKamar();
      break;
    case "3":
      break;
    default:
      print("Pilihan tidak ada");
  }
}

void main(List<String> args) {
  header();
  switchMenu();
}
