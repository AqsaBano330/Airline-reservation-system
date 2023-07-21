import 'dart:io';

void main() {
  List users = [];
  Map currentUser = {};

  while (true) {
    print('1. Sign up');
    print('2. Sign in');
    print('3. Check details');
    print('4. Logout');
    print('5. Exit');

    stdout.write('Enter your choice: ');
    var choice = int.tryParse(stdin.readLineSync()!);

    if (choice == 1) {
      signUp(users);
    } else if (choice == 2) {
      currentUser = signIn(users);
    } else if (choice == 3) {
      if (currentUser.isNotEmpty) {
        print('Your Details:');
        print('Username: ${currentUser['username']}');
        print('Name: ${currentUser['name']}');
        print('Email: ${currentUser['email']}');
      } else {
        print('You are not logged in. Please sign in to check your details.');
      }
    } else if (choice == 4) {
      if (currentUser.isNotEmpty) {
        print('Goodbye, ${currentUser['name']}!');
        currentUser = {}; // Reset to an empty map
      } else {
        print('You are not logged in.');
      }
    } else if (choice == 5) {
      print('Goodbye!');
      exit(0);
    } else {
      print('Invalid choice. Please try again.');
    }
  }
}

void signUp(List users) {
  print('Sign Up');
  stdout.write('Enter your username: ');
  var username = stdin.readLineSync();

  if (users.any((user) => user['username'] == username)) {
    print('Username already exists. Please choose another username.');
    return;
  }

  stdout.write('Enter your password: ');
  var password = stdin.readLineSync();
  stdout.write('Enter your name: ');
  var name = stdin.readLineSync();
  stdout.write('Enter your email: ');
  var email = stdin.readLineSync();

  var user = {
    'username': username,
    'password': password,
    'name': name,
    'email': email,
  };
  users.add(user);

  print('Sign up successful!');
}

Map signIn(List users) {
  print('Sign In');
  stdout.write('Enter your username: ');
  var username = stdin.readLineSync();
  stdout.write('Enter your password: ');
  var password = stdin.readLineSync();

  var user = users.firstWhere(
      (user) => user['username'] == username && user['password'] == password,
      orElse: () => Map<String, String>()); // Initialize as an empty map

  if (user.isNotEmpty) {
    print('Sign in successful! Welcome, ${user['name']} (${user['email']}).');
  } else {
    print('Invalid username or password. Please try again.');
  }

  return user;
}
