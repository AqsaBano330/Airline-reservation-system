// // import 'dart:io';
// // import 'adminvViewAllUserDetails.dart';
// // import 'allflights.dart';
// // import 'mainpage.dart';

// // admin() {
// //   print("=======================Admin Panel=======================");

// //   print("[1] Check users Details");
// //   print("[2] view all flights");
// //   print("[3] View Bookings");
// //   print("[4] Logout");

// //   String adminchoice = stdin.readLineSync()!;
// //   if (adminchoice == "1") {
// //     adminViewAllUserDetails();
// //   } else if (adminchoice == "2") {
// //     allflights(flights);
// //   } else if (adminchoice == "3") {
// //     mainpage();
// //   } else if (adminchoice == "4") {
// //     mainpage();
// //   }
// // }

// import 'dart:io';
// import 'adminvViewAllUserDetails.dart';
// import 'allflights.dart';
// import 'mainpage.dart';

// admin(flights) {
//   print("=======================Admin Panel=======================");

//   print("[1] Check users Details");
//   print("[2] view all flights");
//   print("[3] View Bookings");
//   print("[4] Logout");

//   print("Where you want to go?");
//   String adminchoice = stdin.readLineSync()!;
//   if (adminchoice == "1") {
//     adminViewAllUserDetails(flights);
//   } else if (adminchoice == "2") {
//     allflights(
//         flights); // Assuming 'allflights' function takes the 'flights' list as a parameter.
//   } else if (adminchoice == "3") {
//     mainpage();
//   } else if (adminchoice == "4") {
//     mainpage();
//   }
// }

import 'dart:io';
import 'adminvViewAllUserDetails.dart';
import 'allflights.dart';
import 'mainpage.dart';
import 'viewAllBookings.dart';

admin() {
  print("                       ADMIN FLIGHT                             ");

  print("1 Check users Details");
  print("2 view all flights");
  print("3 View Bookings");
  print("4 Logout");

  print("Where you want to go?");
  String adminchoice = stdin.readLineSync()!;
  if (adminchoice == "1") {
    adminViewAllUserDetails();
  } else if (adminchoice == "2") {
    allflights();
  } else if (adminchoice == "3") {
    viewAllBookings();
  } else if (adminchoice == "4") {
    mainpage();
  } else {
    print("invalid choice");
  }
}
