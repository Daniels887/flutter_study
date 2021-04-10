import 'package:flutter/material.dart';
import 'package:flutter_study/app_controller.dart';
import 'package:flutter_study/home_page.dart';
import 'package:flutter_study/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage() 
          },
        );
      },
    );
  }
}
