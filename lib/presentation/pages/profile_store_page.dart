import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resqbite/presentation/pages/init_page.dart';
import 'package:resqbite/presentation/pages/profile_edit_page.dart';

class ProfileStorePage extends StatefulWidget {
  const ProfileStorePage({super.key});

  @override
  State<ProfileStorePage> createState() => _ProfileStorePageState();
}

class _ProfileStorePageState extends State<ProfileStorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (SingleChildScrollView(
            child: Column(children: [
      Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 46, top: 80, right: 46),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF88B04F).withOpacity(0.5),
                  width: 3,
                ),
              ),
              child: IconButton(
                icon: SvgPicture.asset('assets/images/edit.svg'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileEditStorePage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: 140,
              height: 140,
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF88B04F).withOpacity(0.5),
                  width: 3,
                ),
              ),
              child: IconButton(
                icon: SvgPicture.asset('assets/images/log-out.svg'),
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
          ]),
        ),
      ),
      Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: const EdgeInsets.only(left: 86, top: 80, right: 46),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 3.5,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Kristell',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 3.5,
                      ),
                    ),
                    Divider(
                        height: 10, // Puedes ajustar la altura de la línea
                        thickness: 2, // Puedes ajustar el grosor de la línea
                        color: Color(
                            0xFFA0A0A7) // Puedes ajustar el color de la línea
                        ),
                    Text(
                      'Apellido',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 3.5,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Kristell',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 3.5,
                      ),
                    ),
                    Divider(
                        height: 10, // Puedes ajustar la altura de la línea
                        thickness: 2, // Puedes ajustar el grosor de la línea
                        color: Color(
                            0xFFA0A0A7) // Puedes ajustar el color de la línea
                        ),
                    Text(
                      'Correo Electrónico',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 3.5,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '213477@ids.upchiapas.edu.mx',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 3.5,
                      ),
                    ),
                    Divider(
                        height: 10, // Puedes ajustar la altura de la línea
                        thickness: 2, // Puedes ajustar el grosor de la línea
                        color: Color(
                            0xFFA0A0A7) // Puedes ajustar el color de la línea
                        ),
                  ]))),
      SizedBox(
        height: 60,
      ),
      Align(
          alignment: Alignment.topCenter,
          child: Container(
              height: 450,
              decoration: BoxDecoration(
                color: Color(0xFF88B04F).withOpacity(0.7),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0, top: 50),
                        child: Text(
                          'Mi tienda',
                          style: TextStyle(
                            fontSize: 26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'FiraSansCondensed',
                            letterSpacing: 3.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                   Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          SizedBox(
                            child: Image.asset(
                              'assets/images/tienda.png',
                              fit: BoxFit.fill,
                            ),
                          ),

                          Column(
                              children: [
                                Text(
                                  'Pastelería Sofi',
                                  style: TextStyle(
                                    fontSize: 26.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'FiraSansCondensed',
                                    letterSpacing: 3.5,
                                  ),
                                ),
                                Text(
                                  'Col. Oriente Sur #122',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'FiraSansCondensed',
                                    letterSpacing: 3.5,
                                  ),
                                ),
                                Text(
                                  'Num. Tel 1262626282',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'FiraSansCondensed',
                                    letterSpacing: 3.5,
                                  ),
                                ),
                                ]
                                ),

                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.20),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.1),
                                width: 3,
                              ),
                            ),
                            child: IconButton(
                              icon: SvgPicture.asset(
                                  'assets/images/location.svg'),
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
                        ])
                      )
                   ),
                  ])))),
      Align(
          alignment: Alignment.topCenter,
          child: Container(
              height: 90,
              decoration: BoxDecoration(
                color: Color(0xFFDDE4D9),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset('assets/images/store.svg',
                            width: 50, height: 50),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: SvgPicture.asset('assets/images/home.svg',
                            width: 50, height: 50),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: SvgPicture.asset(
                          'assets/images/location.svg',
                          width: 50,
                          height: 50,
                        ),
                        onPressed: () {},
                      ),
                    ]),
              )))
    ]))));
  }
}
