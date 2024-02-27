import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resqbite/presentation/screens/init_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 46, top: 80),
                child: Container(
                  width: 60,
                  height: 60,
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
                        fontSize: 45.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 3.5,
                      ),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/images/logo.png',
                      width: 140,
                      height: 140,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 205),
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
                padding: const EdgeInsets.only(left: 20, top: 50),
                child: SizedBox(
                  width: 350,
                  child: Form(

                    child: Column(
                      children: [
                        TextFormField(
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
                              fontSize: 20.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10, // Puedes ajustar este valor según tus necesidades
                        ),
                        TextFormField(
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
                              fontSize: 20.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10, // Puedes ajustar este valor según tus necesidades
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),

                            labelText: 'Contraseña',
                            labelStyle: TextStyle(
                              fontSize: 20.0,
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
                          height: 10, // Puedes ajustar este valor según tus necesidades
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFA0A0A7)),
                            ),

                            labelText: 'Confirmar Contraseña',
                            labelStyle: TextStyle(
                              fontSize: 20.0,
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
                padding: const EdgeInsets.only(left: 180, top: 100),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF88B04F),
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
