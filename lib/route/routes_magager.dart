import 'package:my_dgl_app/views/Edit_second.dart';
import 'package:my_dgl_app/views/edit_fourth.dart';
import 'package:my_dgl_app/views/edit_third.dart';
import 'package:my_dgl_app/views/edite_dad.dart';
import 'package:flutter/material.dart';
import '../views/home_screen.dart';
import '../views/login_screen.dart';
import '../views/onboarding_screen.dart';
import '../views/register_screen.dart';
import '../views/splash_screen.dart';

const String splashPage = "SplashScreen";
const String loginPage = "LoginScreen";
const String registerPage = "RegisterScreen";
const String onboardPage = "OnboardingScreen";
const String homePage = "HomeScreen";
const String edit = "Edit Your DGL";
const String editSecond = "Edit q2";
const String editThird = "Edit q3";
const String editFourth = "Edit q4";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashPage:
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );
    case loginPage:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case registerPage:
      return MaterialPageRoute(
        builder: (context) => const RegisterScreen(),
      );
    case onboardPage:
      return MaterialPageRoute(
        builder: (context) => const OnboardingScreen(),
      );
    case homePage:
      return MaterialPageRoute(
        builder: (context) => const HomeLand(),
      );
    case edit:
      return MaterialPageRoute(
        builder: (context) => const EditDad(),
      );
    case editSecond:
      return MaterialPageRoute(
        builder: (context) => const EditdadSecond(),
      );
    case editThird:
      return MaterialPageRoute(
        builder: (context) => const EditThird(),
      );
    case editFourth:
      return MaterialPageRoute(
        builder: (context) => const EditLast(),
      );
    default:
      throw ("the page you're looking for isn't define");
  }
}
