import 'dart:io';

import 'frontpage.dart';

List users = [];
Map currentUser = {};
bool continueprogram = true;
void main() {
  message();
  while (continueprogram) {
    options();
    //input for signin signup and exit
    var choice = (stdin.readLineSync()!);

    //for signup
    if (choice == "R" || choice == "r") {
      print("========Registeration========");
      stdout.write("First Name: ");
      var Fname = (stdin.readLineSync()!);

      stdout.write("Last Name: ");
      var Lname = (stdin.readLineSync()!);

      stdout.write("phone no ");
      var phone_no = int.parse(stdin.readLineSync()!);

      stdout.write("nic no ");
      var NIC_no = int.parse(stdin.readLineSync()!);

      stdout.write("passport number ");
      var passport_number = int.parse(stdin.readLineSync()!);

      stdout.write("email");
      var email = (stdin.readLineSync()!);

      if (users.any((e) => e["email"] == email)) {
        print('email already exists. Please choose another username.');
        print("again enter your email");
        var email = (stdin.readLineSync()!);
      }

      stdout.write("password ");
      var password = (stdin.readLineSync()!);

      stdout.write("confirm password ");
      var confirm_password = (stdin.readLineSync()!);

      Map user = {
        "firstName": Fname,
        "lastName": Lname,
        "phoneNo": phone_no,
        "nicNo": NIC_no,
        "passportNumber": passport_number,
        "email": email,
        "password": password,
        "confirmPassword": confirm_password
      };

      users.add(user);
    }
    //then home page

    //for signin

    else if (choice == "S" || choice == "s") {
      print("========Signin========");

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
            if (users[i]["email"] != email &&
                users[i]["password"] != password) {
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
    } //sign in
    else if (choice == "E" || choice == "e") {
      exit(0);
    }
  }
}
