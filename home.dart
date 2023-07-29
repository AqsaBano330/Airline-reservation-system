import 'dart:io';
import 'login.dart';
import 'message.dart';
import 'regsiteration.dart';

List users = []; // user ki sari detail hgi in the form of map
Map currentUser = {}; // jisne abhi sigin kia uski detail store hgi
bool continueprogram = true;
void home() {
  message(); //welcome bla bla

  print(" __________________________________________________________________");
  print("|                                                                  |");
  print("|                             AK AIRLINES                          |");
  print("|__________________________________________________________________|");
  print("|                                                                  |");
  print("|                                                                  |");
  print("|  [R] Registration                                                |");
  print("|  [S] SignUp                                                      |");
  print("|  [E] Exit                                                        |");
  print("|                                                                  |");
  print("| Please Enter your choice:                                        |");
  print("|__________________________________________________________________|");

  bool iscontinue = true;
  while (iscontinue) {
    //input for signin signup and exit
    stdout.write("Enter your choice please: ");
    var choice = (stdin.readLineSync()!);

    //for signup
    if (choice == "R" || choice == "r") {
      print(
          " __________________________________________________________________");
      print(
          "|                                                                  |");
      print(
          "|                          REGISTRATION                            |");
      print(
          "|__________________________________________________________________|");
      registration();
    } else if (choice == "S" || choice == "s") {
      print(
          " __________________________________________________________________");
      print(
          "|                                                                  |");
      print(
          "|                             LOGIN                                |");
      print(
          "|__________________________________________________________________|");
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
