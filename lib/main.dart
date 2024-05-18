import 'package:flutter/material.dart';
import 'package:user_login/src/user_login.dart';
import 'package:user_login/src/page/facebook.dart';
import 'package:user_login/src/page/google.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const App(),
      },
    );
  }
}
