import 'dart:io';

main() {
  stdout.write("email");
  var email = (stdin.readLineSync()!);
  stdout.write("password ");
  var password = int.parse(stdin.readLineSync()!);
  List users = [
    {"email": "a", "password": 1}
  ];
  Map currentUser = {};
  for (var d = 0; d <= users.length - 1; d++) {
    if (users[d]["email"] == "email" && users[d]["password"] == "password") {
      currentUser = users[d];
      print(d);
      print("hello");
    } else {
      print("bye");
    }
  }
}
