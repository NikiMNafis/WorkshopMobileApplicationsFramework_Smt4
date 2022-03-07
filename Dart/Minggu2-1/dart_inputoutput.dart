import 'dart:io';

void main(List<String> args) {
  print("masukan nama: ");
  String inputText = stdin.readLineSync()!;
  print("nama: ${inputText}");
}
