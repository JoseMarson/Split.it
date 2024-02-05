import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_page.dart';
import 'package:split_it/modules/error/error_page.dart';
import 'package:split_it/modules/home/home_page.dart';
import 'package:split_it/modules/login/login_page.dart';

import 'package:split_it/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Slipt.it",
      home: SplashPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/error": (context) => ErrorPage(),
        "/home": (context) => HomePAge(),
        "/create_split": (context) => CreateSplitPage(),
      },
    );
  }
}
