import 'package:flutter/material.dart';

class MyInitPage extends StatefulWidget {
  const MyInitPage({super.key});

  @override
  State<MyInitPage> createState() => _MyInitPageState();
}

class _MyInitPageState extends State<MyInitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Anuncio-img.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 46, bottom: 270),
              child: Row(
                children: [
                  Text(
                    'Únete a nuestra\ncomunidad para ayudar\nal planeta',
                    style: TextStyle(
                      fontSize: 45.0,
                      color: Color(0xFF464646),
                      fontWeight: FontWeight.normal,
                      fontFamily: 'FiraSansCondensed',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 60, bottom: 165),
              child: Text(
                'Rescata el sabor, salva el planeta.',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color(0xFF464646),
                  fontWeight: FontWeight.normal,
                  fontFamily: 'FiraSansCondensed',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 46, bottom: 50),
              child:
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF88B04F),
                  minimumSize: Size(140, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text('Iniciar Sesión',
                  style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'FiraSansCondensed',
                ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 46, bottom: 50),
              child:
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF88B04F),
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text('Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'FiraSansCondensed',
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 306, bottom: 50),
              child:
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Color(0xFF88B04F)),
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text('Registrarse',
                  style: TextStyle(
                    fontSize: 22.0,
                    color:  Color(0xFF464646),
                    fontWeight: FontWeight.normal,
                    fontFamily: 'FiraSansCondensed',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
