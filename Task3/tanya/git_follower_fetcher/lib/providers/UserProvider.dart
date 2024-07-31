import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:git_follower_fetcher/models/user.dart';
import 'package:git_follower_fetcher/requests/Githubrequests.dart';

class UserProvider with ChangeNotifier {
  late User user;
  late String errorMessage;
  bool loading = false;

  Future<bool> fetchUser(username) async {
    setLoading(true);
    await Github(username).fetchUser().then((data) {
      setLoading(false);
      if (data.statusCode == 200) {
        setUser(User.fromJson(json.decode(data.body)));
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        setMessage(result['message']);
      }
    });

    return isUser();
  }

  void setLoading(value) {
    loading = value;
    notifyListeners();
  }

  bool getLoading() {
    return loading;
  }

  void setUser(value) {
    user = value;
    notifyListeners();
  }

  User getUser() {
    return user;
  }

  void setMessage(value) {
    errorMessage = value;
    notifyListeners();
  }

  String getMessage() {
    return errorMessage;
  }

  bool isUser() {
    return user != null ? true : false;
  }
}
