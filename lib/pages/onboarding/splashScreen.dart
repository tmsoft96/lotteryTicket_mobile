import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottery_ticket/config/checkSession.dart';
import 'package:lottery_ticket/config/navigation.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/images.dart';
import 'package:lottery_ticket/spec/properties.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkSession().then((status) async {
      print(status);
      if (status == "auth") {
        navigation(context: context, pageName: "homepage");
      } else {
        //check if user is authenticated
        // navigation(context: context, pageName: "login");
        navigation(context: context, pageName: "homepage");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: WHITE,
      body: Center(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(LOGO),
      )),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Text(VERSION),
      ),
    );
  }
}
