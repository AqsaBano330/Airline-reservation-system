import 'admin.dart';
import 'dart:io';
import 'mainpage.dart';

allflights() {
  for (var m = 0; m <= flights.length - 1; m++) {
    print(flights[m]);

    print("                                                     Delete($m)");
  }
  print("                                                       Back(8)");

  bool isadmindeleteflight = false;
  while (isadmindeleteflight == false) {
    print("Do you want to delete any flight?");
    var deleteflight = int.parse(stdin.readLineSync()!);

    if (deleteflight == 8) {
      isadmindeleteflight = true;
      admin();
    } else if (deleteflight >= 0 && deleteflight < flights.length) {
      print("Flight ${flights[deleteflight]["flightnumber"]} is deleted");
      flights.removeAt(deleteflight);
    } else {
      print("Invalid option. Please enter a valid flight index to delete.");
    }
  }
}
