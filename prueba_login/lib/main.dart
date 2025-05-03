import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prueba_login/src/widgets/login_screen.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(title: 'QuickBites', home: LoginScreen());
  }
}
