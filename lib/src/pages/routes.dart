import 'package:app_by_cmdev/src/pages/home/home_page.dart';
import 'package:app_by_cmdev/src/pages/login/login_page.dart';
import 'package:app_by_cmdev/src/pages/register/register_page.dart';
import 'package:flutter/material.dart';


class AppRoute {
  static const home = 'home';
  static const login = 'login';
  static const register = 'register';

  static get all => <String, WidgetBuilder>{
        login: (context) => const LoginPage(),
        register: (context) => const RegisterPage(),
        home: (context) => const HomePage(),
      };
}
