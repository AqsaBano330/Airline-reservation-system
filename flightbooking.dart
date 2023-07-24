import 'dart:io';
import 'dart:math';

import 'home.dart';

flightbooking() {
  var random = Random();
  print("");

  List flights = [
    {
      "source": "Karachi",
      "destination": "Pakistan",
      "ddate": 1,
      "rdate": 1,
      "price": "123000",
      "seat": "middle row",
      "cabinclass": "Economy",
      "flightnumber": 065433
    },
    {
      "source": "Karachi",
      "destination": "Pakistan",
      "ddate": 1,
      "rdate": 1,
      "price": 1,
      "seat": "a",
      "cabinclass": "a",
      "flightnumber": 676676
    }
  ];

  print("==================Book your flight=================");

  stdout.write("Source: ");
  var source = stdin.readLineSync();
  stdout.write("Destination: ");
  var destination = stdin.readLineSync();
  stdout.write("Departure Date: ");
  var ddate = int.parse(stdin.readLineSync()!);
  stdout.write("Return Date: ");
  var rdate = int.parse(stdin.readLineSync()!);
  stdout.write("Seat: ");
  var seat = stdin.readLineSync();
  stdout.write("Cabin Class: ");
  var cabinclass = stdin.readLineSync();

  Map inputflight = {
    "source": source,
    "destination": destination,
    "ddate": ddate,
    "rdate": rdate,
    "seat": seat,
    "cabinclass": cabinclass
  };
  bool isflight = false;

  for (var b = 0; b <= flights.length - 1; b++) {
    if (inputflight["source"] == flights[b]["source"] &&
        inputflight["destination"] == flights[b]["destination"] &&
        inputflight["ddate"] == flights[b]["ddate"] &&
        inputflight["rdate"] == flights[b]["rdate"] &&
        inputflight["seat"] == flights[b]["seat"] &&
        inputflight["cabinclass"] == flights[b]["cabinclass"]) {
      print("here is your flight sir");
      currentUser.addAll(flights[b]);
      print(flights[b]);
      isflight = true;
      currentUser.addAll(flights[b]);
      int Booking_id = random.nextInt(100) + 1;
      currentUser["Bookingid"] = Booking_id;

      break;
    }
  }

  //payment();
  if (isflight != true) {
    print("Your requiremenrs are not matched");
    print("Here are the flights from $source to $destination");
    for (var b = 0; b <= flights.length - 1; b++) {
      if (inputflight["source"] == flights[b]["source"] &&
          inputflight["destination"] == flights[b]["destination"]) {
        print(flights[b]);
      }
    }
    print(
        "                                                                            <-Go Back(B)");

    var jao = stdin.readLineSync();

    if (jao == "b" || jao == "B") {
      flightbooking();
    }
  }

  // for (var e = 0; e < users.length - 1; e++) {
  //   if (users[e]["email"] == currentUser["email"]) {
  //     users[e].add(currentUser);
  //   }
  // }

  print(currentUser);
  print(users);
}
