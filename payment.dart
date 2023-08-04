import 'dart:io';

import 'endingnote.dart';
import 'home.dart';

int countDigits(int number) {
  String numberString = number.toString();

  return numberString.length;
}

payment() {
  print("                               PAYMENT                           ");

  print("Please add your credit card number (must be 14 digits)");

  int creditnumber = int.parse(stdin.readLineSync()!);

  int digitCount = countDigits(creditnumber);

  if (digitCount == 14) {
    print(" ${currentUser['price']} is deducted from your card ");

    endingnote();
  } else {
    print("number is invalid");
    print("Try Again");
    payment();
  }
}
