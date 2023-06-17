import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilis/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.LightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: Myroute.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        Myroute.homeRoute: (context) => Homepage(),
        Myroute.loginRoute: (context) => LoginPage()
      },
    );
  }
}
