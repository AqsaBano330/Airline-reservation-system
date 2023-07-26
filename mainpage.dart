import 'dart:io';

import 'accountdetails.dart';
import 'bookingdetails.dart';
import 'flightbooking.dart';
import 'flightschedule.dart';
import 'home.dart';

mainpage() {
  List flights = [
    {
      "source": "Karachi",
      "destination": "Pakistan",
      "ddate": 1,
      "rdate": 1,
      "price": "123000",
      "seat": "middle row",
      "cabinclass": "Economy",
      "flightnumber": 065433
    },
    {
      "source": "Karachi",
      "destination": "Pakistan",
      "ddate": 1,
      "rdate": 1,
      "price": 1,
      "seat": "a",
      "cabinclass": "a",
      "flightnumber": 676676
    }
  ];

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

  bool isbolo = false;
  while (isbolo == false) {
    var bolo = stdin.readLineSync();
    if (bolo == "D" || bolo == "d") {
      accountDetails();
    } else if (bolo == "B" || bolo == "b") {
      flightbooking(flights);
      isbolo = true;
    } else if (bolo == "Y" || bolo == "y") {
      bookingdetails();
      isbolo = true;
    } else if (bolo == "F" || bolo == "f") {
      flightschedule(flights);
      isbolo = true;
    } else if (bolo == "L" || bolo == "l") {
      home();
      isbolo = true;
    } else if (bolo == "") {
      print("it can not be empty");
    }
  }
}
