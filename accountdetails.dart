import 'home.dart';
import 'dart:io';

import 'mainpage.dart';

accountDetails() {
  print("====================    Your Account Details    ===============");
  stdout.write("First Name:");
  print(currentUser["firstName"]);
  stdout.write("Last Name:");
  print(currentUser["lastName"]);
  stdout.write("Contact Number:");
  print(currentUser["phoneNo"]);
  stdout.write("NIC Number:");
  print(currentUser['nicNo']);
  stdout.write("Passport Number:");
  print(currentUser["passportNumber"]);
  stdout.write("Email Account:");
  print(currentUser["email"]);
  stdout.write("Password:");
  print(currentUser["password"]);

  print("                                                         <- Back (B)");
  var kiahua = stdin.readLineSync();
  if (kiahua == "b" || kiahua == "B") {
    mainpage();
  }
}
