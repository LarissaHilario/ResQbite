import 'package:flutter/material.dart';

import 'package:resqbite/presentation/pages/Store/profile_store_page.dart';


class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
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
                  image: AssetImage("assets/images/dialog-succesfully.png"),
                  fit: BoxFit.cover,

                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 150, top: 465, right: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cambios guardados\n     correctamente',
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
              padding: const EdgeInsets.only(left: 4, bottom: 350),
              child:
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const ProfileStorePage()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF88B04F),
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text('Entendido',
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



        ],
      ),
    );
  }
}
