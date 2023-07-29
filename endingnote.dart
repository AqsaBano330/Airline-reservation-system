import 'dart:io';

import 'home.dart';
import 'mainpage.dart';

endingnote() {
  print("*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *");
  print("*                                                                 *");
  print("*                                                                 *");
  print("*           CONGRATULATION YOUR FLIGHT HAS BEEN BOOKED!!!         *");
  print("*                        EXPLORE THE WORLD!!!                     *");
  print("*                                                                 *");
  print("*                                                                 *");
  print("*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *");

  print("Flight info:");
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

  print("                                                           <-Back(B)");

  var endingnoteinput = stdin.readLineSync();

  if (endingnoteinput == "b" || endingnoteinput == "B") {
    mainpage();
  }
}
