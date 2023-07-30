import 'dart:io';
import 'accountdetails.dart';
import 'bookingdetails.dart';
import 'flightbooking.dart';
import 'flightschedule.dart';
import 'home.dart';

List flights = [
  {
    "source": "Karachi",
    "destination": "Lahore",
    "ddate": "1/8/23",
    "rdate": "1/9/23",
    "price": "123000",
    "seat": "middle row",
    "cabinclass": "Economy",
    "flightnumber": "605433"
  },
  {
    "source": "Karachi",
    "destination": "Lahore",
    "ddate": "2/8/23",
    "rdate": "2/9/23",
    "price": "2590000",
    "seat": "window",
    "cabinclass": "Business",
    "flightnumber": "676676"
  }
];
mainpage() {
  print(" __________________________________________________________________");
  print("|                                                                  |");
  print("|                               AK AIRLINES                        |");
  print("|__________________________________________________________________|");
  print(
      "| Hi ${currentUser["firstName"]},                                                      |");
  print("| Book Your Flight Today!                                          |");
  print("|                                                                  |");
  print("|                             DASHBOARD                            |");
  print("|                            ===========                (L) Logout |");
  print("|                                                                  |");
  print("| [D] Account details                       [B] Book Flight        |");
  print("| [Y] Your Booking                          [F] Flight Schedule    |");
  print("|                                                                  |");
  print("| Please Enter your choice:                                        |");
  print("|__________________________________________________________________|");

  bool isbolo = false;
  while (isbolo == false) {
    var bolo = stdin.readLineSync();
    if (bolo == "D" || bolo == "d") {
      accountDetails();
    } else if (bolo == "B" || bolo == "b") {
      flightbooking();
      isbolo = true;
    } else if (bolo == "Y" || bolo == "y") {
      bookingdetails();
      isbolo = true;
    } else if (bolo == "F" || bolo == "f") {
      flightschedule();
      isbolo = true;
    } else if (bolo == "L" || bolo == "l") {
      home();
      isbolo = true;
    } else if (bolo == "") {
      print("it can not be empty");
    }
  }
}
