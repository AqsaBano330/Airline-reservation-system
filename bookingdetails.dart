import 'dart:io';

import 'home.dart';
import 'mainpage.dart';

bookingdetails() {
  print("====================  Your Booking Details  ========================");

  bool isbookingid = false;

  while (isbookingid == false) {
    print("please enter booking id");
    var bookingid123 = int.parse(stdin.readLineSync()!);
    print(bookingid123);
    print(currentUser["Bookingid"]);

    if (bookingid123 == currentUser["Bookingid"]) {
      stdout.write("| Booking ID: ");
      print(currentUser['Bookingid']);
      stdout.write("| Source: ");
      print(currentUser['source']);
      stdout.write("| Destination: ");
      print(currentUser['destination']);
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
      print("                                            <-Back(8)");
    } else if (bookingid123 == 8) {
      isbookingid = true;
      mainpage();
    } else if (bookingid123 == 0) {
      users.remove(currentUser['Bookingid']);
      users.remove(currentUser["source"]);
      users.remove(currentUser["destination"]);
      users.remove(currentUser["ddate"]);
      users.remove(currentUser["rdate"]);
      users.remove(currentUser["price"]);
      users.remove(currentUser["seat"]);
      users.remove(currentUser["cabinclass"]);

      print("Flight deletd");
    } else {
      print("There is no Booking");
    }
  }
}
