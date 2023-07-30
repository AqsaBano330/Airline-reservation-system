import 'edit_acc_details.dart';
import 'home.dart';
import 'dart:io';
import 'mainpage.dart';

accountDetails() {
  print(" __________________________________________________________________");
  print("|                                                                  |");
  print("|                         ACCOUNT DETAILS                          |");
  print("|__________________________________________________________________|");
  print("|                                                                  |");
  print("|                                                      [E] Edit    |");
  print("|    First Name: ${currentUser["firstName"]}                        ");
  print("|    Last Name:  ${currentUser["lastName"]}                         ");
  print("|    Contact Number: ${currentUser["phoneNo"]}                      ");
  print("|    NIC Number: ${currentUser['nicNo']}                            ");
  print("|    Passport Number: ${currentUser["passportNumber"]}              ");
  print("|    Email Account: ${currentUser["email"]}                         ");
  print("|    Password: ${currentUser["password"]}                           ");
  print("|                                                                  |");
  print("|                                               [b] <- Back        |");
  print("|                                               [D] Delete Account |");
  print("|  Please Enter your choice                                        |");
  print("|__________________________________________________________________|");

  bool iskiahua = false;
  while (iskiahua == false) {
    var kiahua = stdin.readLineSync();
    if (kiahua == "b" || kiahua == "B") {
      mainpage();
      iskiahua = true;
    } else if (kiahua == "e" || kiahua == "E") {
      edit_acc_details();
      iskiahua = true;
    } else if (kiahua == "d" || kiahua == "D") {
      users.remove(currentUser);
      print("!!! Account deleted !!!");
      iskiahua = true;
      home();
    } else {
      print('Invalid Choice');
    }
  }
}
