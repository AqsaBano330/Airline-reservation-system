import 'dart:io';
import 'dart:math';
import 'mainpage.dart';
import 'home.dart';
import 'payment.dart';

flightbooking() {
  Map inputflight = {};
  var random = Random();
  print("");

  print("|                         BOOK YOUR FLIGHT                         |");

  //Source

  bool issource = false;
  while (issource == false) {
    stdout.write("|    Source: ");
    var source = stdin.readLineSync();
    if (source == "") {
      print("It cant be empty");
    } else {
      inputflight["source"] = source;
      issource = true;
    }
  }
  //Destination

  bool isdestination = false;

  while (isdestination == false) {
    stdout.write("|    Destination: ");
    var destination = stdin.readLineSync();
    if (destination == "") {
      print("It cant be empty");
    } else {
      inputflight["destination"] = destination;
      isdestination = true;
    }
  }

//ddate
  bool isddate = false;

  while (isddate == false) {
    stdout.write("|    Departure Date: ");
    String ddate = (stdin.readLineSync()!);
    if (ddate == "") {
      print("It cant be empty");
    } else {
      inputflight["ddate"] = ddate;
      isddate = true;
    }
  }

//rdate
  bool isrdate = false;
  while (isrdate == false) {
    stdout.write("|    Return Date: ");
    String rdate = (stdin.readLineSync()!);
    if (rdate == "") {
      print("It cant be empty");
    } else {
      inputflight["rdate"] = rdate;
      isrdate = true;
    }
  }

//seat
  bool isseat = false;
  while (isseat == false) {
    stdout.write("|    Seat: ");
    String seat = stdin.readLineSync()!;
    if (seat == "") {
      print("It cant be empty");
    } else {
      inputflight["seat"] = seat;
      isseat = true;
    }
  }

  bool iscabinclass = false;
  while (iscabinclass == false) {
    stdout.write("|    Cabin Class: ");
    String cabinclass = stdin.readLineSync()!;
    if (cabinclass == "") {
      print("It cant be empty");
    } else {
      inputflight["cabinclass"] = cabinclass;
      iscabinclass = true;
    }
  }

  bool isflight = false;

  for (var b = 0; b <= flights.length - 1; b++) {
    if (inputflight["source"] == flights[b]["source"] &&
        inputflight["destination"] == flights[b]["destination"] &&
        inputflight["ddate"] == flights[b]["ddate"] &&
        inputflight["rdate"] == flights[b]["rdate"] &&
        inputflight["seat"] == flights[b]["seat"] &&
        inputflight["cabinclass"] == flights[b]["cabinclass"]) {
      print("Here is your desired flight sir...");
      currentUser.addAll(flights[b]);

      print("| Flight No.    | ${flights[b]["flightnumber"]}  ");
      print("| Source        | ${flights[b]["source"]}  ");
      print("| Destination   | ${flights[b]["destination"]}   ");
      print("| Departure Date| ${flights[b]["ddate"]} ");
      print("| Return Date   | ${flights[b]["rdate"]}  ");
      print("| Price         | ${flights[b]["price"]}  ");
      print("| Seat          | ${flights[b]["seat"]}  ");
      print("| Cabin Class   | ${flights[b]["cabinclass"]}   ");

      isflight = true;
      currentUser.addAll(flights[b]);
      int Booking_id = random.nextInt(100) + 1;
      currentUser["Bookingid"] = Booking_id;
      print("                                                 [P] Payment");
      print("                                                 [B] <- Back");
      print('PLese Enter your choice.');
      var paymentoutput = stdin.readLineSync();
      if (paymentoutput == "p" || paymentoutput == "P") {
        payment();
      } else if (paymentoutput == "b" || paymentoutput == "B") {
        mainpage();
      } else {
        print("print Invalid Choice");
      }
      break;
    }
  }
  //payment();
  if (isflight != true) {
    print("Your requiremenrs are not matched");
    print(
        "Here are the flights from ${inputflight["source"]} to ${inputflight["destination"]}");
    for (var b = 0; b <= flights.length - 1; b++) {
      if (inputflight["source"] == flights[b]["source"] &&
          inputflight["destination"] == flights[b]["destination"]) {
        print(" ________________________________");
        print("| Flight No.    | ${flights[b]["source"]}  ");
        print("| Source        | ${flights[b]["destination"]}  ");
        print("| Destination   | ${flights[b]["ddate"]}   ");
        print("| Departure Date| ${flights[b]["rdate"]} ");
        print("| Return Date   | ${flights[b]["price"]}  ");
        print("| Price         | ${flights[b]["seat"]}  ");
        print("| Seat          | ${flights[b]["cabinclass"]}  ");
        print("| Cabin Class   | ${flights[b]["flightnumber"]}   ");
      }
    }
    print(
        "                                                                            <-Go Back(B)");

    var jao = stdin.readLineSync();

    if (jao == "b" || jao == "B") {
      flightbooking();
    }
  }

  print(currentUser);
  print(users);
}
