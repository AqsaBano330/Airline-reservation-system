import 'home.dart';
import 'dart:io';

login() {
  bool isloggedin = false;
  while (isloggedin == false) {
    print("Enter email");
    String email = stdin.readLineSync()!;
    print("Enter Password");
    String password = stdin.readLineSync()!;
    for (var i = 0; i <= users.length - 1; i++) {
      if (users[i]["email"] == email && users[i]["password"] == password) {
        isloggedin = true;
        break;
      }
    }
    if (isloggedin == true) {
      print("logged in");
    } else {
      for (var i = 0; i <= users.length - 1; i++) {
        if (users[i]["email"] != email && users[i]["password"] != password) {
          print("Eamil and password both invalid");
        } else if (users[i]["email"] != email) {
          print("email is incorrect");
        } else {
          print("password is incorrect");
        }
      }
    }
    currentUser = users.firstWhere(
        (user) => user['email'] == email && user['password'] == password,
        orElse: () => Map<String, String>());
    print(currentUser);
  }
}
