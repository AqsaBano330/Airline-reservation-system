import 'home.dart';
import 'dart:io';

registration() {
  Map user = {};

  //First Name

  bool fname = false;

  while (fname == false) {
    stdout.write("| First Name:");
    String Fname = stdin.readLineSync()!;
    if (Fname == "") {
      print("It can't be empty");
    } else {
      user["firstName"] = Fname;
      fname = true;
    }
  }

//Last Name
  bool lname = false;
  while (lname == false) {
    stdout.write("| Last Name: ");
    var Lname = stdin.readLineSync()!;
    if (Lname == "") {
      print("It cant be empty");
    } else {
      user["lastName"] = Lname;
      lname = true;
    }
  }

//Phone No
  bool phoneno = false;
  while (phoneno == false) {
    stdout.write("| Phone no: ");
    String phone_no = stdin.readLineSync()!;

    if (phone_no == "") {
      print("It can't be empty");
    } else {
      user["phoneNo"] = phone_no;
      phoneno = true;
    }
  }

  bool nicno = false;
  while (nicno == false) {
    stdout.write("| NIC no: ");
    String NIC_no = (stdin.readLineSync()!);
    if (NIC_no == "") {
      print("It can't be empty");
    } else {
      user["nicNo"] = NIC_no;
      nicno = true;
    }
  }

  bool passportnum = false;
  while (passportnum == false) {
    stdout.write("| Passport Number: ");
    String passport_number = (stdin.readLineSync()!);
    if (passport_number == "") {
      print("It can't be empty");
    } else {
      user["passportNumber"] = passport_number;
      passportnum = true;
    }
  }

  bool isemail = false;
  while (isemail == false) {
    stdout.write("| Email: ");
    String email = (stdin.readLineSync()!);
    if (users.any((e) => e["email"] == email)) {
      print('email already exists. Please choose another email.');
      print("registeration failed!!!");
      registration();
    } else if (email == "") {
      print("It can't be empty");
    } else {
      user["email"] = email;
      isemail = true;
    }
  }

  bool ispassword = false;
  while (ispassword == false) {
    stdout.write("| Password: ");
    String password = (stdin.readLineSync()!); //user["password"] = password;
    if (password == "") {
      print("It can't be empty");
    } else {
      user["password"] = password;
      ispassword = true;
    }

    bool ispassconfirm = true;
    while (ispassconfirm == true) {
      stdout.write("| Confirm Password: ");
      String confirm_password = (stdin.readLineSync()!);
      if (confirm_password == password) {
        print("| !!!password confirmed!!!");
        print(
            "|__________________________________________________________________");
        user["password"] = password;
        ispassconfirm = false;
      } else {
        print("!!!password is not same!!!");
      }
    }

    users.add(user);

    print("            ____________________________________");
    print("           |  Your Account has been registered  |");
    print("           |____________________________________|");

    print("");

    home();
  }
}
