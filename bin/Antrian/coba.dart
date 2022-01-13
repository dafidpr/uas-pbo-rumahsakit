import 'antrian .dart';

List Queue = [];

void add(String tipe, int noAntrian) {
  // Antrian baru = Antrian(tipe, noAntrian);
  // if (Queue == null) {

  // }
  Queue.add("$tipe$noAntrian");
}

void main(List<String> args) {
  add('A', 1);
  add('A', 2);
  add('A', 3);
  print(Queue);
  Queue.remove('A1');
  print(Queue);
}
