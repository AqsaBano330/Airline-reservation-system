import 'dart:io';

import 'home.dart';

bookingdetails() {
  print("====================Your Booking Details========================");

  var bookingid123 = int.parse(stdin.readLineSync()!);

  if (bookingid123 = currentUser["Bookingid"]) {
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
  }
}
