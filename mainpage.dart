import 'dart:io';

import 'accountdetails.dart';
import 'flightbooking.dart';
import 'home.dart';
import 'regsiteration.dart';

mainpage() {
  print("");
  print("Hi ${currentUser["firstName"]},");
  print("Unlock Your Dreams, Soar to New Heights - Book Your Flight Today!");
  print("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
  print("Account details(D)");
  print("Book Flight(B)");
  print("Your Booking(Y)");
  print("Flight Schedule(F)");
  print("logout(L)");
  print("");
  stdout.write("Please enter your choice: ");
  var bolo = stdin.readLineSync();
  if (bolo == "D" || bolo == "d") {
    accountDetails();
  } else if (bolo == "B" || bolo == "b") {
    flightbooking();
  } else if (bolo == "Y" || bolo == "y") {
  } else if (bolo == "F" || bolo == "f") {
  } else if (bolo == "L" || bolo == "l") {
    // main();
  }
}
