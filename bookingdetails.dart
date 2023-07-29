import 'dart:io';
import 'home.dart';
import 'mainpage.dart';

bookingdetails() {
  print("====================  Your Booking Details  ========================");

  bool isbookingid = false;

  while (isbookingid == false) {
    print("please enter booking id                                  <-Back(8)");
    var bookingid123 = int.parse(stdin.readLineSync()!);
    for (var n = 0; n <= users.length - 1; n++) {
      if (bookingid123 == currentUser["Bookingid"]) {
        stdout.write("| Booking ID: ");
        print(currentUser['Bookingid']);
        stdout.write("| Source: ");
        print(currentUser['source']);
        stdout.write("| Destination: ");
        print(
            "${currentUser['destination']}                       Cancel Booking(0)");
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
      } else if (bookingid123 == 8) {
        isbookingid = true;
        mainpage();
      } else if (bookingid123 == 0) {
        for (var g = 0; g < users.length; g++) {
          if (currentUser["Bookingid"] == users[g]["Bookingid"]) {
            users[g].remove("Bookingid");
            users[g].remove("source");
            users[g].remove("destination");
            users[g].remove("ddate");
            users[g].remove("rdate");
            users[g].remove("price");
            users[g].remove("seat");
            users[g].remove("cabinclass");
            users[g].remove("flightNumber");

            print("Booking canceled");
          }
        }
      } else {
        print("There is no Booking");
      }
    }
  }
}
