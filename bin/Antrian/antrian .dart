class Antrian {
  late Antrian? next;
  late String key, tipe;

  Antrian(String data, String pengguna) {
    key = data;
    tipe = pengguna;
    next = null;
  }
}
