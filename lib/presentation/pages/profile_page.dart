import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dio/dio.dart';
import 'package:resqbite/presentation/pages/init_page.dart';
import 'package:resqbite/presentation/pages/Store/profile_store_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  String email = '';
  String lastName = '';
  String name = '';

  Future<void> fetchDataById() async {
    try {
      final response = await Dio().get('http://3.208.35.242/get_by_id/4');

      if (response.statusCode == 200) {
        final jsonResponse = response.data;
        setState(() {
          email = jsonResponse['email'];
          lastName = jsonResponse['last_name'];
          name = jsonResponse['name'];
        });
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
  Future<void> fetchDataByEmail(String emailParam) async {
    try {
      final response = await Dio().get(
        'http://3.208.35.242/get_by_email',
        queryParameters: {'email': emailParam}, 
      );

      if (response.statusCode == 200) {
        // Si la solicitud fue exitosa (código de estado 200),
        final jsonResponse = response.data;
        if (jsonResponse['message'] == 'User found') {
          final userData = jsonResponse['user'];
          setState(() {
            email = userData['email'];
            lastName = userData['last_name'];
            name = userData['name'];
          });
        } else {
          print('Usuario no encontrado');
        }
      } else {
       
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
  
  @override
  void initState() {
    super.initState();
    //fetchDataById();
    fetchDataByEmail('Larissa2003@gmail.com');

  }

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
              width: 50,
              height: 50,
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
                      builder: (context) => const MyInitPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: 120,
              height: 120,
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: 50,
              height: 50,
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
              padding: const EdgeInsets.only(left: 56, top: 80, right: 46),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre',
                      style: TextStyle(
                        fontSize: 20.0,
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
                      name,
                      style: TextStyle(
                        fontSize: 16.0,
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
                        fontSize: 20.0,
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
                      lastName,
                      style: TextStyle(
                        fontSize: 16.0,
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
                        fontSize: 20.0,
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
                      email,
                      style: TextStyle(
                        fontSize: 16.0,
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
        height: 325,
      ),
      Align(
          alignment: Alignment.topCenter,
          child: Container(
              height: 90,
              decoration: BoxDecoration(
                color: Color(0xFFDDE4D9),
              ),child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),

                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset('assets/images/store.svg', width: 50, height: 50),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileStorePage(),
                            ),
                          );
                        },
                      ),
                      IconButton(

                        icon: SvgPicture.asset('assets/images/home.svg',width: 50, height: 50),


                        onPressed: () {},
                      ),
                      IconButton(
                        icon: SvgPicture.asset('assets/images/location.svg', width: 50, height: 50,),

                        onPressed: () {

                        },
                      ),
                    ]),
              )))
    ]))));
  }
}
