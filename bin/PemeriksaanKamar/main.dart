import 'dart:io';
/**
 * List of rooms
 */
class Room {
  List<List<String>> roomList = [
    ["KMR01", "Kelas 1", "Ruang A", "4"],
    ["KMR02", "Kelas 2", "Ruang B", "3"],
    ["KMR03", "Kelas 3", "Ruang C", "1"],
  ];
}

/**
 * Fetch data from list of rooms
 */
Future<List> fetchRooms() async {
  await Future.delayed(const Duration(seconds: 2));
  return Room().roomList;
}
/**
 * Get data from list of rooms by room code
 */
Future<List> fetchRoomByCode(String? roomCode) {
  return fetchRooms().then((rooms) {
    return rooms.where((room) => room[0] == roomCode).toList();
  });
}

/**
 * Register patient to room
 */
void registerRoom() async {
  stdout.write("Masukkan kode kamar : ");
  String? roomCode;
  roomCode = stdin.readLineSync();

  print("Loading...");
  fetchRoomByCode(roomCode).then((room) async {
      if (room.isEmpty) {
        alert("Kamar tidak tersedia");
        switchMenu();
      } else {

        await printRoomBySearch(roomCode);

        stdout.write("Masukan jumlah bed pesanan : ");
        var bedQuantity = stdin.readLineSync();
        alert("Kamar berhasil dipesan");
        switchMenu();
      }
  });
}

/**
 * Print data from list of rooms by room code
 */
Future<void> printRoomBySearch(String? roomCode) async {
  List room = await fetchRoomByCode(roomCode);
  if (room.isEmpty) {
    alert("Kamar tidak tersedia");
  } else {
    print("====================================================");
    print("==               Kamar Yang Di Pilih              ==");
    print("====================================================");
    print("| Kode  | Kelas   | Ruang   | Jumlah Bed           |");
    print("====================================================");
    print(
        "| ${room[0][0]} | ${room[0][1]} | ${room[0][2]} | ${room[0][3]}                    |");
    print("====================================================");
  }
}

/**
 * Print list of rooms
 */
Future<void> printAllRooms() async {
  print("Loading...");
  List rooms = await fetchRooms();
  print("====================================================");
  print("==                   Daftar Kamar                 ==");
  print("====================================================");
  print("| No. | Kode | Kelas | Ruang    | Jumlah Bed       |");
  print("====================================================");
  for (int i = 0; i < rooms.length; i++) {
    print("| ${i + 1} | ${rooms[i][0]} | ${rooms[i][1]} | ${rooms[i][2]} | ${rooms[i][3]}                |");
  }
  print("====================================================");
  switchMenu();
}

/**
 * Print header application
 */
void header() {
  print("========================================================");
  print("== Selamat Datang di Aplikasi SIRANAP RS. Dr. Sucipto ==");
  print("========================================================");
}

/**
 * Print menu
 * 
 */
void showMenu() {
  header();
  print("====================================================");
  print("==              Menu Aplikasi SIRANAP             ==");
  print("====================================================");
  print("| 1. Daftar Kamar                                  |");
  print("| 2. Pendaftaran Kamar                             |");
  print("| 3. Exit                                          |");
  print("====================================================");
  switchMenu();
}

/**
 * Print alert
 */
void alert(String message) {
  print("===================================================");
  print("            $message            ");
  print("===================================================");
}

/**
 * Switch menu
 */
void switchMenu() async {
  stdout.write("Masukkan pilihan menu : ");
  var menu;
  menu = stdin.readLineSync();
  switch (menu) {
    case "1":
      await printAllRooms();
      break;
    case "2":
      registerRoom();
      break;
    case "3":
      break;
    default:
      print("Menu isn't available");
  }
}

void main(List<String> args) {
  showMenu();
}
