import 'package:flutter/material.dart';
import 'package:resqbite/presentation/screens/init_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xFF464646), width: 3),
          ),
          child: IconButton(
            icon: Image.asset('assets/images/arrow-left.svg'),

            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) =>
              const MyInitPage()));
              },
          ),
        ),
        ],
      ),
    );
  }
}