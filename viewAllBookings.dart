// import 'home.dart';

// viewAllBookings() {
//   print(users);
//   for (var b = 0; b <= users.length - 1; b++) {
//     if (users[b].contains("Bookingid")) {
//       print(users[b]["firstName"]);
//       print(users[b]["lastName"]);
//       print(users[b]["source"]);
//       print(users[b]["destination"]);
//       print(users[b]["ddate"]);
//       print(users[b]["rdate"]);
//       print(users[b]["price"]);
//       print(users[b]["flightnumber"]);
//       print(users[b]["Bookingid"]);

//       print("");
//       print("");
//     }
//   }
// }

import 'dart:io';

import 'admin.dart';
import 'home.dart';

viewAllBookings() {
  bool isdeletebooking = false;

  for (var b = 0; b < users.length; b++) {
    if (users[b].containsKey("Bookingid")) {
      print(users[b]["firstName"]);
      print(users[b]["lastName"]);
      print(users[b]["source"]);
      print(users[b]["destination"]);
      print(users[b]["ddate"]);
      print(users[b]["rdate"]);
      print(users[b]["price"]);
      print(users[b]["flightnumber"]);
      print(users[b]["Bookingid"]);

      print("");
      print(
          "                                                        Delete($b)");
      print(
          "                                                            Back(8)");
    }
  }
  while (isdeletebooking == false) {
    print("Do you want to cancel flight?");
    var whatdelete = int.parse(stdin.readLineSync()!);

    if (whatdelete == 8) {
      isdeletebooking = true;
      admin();
    } else if (whatdelete >= 0 && whatdelete < users.length) {
      users[whatdelete].remove("source");
      users[whatdelete].remove("destination");
      users[whatdelete].remove("rdate");
      users[whatdelete].remove("ddate");
      users[whatdelete].remove("price");
      users[whatdelete].remove("seat");
      users[whatdelete].remove("cabinclass");
      users[whatdelete].remove('flightnumber');
      users[whatdelete].remove("Bookingid");

      print("Flight canceled");
      print(users);
    } else {
      print("invalid choice");
    }
  }
}
