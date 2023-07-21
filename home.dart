import 'dart:io';

void main() {
  bool isloggedin = true;
  List user = [];
  Map currentUser = {};
  print("Welcome to AK Airlines");
  print("Reach New Heights with Seamless Flight Bookings!");

  while (isloggedin) {
    print("Do you want to register? Press 'R'");
    print("Already have account?Press 'S' for sign in");

    var choice = (stdin.readLineSync()!);
    if (choice == "R" || choice == "r") {
      stdout.write("First Name: ");
      var choice = (stdin.readLineSync()!);
      //print("object");
      stdout.write("Last Name: ");
      var choice1 = (stdin.readLineSync()!);
    } else if (choice == "S" || choice == "s") {
      List<dynamic> users = [
        {'email': 'aqsabano08@gmail.com', 'password': '12345'},
        {'email': 'aqsakhan@gmail.com', 'password': '12346'},
        {'email': 'aqsapagal@gmmail.com', 'password': '12347'}
      ];

      bool isLoggedIn = false;

      while (isLoggedIn == false) {
        print("Enter email");
        String email = stdin.readLineSync()!;
        print("Enter Password");
        String password = stdin.readLineSync()!;
        for (var i = 0; i <= users.length - 1; i++) {
          if (users[i]["email"] == email && users[i]["password"] == password) {
            isLoggedIn = true;
            break;
          }
        }
        if (isLoggedIn == true) {
          print("logged in");
        } else {
          print("invalid");
        }
      }
    } else {
      print("you didnt slect anything");
    }
  }

//sigin

  //   List<dynamic> users = [
  //     {'email': 'aqsabano08@gmail.com', 'password': '12345'},
  //     {'email': 'aqsakhan@gmail.com', 'password': '12346'},
  //     {'email': 'aqsapagal@gmmail.com', 'password': '12347'}
  //   ];

  //   bool isLoggedIn = false;

  //   while (isLoggedIn == false) {
  //     print("Enter email");
  //     String email = stdin.readLineSync()!;
  //     print("Enter Password");
  //     String password = stdin.readLineSync()!;
  //     for (var i = 0; i <= users.length - 1; i++) {
  //       if (users[i]["email"] == email && users[i]["password"] == password) {
  //         isLoggedIn = true;
  //         break;
  //       }
  //     }
  //     if (isLoggedIn == true) {
  //       print("logged in");
  //     } else {
  //       print("invalid");
  //     }
  //   }
  // }
}
