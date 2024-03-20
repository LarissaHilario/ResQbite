import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resqbite/presentation/pages/Store/Components/product_card_page.dart';
import 'package:resqbite/presentation/pages/init_page.dart';
import 'package:resqbite/presentation/pages/Store/profile_edit_page.dart';

class HomeAdmiPage extends StatefulWidget {
  const HomeAdmiPage({super.key});

  @override
  State<HomeAdmiPage> createState() => _HomeAdmiPageState();
}

class _HomeAdmiPageState extends State<HomeAdmiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (SingleChildScrollView(
            child: Column(children: [
      Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 28, top: 80, right: 28),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'RESQBITE',
              style: TextStyle(
                fontSize: 38.0,
                color: Color(0xFF464646),
                fontWeight: FontWeight.w500,
                fontFamily: 'FiraSansCondensed',
                letterSpacing: 5,
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                'assets/images/avatar.png',
                fit: BoxFit.fill,
              ),
            ),
          ]),
        ),
      ),
      Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 28, top: 40, right: 28),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MIS PRODUCTOS',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color(0xFF464646),
                      fontWeight: FontWeight.w300,
                      fontFamily: 'FiraSansCondensed',
                      letterSpacing: 2,
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF88B04F),
                      minimumSize: Size(10, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/Add.svg',
                          width: 13,
                          height: 13,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Añadir Producto',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'FiraSansCondensed',
                          ),
                        ),
                      ],
                    ),
                  ),

                ]),
                  )),

      ProductCard(
                name: 'PAQUETE DE 4 DONAS',
                imageProduct: 'assets/images/donas.png',
                stock: 10,
                price: 20,
                onDelete: () {
                  // Implementa la lógica para eliminar el producto aquí
                },
                onEdit: () {
                  // Implementa la lógica para editar el producto aquí
                },
              ),

      Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: const EdgeInsets.only(top: 560),
              child:

          Container(
              height: 90,
              decoration: BoxDecoration(
                color: Color(0xFFDDE4D9),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
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
              ))))
    ]))));
  }
}
