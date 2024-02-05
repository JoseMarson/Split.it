import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(child: Text("Error na inicialização do Firebase")),
    );
  }
}
