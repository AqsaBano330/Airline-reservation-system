import 'home.dart';
import 'dart:io';

registration() {
  Map user = {};
  stdout.write("First Name: ");
  var Fname = stdin.readLineSync()!;

  stdout.write("Last Name: ");
  var Lname = stdin.readLineSync()!;

  stdout.write("phone no ");
  var phone_no = int.parse(stdin.readLineSync()!); //"phoneNo": phone_no,

  stdout.write("nic no ");
  var NIC_no = int.parse(stdin.readLineSync()!);

  stdout.write("passport number ");
  var passport_number = int.parse(stdin.readLineSync()!);

  stdout.write("email ");

  var email = (stdin.readLineSync()!);
  if (users.any((e) => e["email"] == email)) {
    print('email already exists. Please choose another email.');
    print("registeration failed");
    registration();
  }

  stdout.write("password ");
  var password = (stdin.readLineSync()!);

  bool isconfirm = true;
  while (isconfirm == true) {
    stdout.write("confirm password ");
    var confirm_password = (stdin.readLineSync()!);
    if (confirm_password == password) {
      print("password confirmed");
      user["password"] = password;
      isconfirm = false;
    } else {
      print("password is not same");
    }
  }

  user["firstName"] = Fname;
  user["lastName"] = Lname;
  user["phoneNo"] = phone_no;
  user["nicNo"] = NIC_no;
  user["passportNumber"] = passport_number;
  user["email"] = email;
  user["password"] = password;

  users.add(user);

  print("            ______________________________");
  print("           |  Your Account is registered  |");
  print("            ______________________________");

  print("========================================================");
  print("");

  home();
}
