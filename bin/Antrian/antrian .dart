class Antrian {
  late Antrian? next;
  late String tipe;
  late int noAntrian;

  Antrian(String pengguna, int no) {
    noAntrian = no;
    tipe = pengguna;
    next = null;
  }
}
