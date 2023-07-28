// import 'home.dart';
// import 'dart:io';
// import 'admin.dart';

// adminViewAllUserDetails() {
//   for (var n = 0; n <= users.length - 1; n++) {
//     print(users[n]["firstName"]);
//     stdout.write(users[n]["lastName"]);
//     print(users[n]);
//     print(
//         "                                                            Delete($n)");
//   }
//   print(
//       "                                                              Back(8)");
//   bool isadmindeleteuser = false;
//   while (isadmindeleteuser == false) {
//     print("Do you want to delete any user?");
//     var deleteuser = int.parse(stdin.readLineSync()!);
//     for (var n = 0; n <= users.length - 1; n++) {
//       if (deleteuser == 8) {
//         isadmindeleteuser = true;
//         admin();
//       } else {
//         users[deleteuser].remove(currentUser);
//         print("${users[deleteuser]["firstName"]} is deleted");
//       }
//     }
//   }
// }

import 'home.dart';
import 'dart:io';
import 'admin.dart';

adminViewAllUserDetails() {
  for (var n = 0; n < users.length; n++) {
    print("${users[n]["firstName"]} ${users[n]["lastName"]}");
    print(users[n]);
    print("Delete($n)");
  }
  print("Back(8)");

  bool isadmindeleteuser = false;
  while (isadmindeleteuser == false) {
    print("Do you want to delete any user?");
    var deleteuser = int.parse(stdin.readLineSync()!);

    if (deleteuser == 8) {
      isadmindeleteuser = true;
      admin();
    } else if (deleteuser >= 0 && deleteuser < users.length) {
      print("${users[deleteuser]["firstName"]} is deleted");
      users.removeAt(deleteuser);
    } else {
      print("Invalid option. Please enter a valid user index to delete.");
    }
  }
}
