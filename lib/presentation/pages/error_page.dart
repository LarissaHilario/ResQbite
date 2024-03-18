import 'package:flutter/material.dart';
import 'package:resqbite/presentation/pages/login_page.dart';
import 'package:resqbite/presentation/pages/Store/profile_edit_page.dart';
import 'package:resqbite/presentation/pages/Store/profile_store_page.dart';
import 'package:resqbite/presentation/pages/register_page.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Align(
        alignment: Alignment.center,
          child:

          Container(
            width: 360,
            height: 470,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/error.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 135, top: 500),
              child: Row(
                children: [
                  Text(
                    'OOPS! Ha ocurrido un error',
                    style: TextStyle(
                      fontSize:25.0,
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
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 400),
              child:
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const ProfileEditStorePage()));

                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Color(0xFF88B04F)),
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text('Entendido',
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
