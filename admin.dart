import 'dart:io';

import 'adminvViewAllUserDetails.dart';
import 'mainpage.dart';

admin() {
  print("=======================Admin Panel=======================");

  print("[1] Check users Details");
  print("[2] view all flights");
  print("[3] View Bookings");
  print("[4] Logout");

  String adminchoice = stdin.readLineSync()!;
  if (adminchoice == "1") {
    adminViewAllUserDetails();
  } else if (adminchoice == "2") {
    mainpage();
  } else if (adminchoice == "3") {
    mainpage();
  } else if (adminchoice == "4") {
    mainpage();
  }
}
