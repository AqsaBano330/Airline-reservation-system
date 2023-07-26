import 'accountdetails.dart';
import 'dart:io';

import 'home.dart';

void edit_acc_details() {
  print("====================   Edit Your Account Details    ===============");

  stdout.write("[1] First Name:");
  print(currentUser["firstName"]);
  stdout.write("[2] Last Name:");
  print(currentUser["lastName"]);
  stdout.write("[3] Contact Number:");
  print(currentUser["phoneNo"]);
  stdout.write("[4] NIC Number:");
  print(currentUser['nicNo']);
  stdout.write("[5] Passport Number:");
  print(currentUser["passportNumber"]);
  stdout.write("[6] Email Account:");
  print(currentUser["email"]);
  stdout.write("[7] Password:");
  print(currentUser["password"]);

  print("                                                         <-back(8)");
  print("");

  bool isedit = false;

  while (!isedit) {
    // Corrected the condition for the while loop
    for (var k = 0; k < users.length; k++) {
      if (currentUser["email"] == users[k]["email"]) {
        print('what do you want to edit?');
        var editwhat = int.parse(stdin.readLineSync()!);
        if (editwhat == 1) {
          var fnameedit = stdin.readLineSync()!;
          users[k]["firstName"] = fnameedit;
        } else if (editwhat == 2) {
          var lnameedit = stdin.readLineSync()!;
          users[k]["lastName"] = lnameedit;
        } else if (editwhat == 3) {
          var phoneedit = stdin.readLineSync()!;
          users[k]["phoneNo"] = phoneedit;
        } else if (editwhat == 4) {
          var nicedit = stdin.readLineSync()!;
          users[k]["nicNo"] = nicedit;
        } else if (editwhat == 5) {
          var passportedit = stdin.readLineSync()!;
          users[k]["passportNumber"] = passportedit;
        } else if (editwhat == 7) {
          var passwordedit = stdin.readLineSync()!;
          users[k]["password"] = passwordedit;
        } else if (editwhat == 6) {
          var emailedit = stdin.readLineSync()!;
          users[k]["email"] = emailedit;
        } else if (editwhat == 8) {
          accountDetails();
        } else {
          print("Invalid choice!");
        }
      }
    }
  }
}
