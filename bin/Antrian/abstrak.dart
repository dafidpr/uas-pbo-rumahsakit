import 'interface.dart';

abstract class periksa {
  void jenisPenyakit();
}

class mataKering extends periksa implements penangananRS {
  //Abstract
  @override
  void jenisPenyakit() {
    // TODO: implement jenisPenyakit
    print(
        "MATA KERING TERJADI KETIKA AIR MATA TIDAK\n\t\t\t\tMAMPU MEMBERIKAN KELEMBAPAN YANG MEMADAI.");
  }

  //interface
  @override
  void poliklinik() {
    // TODO: implement poliklinik
    print("POLI MATA");
  }
}

class glaukoma extends periksa implements penangananRS {
  //Abstract
  @override
  void jenisPenyakit() {
    // TODO: implement jenisPenyakit
    print("KONDISI MATA YANG DAPAT MENYEBABKAN KEBUTAAN.");
  }

  //interface
  @override
  void poliklinik() {
    // TODO: implement poliklinik
    print("POLI MATA");
  }
}

class sifilis extends periksa implements penangananRS {
  //Abstract
  @override
  void jenisPenyakit() {
    // TODO: implement jenisPenyakit
    print(
        "INFEKSI BAKTERI YANG BIASANYA MENYEBAR\n\t\t\t\tMELALUI KONTAK SEKSUAL DAN DIMULAI DENGAN\n\t\t\t\tLUKA TANPA RASA SAKIT.");
  }

  //interface
  @override
  void poliklinik() {
    // TODO: implement poliklinik
    print("POLI KULIT DAN KELAMIN");
  }
}

class kurap extends periksa implements penangananRS {
  //Abstract
  @override
  void jenisPenyakit() {
    // TODO: implement jenisPenyakit
    print("INFEKSI JAMUR PADA KULIT KEPALA YANG SANGAT\n\t\t\t\tMENULAR.");
  }

  //interface
  @override
  void poliklinik() {
    // TODO: implement poliklinik
    print("POLI KULIT DAN KELAMIN");
  }
}
