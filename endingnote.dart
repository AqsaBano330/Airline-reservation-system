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

  print(" __________________________________________________________________");
  print("|                                                                  |");
  print("|                              FLIGHT INFO                         |");
  print("|__________________________________________________________________|");

  stdout.write("|    Booking ID: ");
  print(currentUser['Bookingid']);
  stdout.write("|    Source: ");
  print(currentUser['source']);
  stdout.write("|    Destination: ");
  print(currentUser['destination']);
  stdout.write("|    Departure Date: ");
  print(currentUser["ddate"]);
  stdout.write("|    Return Date: ");
  print(currentUser["rdate"]);
  stdout.write("|    Price: ");
  print(currentUser["price"]);
  stdout.write("|    Seat: ");
  print(currentUser["seat"]);
  stdout.write("|    Cabin Class: ");
  print(currentUser["cabinclass"]);
  print("|                                                       [B] <-Back |");
  print("|__________________________________________________________________|");

  var endingnoteinput = stdin.readLineSync();
  bool isendingnote = false;
  while (isendingnote == false) {
    if (endingnoteinput == "b" || endingnoteinput == "B") {
      isendingnote = true;
      mainpage();
    } else if (endingnoteinput == "") {
      print("Cant be empty. please add some value");
    } else {
      print("invalid input!!!");
    }
  }
}
