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
//var email;
  //bool isemailsame=true;
//  while(isemailsame){
  var email = (stdin.readLineSync()!);
  if (users.any((e) => e["email"] == email)) {
    print('email already exists. Please choose another email.');
    print("registeration failed");
    registration();
  }
//  }

  stdout.write("password ");
  var password = (stdin.readLineSync()!);

  stdout.write("confirm password ");
  var confirm_password = (stdin.readLineSync()!);

  if (password == confirm_password) {
    print("password confirmed");
  } else {
    print("password is not same");
    print("Registeration failed");
    registration();
  }

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
  print(" ______________________________");
  print("|  Your Account is registered  | ");

  print("==============================");
  print("");
}
