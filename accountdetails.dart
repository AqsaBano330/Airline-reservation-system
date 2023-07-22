import 'home.dart';
import 'dart:io';

accountDetails() {
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
  stdout.write("Passport Number:");
  print(currentUser["password"]);
}
