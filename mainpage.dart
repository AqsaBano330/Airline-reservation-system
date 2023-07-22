import 'dart:io';

import 'accountdetails.dart';
import 'flightbooking.dart';

mainpage() {
  var kiachahteho = stdin.readLineSync();
  print("Account details");
  accountDetails();
  print("Book Fligh");

  flightbooking();

  print("Your Booking");
  print("Flight Schedule");
  print("logout");
}
