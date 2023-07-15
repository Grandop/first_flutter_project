import 'package:flutter/material.dart';
import 'package:study_project/home_page.dart';

import 'login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      initialRoute: '/home',
      routes: {
        '/login':(context) => const LoginPage(),
        '/home':(context) => const HomePage(),
      },
    );
  }
}