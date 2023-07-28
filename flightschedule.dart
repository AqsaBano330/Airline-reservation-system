import 'dart:io';

import 'mainpage.dart';

flightschedule(List flights) {
  print("===================== Flights Schedules================");

  bool isflightnumber = false;
  while (isflightnumber == false) {
    print("                                                Back(8)");
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
      } else if (flightnumber == 8) {
        isflightnumber = true;
        mainpage();
      }
    }
  }
}
