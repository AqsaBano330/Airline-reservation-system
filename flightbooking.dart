import 'dart:io';

import 'home.dart';

flightbooking() {
  List flights = [
    {
      "source": "Karachi",
      "destination": "Pakistan",
      "departureTime": "1/8/23",
      "returnTime": "1/9/23",
      "price": "123000",
      "seat": "middle row",
      "cabinclass": "Economy"
    },
  ];

  print("==========Book your flight==========");
  stdout.write("Source: ");
  var source = stdin.readLineSync();
  stdout.write("Destination: ");
  var destination = stdin.readLineSync();
  stdout.write("Departure Date: ");
  var ddate = stdin.readLineSync();
  stdout.write("Return Date: ");
  var rdate = stdin.readLineSync();
  stdout.write("Seat: ");
  var seat = stdin.readLineSync();
  stdout.write("Cabin Class: ");
  var cabinclass = stdin.readLineSync();

  Map inputflight = {
    "source": source,
    "destination": destination,
    "departureTime": ddate,
    "returnTime": rdate,
    "seat": seat,
    "cabinclass": cabinclass
  };

  for (var b = 0; b <= flights.length - 1; b++) {
    if (inputflight["source"] == flights[b]["source"] &&
        inputflight["destination"] == flights[b]["destination"] &&
        inputflight["ddate"] == flights[b]["ddate"] &&
        inputflight["rdate"] == flights[b]["rdate"] &&
        inputflight["seat"] == flights[b]["seat"] &&
        inputflight["cabinclass"] == flights[b]["cabinclass"]) {
      currentUser.addAll(flights[b]);
    } else {
      print("Your requirements are not matched");
      print("Try with only source and destination");
      if (inputflight["source"] == flights[b]["source"] &&
          inputflight["destination"] == flights[b]["destination"]) {
        print(flights[b]);
      }
    }
  }

  for (var e = 0; e < users.length - 1; e++) {
    if (users[e]["email"] == currentUser["email"]) {
      users[e].add(currentUser);
    }
  }
  print(currentUser);
  print(users);
}
