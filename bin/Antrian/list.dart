import 'antrian .dart';

class LinkedList {
  late Antrian head;

  LinkedList() {
    head = null;
  }

  bool isEmpty() {
    if (head == Null) {
      return true;
    } else {
      return false;
    }
  }

  void insert(String key, String tipe) {
    Antrian baru = new Antrian(key, tipe);
    if (isEmpty()) {
      head = baru;
      head.next = null;
    } else {
      Antrian bantu;
      bantu = head;

      while (bantu.next != Null) {
        bantu = bantu.next;
      }
      bantu.next = baru;
    }
  }

  void delete(String tipe) {
    Antrian bantu, hapus;
    if (isEmpty()) {
      print("ANTRIAN KOSONG");
    } else {
      if (head.tipe.equals(tipe)) {
        print(head.key + head.tipe);
        head = head.next;
      } else {
        bantu = head;
        if (bantu.next == Null) {
          print("ANTRIAN KOSONG");
        } else {
          while (!bantu.next.tipe.equals(tipe)) {
            if (bantu.next.next == Null) {
              bantu = Null;
              break;
            }
            bantu = bantu.next;
          }
          if (bantu == Null) {
            print("ANTRIAN KOOSNG");
          } else if (bantu.next.next == Null) {
            print(bantu.next.key + bantu.next.tipe);
            bantu.next = Null;
          } else {
            print(bantu.next.key + bantu.next.tipe);
            hapus = bantu.next;
            bantu.next = hapus.next;
            hapus.next = Null;
          }
        }
      }
    }
  }
}
