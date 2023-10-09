import 'package:flutter/material.dart';
import 'package:flutter_stock_trading_app_clone/Presentation/Screens/home_page_screen.dart';
import 'package:pull_down_button/pull_down_button.dart';

/*
Title:Entry Point of App
Purpose:Entry Point of App
Created On :09/10/2023
Edited On:09/10/2023
Author: Kalpesh Khandla
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dividerColor: const Color.fromARGB(255, 52, 52, 52),
        extensions: const [
          PullDownButtonTheme(
            dividerTheme: PullDownMenuDividerTheme(
              dividerColor: Color.fromARGB(255, 21, 21, 21),
              largeDividerColor: Color.fromARGB(255, 21, 21, 21),
            ),
            routeTheme: PullDownMenuRouteTheme(
              backgroundColor: Color.fromARGB(255, 31, 31, 31),
            ),
            itemTheme: PullDownMenuItemTheme(
              destructiveColor: Colors.red,
              textStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        dividerTheme: const DividerThemeData(
          thickness: 0.8,
          color: Color.fromARGB(255, 52, 52, 52),
        ),
        primaryColor: const Color.fromARGB(255, 78, 172, 248),
      ),
      home: HomePageScreen(),
    );
  }
}
