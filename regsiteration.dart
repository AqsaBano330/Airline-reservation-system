import 'home.dart';
import 'dart:io';

registration() {
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

  stdout.write("email ");
  var email = (stdin.readLineSync()!);

  if (users.any((e) => e["email"] == email)) {
    print('email already exists. Please choose another username.');
    print("registeration failed");
    registration();
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
  print(users);
  print(user);
}
