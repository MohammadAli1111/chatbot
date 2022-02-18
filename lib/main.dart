import 'package:chatbot/MyColors.dart';
import 'package:chatbot/views/Star.dart';
import 'package:flutter/material.dart';
import 'Routes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: color1,
        accentColor: color1,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: color1,fontSize: 14,
              fontStyle: FontStyle.normal,fontWeight: FontWeight.w700),
        )

      ),
      title: 'ChatBot',
      debugShowCheckedModeBanner: false,
      initialRoute:Star.route,
      routes: routes,
    );
  }
}