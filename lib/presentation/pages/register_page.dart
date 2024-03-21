import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resqbite/presentation/pages/init_page.dart';
import 'package:resqbite/presentation/pages/login_page.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void navigateLoginScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Por favor ingrese una contraseña";
    } else if (value.length < 8) {
      return "La contraseña debe tener al menos 8 caracteres";
    } else if (value.length > 15) {
      return "La contraseña no puede ser mayor a 15 caracteres";
    } else {
      return null;
    }
  }

  String? _passwordErrorText;

  Future<void> _createUser() async {
    if (_formKey.currentState!.validate()) {
      if (_passwordController.text != _confirmPasswordController.text) {
        setState(() {
          _passwordErrorText = 'Las contraseñas no coinciden';
          return;
        });
      } else {
        try {
          String url = 'http://3.208.35.242/signup';

          final userData = {
            'name': _usernameController.text,
            'last_name': _lastnameController.text,
            'email': _emailController.text,
            'password': _passwordController.text,
          };
          print(userData);
          final response = await http.post(
            Uri.parse(url),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(userData),
          );
          print('Ya se envio');
          print(response.body);
          final getResponse = await http.post(
              Uri.parse(response.headers["location"]!),
              body: jsonEncode(userData),
              headers: {
                HttpHeaders.contentTypeHeader: "application/json",
              });
          print(getResponse.body);
          print(getResponse.statusCode);
          if (getResponse.statusCode == 200) {
            print('Usuario creado exitosamente.');
            navigateLoginScreen();
          } else {
            print(
                'Error al crear el usuario. Código de estado: ${response.statusCode}');
          }
        } catch (error) {
          print('Error al conectar con el servidor: $error');
        }
      }
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 80),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFF88B04F).withOpacity(0.5),
                      width: 3,
                    ),
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset('assets/images/arrow-left.svg'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyInitPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Column(
                  children: [
                    Text(
                      'RESQBITE',
                      style: TextStyle(
                        fontSize: 38.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 3.5,
                      ),
                    ),
                    SizedBox(height: 1),
                    Image.asset(
                      'assets/images/logo.png',
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 135),
                child: Row(
                  children: [
                    Text(
                      'Regístrate',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 3.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: SizedBox(
                  width: 350,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            labelText: 'Correo electrónico',
                            labelStyle: TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              5, // Puedes ajustar este valor según tus necesidades
                        ),
                        TextFormField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            labelText: 'Nombre',
                            labelStyle: TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              5, // Puedes ajustar este valor según tus necesidades
                        ),
                        TextFormField(
                          controller: _lastnameController,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            labelText: 'Apellido',
                            labelStyle: TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            return validatePassword(value);
                          },
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            labelText: 'Contraseña',
                            labelStyle: TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Image.asset(
                              'assets/images/eye.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: _confirmPasswordController,
                          validator: (value) {
                            return validatePassword(value);
                          },
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            labelText: 'Confirmar Contraseña',
                            labelStyle: TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Image.asset(
                              'assets/images/eye.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 115, top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    _createUser();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF88B04F),
                    minimumSize: Size(200, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'Registrarse',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'FiraSansCondensed',
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Image.asset(
                  'assets/images/register-img.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
