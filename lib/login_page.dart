import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) => (print(value)),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username ou e-mail'),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Password'),
              ),
              SizedBox(height: 15),
              //ElevatedButton(onPressed: () {}, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
