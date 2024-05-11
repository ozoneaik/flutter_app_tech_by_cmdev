import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(32),
              child: Container(
                height: 220,
                child: Column(
                  children: [
                    ..._buildTextFields(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildTextFields() {
    return [
      TextField(
        decoration: InputDecoration(labelText: "email"),
      ),
      TextField(
        decoration: InputDecoration(labelText: "password"),
      )
    ];
  }
}
