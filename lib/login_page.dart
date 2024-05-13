import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project_00/home_page.dart';

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
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'lib/assets/images/wall.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.yellow.withOpacity(0.2),
        ),
        _body(),
      ],
    ));
  }

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                child: Image.asset('lib/assets/images/Earth_(blank).png'),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 10),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Username ou e-mail'),
                      ),
                      const SizedBox(height: 15),
                      TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password'),
                        onChanged: (value) {
                          password = value;
                        },
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                          onPressed: () {
                            if (email == 'natuss.m@gmail.com' &&
                                password == '123') {
                              print('PERMITIDO');
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            } else {
                              print('NAO AUTORIZADO');
                            }
                          },
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size(double.infinity, 50)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blueGrey),
                              elevation: MaterialStateProperty.all<double>(10),
                              alignment: Alignment.center),
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
