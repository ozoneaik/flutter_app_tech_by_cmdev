import 'package:app_by_cmdev/src/pages/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.text = "admin";
    _passwordController.text = "1234";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(32),
              height: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ..._buildTextFields(),
                  SizedBox(height: 32),
                  ..._buildButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleClickLogin() {
    Navigator.pushNamed(context, AppRoute.home);
  }

  _buildButton() {
    return [
      ElevatedButton(
        onPressed: _handleClickLogin,
        child: Text("SignIn"),
      ),
      OutlinedButton(onPressed: _handleClickReset, child: Text("Reset")),
      OutlinedButton(
        onPressed: _handleClickRegister,
        child: Text("SignUp"),
      ),
    ];
  }

  _buildTextFields() {
    return [
      TextField(
        decoration: InputDecoration(labelText: "Username"),
        controller: _usernameController,
      ),
      TextField(
        decoration: InputDecoration(labelText: "Password"),
        controller: _passwordController,
      ),
    ];
  }

  void _handleClickRegister() {
    Navigator.pushNamed(context, AppRoute.register);
  }

  void _handleClickReset() {
    _usernameController.text = '';
    _passwordController.text = '';
  }
}
