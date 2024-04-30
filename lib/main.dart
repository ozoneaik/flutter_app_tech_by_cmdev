import 'package:flutter/material.dart';

void main() {
  runApp(const CMApp());
}

class CMApp extends StatelessWidget {
  const CMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "CMApp",
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        color: Colors.red.withOpacity(0.5),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //แนวตั้ง
          crossAxisAlignment: CrossAxisAlignment.center, //แนวนอน
          children: [
            Container(child: Text('Codemobiles.com'),color: Colors.blue.withOpacity(0.5),),
            Text('Codemobiles.com'),
            Text('Codemobiles.com'),
            Text('Codemobiles.com'),
          ],
        ),
      ),
    );
  }
}
