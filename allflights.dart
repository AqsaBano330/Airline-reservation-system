import 'admin.dart';
import 'home.dart';
import 'mainpage.dart';
import 'dart:io';

allflights(flights) {
  for (var n = 0; n <= flights - 1; n++) {
    print(flights[n]);

    print("                                                     Delete(n)");
    print("                                                       Back(8)");

    bool isadmindeleteflight = false;
    while (isadmindeleteflight == false) {
      print("Do you want to delete any flight?");
      var deleteflight = int.parse(stdin.readLineSync()!);

      if (deleteflight == 8) {
        isadmindeleteflight = true;
        admin();
      } else if (deleteflight >= 0 && deleteflight < users.length) {
        flights.removeAt(deleteflight);
      } else {
        print("Invalid option. Please enter a valid flight index to delete.");
      }
    }
  }
}
