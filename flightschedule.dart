import 'bookingdetails.dart';
import 'flightbooking.dart';
import 'dart:io';

flightschedule(List flights) {
  print("===================== Flights Schedules================");

  print("Please Enter Flight number");
  int flightnumber = int.parse(stdin.readLineSync()!);

  for (var u = 0; u <= flights.length - 1; u++) {
    if (flightnumber == flights[u]["flightnumber"]) {
      print(flights[u]["flightnumber"]);
      print(flights[u]["source"]);
      print(flights[u]["destination"]);
      print(flights[u]["ddate"]);
      print(flights[u]["rdate"]);
      print(flights[u]["price"]);
    }
  }
}
