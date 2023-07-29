// import 'admin.dart';
// import 'home.dart';
// import 'dart:io';

// import 'mainpage.dart';

// login() {
//   bool isloggedin = false;

//   while (isloggedin == false) {
//     print("Enter email");
//     String email = stdin.readLineSync()!;
//     print("Enter Password");
//     var password = stdin.readLineSync()!;

//     for (var i = 0; i <= users.length - 1; i++) {
//       if (users[i]["email"] == email && users[i]["password"] == password) {
//         isloggedin = true;
//         currentUser = users[i];
//         break;
//       } else if (email == "admin@gmail.com" && password == "123") {
//         admin();
//       } else if (users[i]["email"] != email ||
//           users[i]["password"] != password) {
//         print("User name or password is invalid");
//       }
//     }

//     if (isloggedin == true) {
//       print("");
//       print("=============================================================");
//       print("!!!!!!!!!!!!!Your account is successfully logged in!!!!!!!!!!");
//       print("=============================================================");
//       mainpage();
//     }
//   }
// }

import 'admin.dart';
import 'home.dart';
import 'dart:io';

import 'mainpage.dart';

login() {
  bool isloggedin = false;

  while (isloggedin == false) {
    stdout.write("| Enter email: ");
    String email = stdin.readLineSync()!;
    stdout.write("| Enter Password: ");
    var password = stdin.readLineSync()!;
    print(
        "|_________________________________________________________________|");

    if (email == "admin@gmail.com" && password == "123") {
      admin();
      break; // Exit the loop if admin login is successful
    }

    for (var i = 0; i < users.length; i++) {
      if (users[i]["email"] == email && users[i]["password"] == password) {
        isloggedin = true;
        currentUser = users[i];
        mainpage();
        print("            ____________________________________");
        print("           |  Your are Successfullu Loggedin    |");
        print("           |____________________________________|");
        break;
      }
    }

    if (!isloggedin) {
      print("| !!!Oops...User name or password is invalid!!!");
    }
  }
}
