import 'package:daily_tasks_app/styles/my_theme.dart';
import 'package:daily_tasks_app/ui/home/home_screen.dart';
import 'package:daily_tasks_app/ui/login/login_screen.dart';
import 'package:daily_tasks_app/ui/register/register_screen.dart';
import 'package:daily_tasks_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

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
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routName:(context) => HomeScreen(),
        RegisterScreen.routName: (context) => RegisterScreen(),
        LoginScreen.routName:(context) => LoginScreen(),
        SplashScreen.routName:(context) => SplashScreen(),
      },
      initialRoute: SplashScreen.routName,
    );
  }
}
