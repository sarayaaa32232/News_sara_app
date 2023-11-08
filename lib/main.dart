import 'package:flutter/material.dart';
import 'package:untitled8/home/Homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Color(0xFF39A552),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ))),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF39A552),
          primary: Color(0xFF39A552),
        ),
        useMaterial3: true,
      ),
      routes: {
        Homescreen.RouteName: (_) => Homescreen(),
      },
      initialRoute: Homescreen.RouteName,
    );
  }
}
