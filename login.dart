import 'admin.dart';
import 'home.dart';
import 'dart:io';

import 'mainpage.dart';

login() {
  bool isloggedin = false;

  while (!isloggedin) {
    print("Enter email");
    String email = stdin.readLineSync()!;
    print("Enter Password");
    String password = stdin.readLineSync()!;

    bool isEmailValid = false;
    bool isPasswordValid = false;

    for (var i = 0; i < users.length; i++) {
      if (users[i]["email"] == email && users[i]["password"] == password) {
        isloggedin = true;
        currentUser = users[i]; // Set the current user here
        break; // Exit the loop once a match is found
      } else if (users[i]["email"] == email) {
        isEmailValid = true;
      } else if (users[i]["password"] == password) {
        isPasswordValid = true;
      }
    }

    if (isloggedin) {
      print("");
      print("============================================================");
      print("!!!!!!!!!!!!!Your account is successfully logged in!!!!!!!!!!");
      print("============================================================");
    } else {
      if (isEmailValid && isPasswordValid) {
        print("Oops...password is incorrect");
      } else if (isEmailValid) {
        print("Oops...email is incorrect");
      } else {
        print("Email and password both are invalid");
      }
    }
  }

  mainpage();
}
