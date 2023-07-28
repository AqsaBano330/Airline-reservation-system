import 'dart:io';
import 'home.dart';
import 'mainpage.dart';

bookingdetails() {
  print("====================  Your Booking Details  ========================");

  bool isbookingid = false;

  while (isbookingid == false) {
    print(
        "please enter booking id                                     <-Back(8)");
    var bookingid123 = int.parse(stdin.readLineSync()!);

    for (var c = 0; c < users.length; c++) {
      if (bookingid123 == users[c]["Bookingid"]) {
        stdout.write("| Booking ID: ");
        print(users[c]['Bookingid']);
        stdout.write("| Source: ");
        print(users[c]['source']);
        stdout.write("| Destination: ");
        print(users[c]['destination']);
        stdout.write("| Departure Date: ");
        print(users[c]["ddate"]);
        stdout.write("| Return Date: ");
        print(users[c]["rdate"]);
        stdout.write("| Price: ");
        print(users[c]["price"]);
        stdout.write("| Seat: ");
        print(users[c]["seat"]);
        stdout.write("| Cabin Class: ");
        print(users[c]["cabinclass"]);
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
            print(users);

            print("Flight deleted");
          }
        }
      } else {
        print("There is no Booking");
      }
    }
  }
}
