import 'dart:async';

void main(List<String> args) async {
  print("Surat Cinta Untuk Starla");
  print(await lirik1());
  print(await lirik2());
  print(await lirik3());
  print(await lirik4());
  print(await lirik5());
  print(await lirik6());
}

Future<String> lirik1() async {
  String lirik = "Ku tuliskan kenangan tentang Caraku menemukan dirimu";
  return await Future.delayed(Duration(seconds: 2), () => (lirik));
}

Future<String> lirik2() async {
  String lirik = "Tentang apa yang membuatku mudah Berikan hatiku padamu";
  return await Future.delayed(Duration(seconds: 8), () => (lirik));
}

Future<String> lirik3() async {
  String lirik = "Takkan habis sejuta lagu Untuk menceritakan cantikmu";
  return await Future.delayed(Duration(seconds: 8), () => (lirik));
}

Future<String> lirik4() async {
  String lirik = "Kan teramat panjang puisi Tuk menyuratkan cinta ini";
  return await Future.delayed(Duration(seconds: 8), () => (lirik));
}

Future<String> lirik5() async {
  String lirik = "Telah habis sudah cinta ini Tak lagi tersisa untuk dunia";
  return await Future.delayed(Duration(seconds: 9), () => (lirik));
}

Future<String> lirik6() async {
  String lirik = "Karena telah ku habiskan Sisa cintaku hanya untukmu…";
  return await Future.delayed(Duration(seconds: 1), () => (lirik));
}
