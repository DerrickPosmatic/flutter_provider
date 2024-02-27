import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String userName;

  UserProvider({
    this.userName = 'MyApp',
  });

  void changeUserName({required String newName}) {
    userName = newName;
    notifyListeners();
  }
}
