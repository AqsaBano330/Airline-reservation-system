import 'dart:io';

void main() {
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
}
