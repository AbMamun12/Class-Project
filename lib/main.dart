// class 8.3 padding, margin, elevation button, dialog box, bottom sheet dialog,container
import 'package:class_project/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: 'IntroApp',
      theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.green,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.2)),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.pink,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ))),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.green,
              width: 2,
            )),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(23),
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 2,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(23),
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 2,
                )),
          ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontSize: 20
        ) ,
        titleLarge: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w600
        ),
        titleSmall: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600
        ),
      ),
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.pink,
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2)),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                foregroundColor: Colors.pink,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ))),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.green,
            width: 2,
          )),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(23),
              borderSide: BorderSide(
                color: Colors.green,
                width: 2,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(23),
              borderSide: BorderSide(
                color: Colors.green,
                width: 2,
              )),
        ),
      ),
      themeMode: ThemeMode.light,
    );
  }
}


