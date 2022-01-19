import 'package:flutter/material.dart';
import 'package:test_app/screens/auth_screen.dart';
import 'package:test_app/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LBPA',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        backgroundColor: Colors.black,
        accentColor: Colors.deepPurple,
        accentColorBrightness: Brightness.dark,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.white,
          textTheme: ButtonTextTheme.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
      home: AuthScreen(),
    );
  }
}
