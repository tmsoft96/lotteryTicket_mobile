import 'dart:convert';

import 'package:lottery_ticket/config/sharePreference.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<String> checkSession() async {
  String auth = "not auth";
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.containsKey("auth")) {
    if (prefs.getBool("auth")!) {
      auth = "auth";
    } else {
      auth = "not auth";
    }
  } else {
    saveBoolShare(key: "auth", data: false);
    auth = "not auth";
  }

  // auth = false;
  await Future.delayed(Duration(seconds: 3), () async {
    //load all data here
    SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      if (prefs.containsKey("userDetails")) {
        String encodedData = prefs.getString("userDetails")!;
        var decodedData = json.decode(encodedData);
        print(decodedData);
        // userModel = UserModel.fromJson(decodedData);
      } else {
        print("please log in");
        auth = "not auth";
      }
    } catch (e) {
      print("please log in");
      auth = "not auth";
    }
  });
  return auth;
}
