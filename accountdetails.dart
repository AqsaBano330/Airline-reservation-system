import 'edit_acc_details.dart';
import 'home.dart';
import 'dart:io';

import 'mainpage.dart';

accountDetails() {
  print("====================    Your Account Details    ===============");
  print("                                                            Edit(E)");
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

  print(" Plese enter");
  print("                                      <- Back (B)");
  print("                                Delete Account(D)");
  var kiahua = stdin.readLineSync();
  if (kiahua == "b" || kiahua == "B") {
    mainpage();
  } else if (kiahua == "e" || kiahua == "E") {
    edit_acc_details();
  } else if (kiahua == "d" || kiahua == "D") {
    users.remove(currentUser);
    print("Account deleted");
    print(users);
    home();
  }
}
