import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resqbite/presentation/pages/init_page.dart';
import 'package:resqbite/presentation/pages/profile_store_page.dart';

class ProfileEditStorePage extends StatefulWidget {
  const ProfileEditStorePage({super.key});

  @override
  State<ProfileEditStorePage> createState() => _ProfileEditStorePageState();
}

class _ProfileEditStorePageState extends State<ProfileEditStorePage> {



  TextEditingController _emailController =
          TextEditingController(text: '213477@ids.upchiapas.edu.mx'),
      _nameController = TextEditingController(text: 'Kristell'),
      _lastnameController = TextEditingController(text: 'Pérez Mateos'),
      _nameStoreController = TextEditingController(text: 'Pastelería Sofi'),
      _addressController = TextEditingController(text: 'Col.Oriente Sur #122'),
      _phoneController = TextEditingController(text: '29292003');


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
                icon: SvgPicture.asset('assets/images/arrow-left.svg'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileStorePage(),
                    ),
                  );
                },
              ),
            ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      child: Image.asset(
                        'assets/images/profile.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    // Botón flotante para subir imagen
                    Container(
                      width: 140,
                      height: 140,
                      child: FloatingActionButton(
                        onPressed: () {
                        },
                        backgroundColor: Color(0xFFD9D9D9).withOpacity(.45), // Cambia el color de fondo del botón
                        tooltip: 'Subir imagen',
                        shape: CircleBorder(),
                        child: IconButton(
                            icon: SvgPicture.asset('assets/images/edit.svg', width: 50, height: 50,),
                          onPressed: () {


                          },
                        ), // Cambia el color del ícono
                      ),
                    ),
                  ],
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
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFA0A0A7)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFA0A0A7)),
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
                          TextFormField(
                            controller: _lastnameController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFA0A0A7)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFA0A0A7)),
                              ),
                              labelText: 'Apellido',
                              labelStyle: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFA0A0A7)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFA0A0A7)),
                              ),
                              labelText: 'Correo Electrónico',
                              labelStyle: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
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
                        padding: const EdgeInsets.only(left: 40, top: 50),
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
                      height: 14,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 46),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 100,
                                      child: Image.asset(
                                        'assets/images/tienda.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    // Botón flotante para subir imagen
                                    Container(
                                      width: 160,
                                      height: 100,
                                      child: FloatingActionButton(
                                        onPressed: () {
                                        },
                                        backgroundColor: Color(0xFFD9D9D9).withOpacity(.45), // Cambia el color de fondo del botón
                                        tooltip: 'Subir imagen',

                                        child: IconButton(
                                          icon: SvgPicture.asset('assets/images/edit.svg', width: 50, height: 50,),
                                          onPressed: () {


                                          },
                                        ), // Cambia el color del ícono
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        TextFormField(
                                          controller: _nameStoreController,
                                          decoration: InputDecoration(
                                            border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),

                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                            labelText: 'Nombre de la tienda',
                                            labelStyle: TextStyle(
                                              fontSize: 20.0,
                                              color: Color(0xFF000000),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        TextFormField(
                                          controller: _addressController,
                                          decoration: InputDecoration(
                                            border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                            ),
                                            ),
                                            labelText: 'Ubicación',
                                            labelStyle: TextStyle(
                                              fontSize: 20.0,
                                              color: Color(0xFF000000),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        TextFormField(
                                          controller: _phoneController,
                                          decoration: InputDecoration(
                                            border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.white,
                                              ),
                                            ),
                                            labelText: 'Número Telefónico',
                                            labelStyle: TextStyle(
                                              fontSize: 20.0,
                                              color: Color(0xFF000000),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ]),
                                )
                              ])),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                  ])))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xFFDDE4D9),
                      ),
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 70, right: 70),
                        child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: SvgPicture.asset(
                                    'assets/images/store.svg',
                                    width: 50,
                                    height: 50),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: SvgPicture.asset(
                                    'assets/images/home.svg',
                                    width: 50,
                                    height: 50),
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
