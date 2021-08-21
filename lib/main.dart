import 'package:flutter/material.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/styles.dart';

import 'pages/homepage/homepage.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: BACKGROUND,
        primaryColor: WHITE,
        disabledColor: PRIMARYCOLOR,
        appBarTheme: AppBarTheme(
          backgroundColor: BACKGROUND,
          elevation: .1,
          centerTitle: true,
          iconTheme: IconThemeData(color: PRIMARYCOLOR),
          actionsIconTheme: IconThemeData(color: PRIMARYCOLOR),
          textTheme: TextTheme(headline6: h4Primary),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
