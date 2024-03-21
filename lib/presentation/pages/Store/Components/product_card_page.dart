import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String imageProduct;
  final int stock;
  final double price;
  final void Function()? onDelete;
  final void Function()? onEdit;

  const ProductCard({
    Key? key,
    required this.name,
    required this.imageProduct,
    required this.stock,
    required this.price,
    this.onDelete,
    this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        color: Color(0xFF88B04F).withOpacity(0.51),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(22),
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Container(
                        width: 200,
                        height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Ajusta el radio según sea necesario
                      ),

                        child: Column(
                          children: [
                        Padding(
                        padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF88B04F),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'FiraSansCondensed',
                                  letterSpacing: 2,
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 5),

                                  Text(
                                    'Stock $stock',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF88B04F),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'FiraSansCondensed',

                                    ),
                                  ),

                                  Text(
                                    ' \$${price.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF88B04F),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'FiraSansCondensed',

                                    ),
                                  ),
                                  SizedBox(width: 15),
                                ],
                              )
                            ],
                          ),
                    )],
                        )),
                  ),
                  SizedBox(height: 5),
                  Row(

                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: ElevatedButton(
                              onPressed: onDelete,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFB63D3D),
                                minimumSize: Size(20, 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/Delete.svg',
                                      width: 13,
                                      height: 13,
                                    ),
                                    SizedBox(width:3),
                                    Text(
                                      'Eliminar',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'FiraSansCondensed',
                                      ),
                                    ),
                                  ]),
                            )),
                      ),
                      SizedBox(width: 10),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF88B04F), // Color de fondo ligeramente más claro
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white), // Borde verde
                                borderRadius: BorderRadius.circular(50),
                              ),
                              minimumSize: Size(20, 30),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/edit-white.svg',
                                    width: 13,
                                    height: 13,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Editar',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'FiraSansCondensed',
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 110,
                      height: 120,
                      child: imageProduct.endsWith('.svg')
                          ? SvgPicture.asset(
                              imageProduct,
                              fit: BoxFit.fill,
                            )
                          : Image.asset(imageProduct, fit: BoxFit.fill),
                    ),
                  ))
            ],
          ),
        ));
  }
}
