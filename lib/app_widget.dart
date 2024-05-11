import 'package:flutter/material.dart';
import 'package:project_00/app_controller.dart';
import 'package:project_00/home_page.dart';
import 'package:project_00/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: const LoginPage(),
          );
        });
  }
}
