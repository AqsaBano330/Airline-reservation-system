import 'dart:io';

import 'mainpage.dart';

flightschedule() {
  print(" __________________________________________________________________");
  print("|                                                                  |");
  print("|                            FLIGHT SCHEDULE                       |");
  print("|__________________________________________________________________|");

  bool isflightnumber = false;
  while (isflightnumber == false) {
    print("                                                [8] Back");
    print("Please Enter Flight number");
    String flightnumber = (stdin.readLineSync()!);

    for (var u = 0; u <= flights.length - 1; u++) {
      if (flightnumber == flights[u]["flightnumber"]) {
        print("Flight Number: ${flights[u]["flightnumber"]}");
        print("Source: ${flights[u]["source"]}");
        print("Destination: ${flights[u]["destination"]}");
        print("Depature Date: ${flights[u]["ddate"]}");
        print("Return Date: ${flights[u]["rdate"]}");
        print("Price: ${flights[u]["price"]}");
      } else if (flightnumber == 8) {
        isflightnumber = true;
        mainpage();
      } else {
        print("no matched flight");
      }
    }
  }
}
