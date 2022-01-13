class Antrian {
  late Antrian? next;
  late String tipe, noAntrian;

  Antrian(String pengguna, String no) {
    noAntrian = no;
    tipe = pengguna;
    next = null;
  }
}
