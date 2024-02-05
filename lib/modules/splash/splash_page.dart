import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void intializeFirebase() async {
    try {
      await Firebase.initializeApp();
      Future.delayed(Duration(seconds: 3));
      Navigator.pushReplacementNamed(context, "/login");
    } catch (e) {
      Navigator.pushNamed(context, "/error");
    }
  }

  @override
  void initState() {
    intializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(gradient: AppTheme.gradients.backgound),
          child: SafeArea(
              top: true,
              bottom: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Opacity(
                              opacity: 0.2,
                              child: Image.asset(
                                "assets/images/retangulo-dir.png",
                                width: 198,
                                height: 98,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Opacity(
                              opacity: 0.2,
                              child: Image.asset(
                                "assets/images/retangulo-dir.png",
                                width: 114,
                                height: 54,
                              ))
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    width: 194,
                    height: 160,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Opacity(
                              opacity: 0.5,
                              child: Image.asset(
                                "assets/images/retangulo-esq.png",
                                width: 114,
                                height: 54,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Opacity(
                              opacity: 0.5,
                              child: Image.asset(
                                "assets/images/retangulo-esq.png",
                                width: 198,
                                height: 98,
                              ))
                        ],
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
