import 'package:flutter/material.dart';
import 'package:mobile_final_project/view/login_page_view.dart';
import 'package:mobile_final_project/view/register_page_view.dart';
import 'package:mobile_final_project/view/splash_page_view.dart';
import 'package:mobile_final_project/view/home_page_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: RegisterPageView(),
      home: HomePageView(),
      // home: LoginPageView(),
      // home: SplashPageView(),
    );
  }
}
