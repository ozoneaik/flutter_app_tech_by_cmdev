import 'package:app_by_cmdev/src/pages/login/login_page.dart';
import 'package:app_by_cmdev/src/pages/routes.dart';
import 'package:flutter/material.dart';

class CMApp extends StatelessWidget {
  const CMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CMApp",
      routes: AppRoute.all,
      home: LoginPage(),
    );
  }
}

