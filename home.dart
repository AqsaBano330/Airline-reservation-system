import 'dart:io';
import 'frontpageoptions.dart';
import 'login.dart';
import 'message.dart';
import 'regsiteration.dart';

List users = [];
Map currentUser = {};
bool continueprogram = true;
void main() {
  message(); //welcome...

  while (continueprogram) {
    frontoptions(); //choose

    //input for signin signup and exit
    stdout.write("Enter your choice please: ");
    var choice = (stdin.readLineSync()!);

    //for signup
    if (choice == "R" || choice == "r") {
      print(
          "==========================   Registeration   =========================");
      registration();
    } else if (choice == "S" || choice == "s") {
      print(
          "============================   Sign in   =============================");
      login();
    } //sign in
    else if (choice == "E" || choice == "e") {
      exit(0);
    }
  }
}
