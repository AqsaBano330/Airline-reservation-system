import 'dart:io';

import 'home.dart';
import 'mainpage.dart';

bookingdetails() {
  print("====================  Your Booking Details  ========================");

  bool isbookingid = false;

  while (isbookingid = false) {
    print("please enter booking id");
    var bookingid123 = int.parse(stdin.readLineSync()!);
    print(bookingid123);
    print(currentUser["Bookingid"]);

    if (bookingid123 == currentUser["Bookingid"]) {
      stdout.write("| Booking ID: ");
      print("{$currentUser['Bookingid']}  |");
      stdout.write("| Source: ");
      print("{$currentUser['source']}   |");
      stdout.write("| Destination: ");
      print("{$currentUser['destination']}");
      stdout.write("| Departure Date: ");
      print(currentUser["ddate"]);
      stdout.write("| Return Date: ");
      print(currentUser["rdate"]);
      stdout.write("| Price: ");
      print(currentUser["price"]);
      stdout.write("| Seat: ");
      print(currentUser["seat"]);
      stdout.write("| Cabin Class: ");
      print(currentUser["cabinclass"]);
      print("                                            <-Back(B)");
    }
    if (bookingid123 == "B" || bookingid123 == "b") {
      isbookingid = true;
      mainpage();
    }
  }
}
