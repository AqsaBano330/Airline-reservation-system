import 'dart:io';
import 'frontpageoptions.dart';
import 'login.dart';
import 'message.dart';
import 'regsiteration.dart';

List users = [];
Map currentUser = {};
bool continueprogram = true;
void home() {
  message(); //welcome...

  frontoptions(); //choose
  bool iscontinue = true;
  while (iscontinue) {
    //input for signin signup and exit
    stdout.write("Enter your choice please: ");
    var choice = (stdin.readLineSync()!);

    //for signup
    if (choice == "R" || choice == "r") {
      print("");
      print(
          "==========================   REGISTRATION   =========================");
      registration();
    } else if (choice == "S" || choice == "s") {
      print(
          "============================   SIGN IN   =============================");
      login();
    } //sign in
    else if (choice == "E" || choice == "e") {
      exit(0);
    } else if (choice == "") {
      print("It can not be empty");
    } else {
      print("invalid choice");
    }
  }
}
