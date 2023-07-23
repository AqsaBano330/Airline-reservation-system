import 'dart:io';

import 'accountdetails.dart';
import 'flightbooking.dart';
import 'home.dart';
import 'regsiteration.dart';

mainpage() {
  print("===============================");
  print("Hi ${currentUser["firstName"]},");
  print("Hope you will enjoy your journey");
  print("Account details(D)");
  print("Book Flight(B)");
  print("Your Booking(Y)");
  print("Flight Schedule(F)");
  print("logout(L)");

  var bolo = stdin.readLineSync();
  if (bolo == "D" || bolo == "d") {
    accountDetails();
  } else if (bolo == "B" || bolo == "b") {
    flightbooking();
  } else if (bolo == "Y" || bolo == "y") {
  } else if (bolo == "F" || bolo == "f") {
  } else if (bolo == "L" || bolo == "l") {
    main();
  }
}
