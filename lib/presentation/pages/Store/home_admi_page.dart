import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:resqbite/presentation/pages/Store/Components/product_card_page.dart';

class Product {
  final String name;

  final int stock;
  final double price;

  Product({required this.name, required this.stock, required this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],

      stock: json['stock'],
      price: json['price'].toDouble(),
    );
  }
}

class HomeAdmiPage extends StatefulWidget {
  const HomeAdmiPage({Key? key}) : super(key: key);

  @override
  State<HomeAdmiPage> createState() => _HomeAdmiPageState();
}

class _HomeAdmiPageState extends State<HomeAdmiPage> {
  late Future<List<Product>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = fetchProducts();
  }

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('http://3.208.35.242/get_all'));

    if (response.statusCode == 200) {
      final dynamic jsonResponse = json.decode(response.body);

      if (jsonResponse.containsKey('saucers')) {
        List<dynamic> saucersJson = jsonResponse['saucers'];

        List<Product> products = saucersJson.map((saucer) =>
            Product.fromJson(saucer)).toList();

        return products;
      } else {
        throw Exception('Response does not contain "saucers"');
      }
    } else {
      throw Exception('Failed to load products');
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
                padding: const EdgeInsets.only(left: 46, top: 50, right: 46),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'RESQBITE',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 5,
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        'assets/images/avatar.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 46, top: 40, right: 46),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'MIS PRODUCTOS',
                      style: TextStyle(
                        fontSize: 32.0,
                        color: Color(0xFF464646),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'FiraSansCondensed',
                        letterSpacing: 2.5,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF88B04F),
                        minimumSize: Size(50, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/Add.svg',
                            width: 16,
                            height: 16,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Añadir Producto',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'FiraSansCondensed',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FutureBuilder<List<Product>>(
              future: futureProducts,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: snapshot.data!.map((product) {
                      return ProductCard(
                        name: product.name,
                        imageProduct: 'assets/images/donas.png',
                        stock: product.stock,
                        price: product.price,
                        onDelete: () {
                          // Implementa la lógica para eliminar el producto aquí
                        },
                        onEdit: () {
                          // Implementa la lógica para editar el producto aquí
                        },
                      );
                    }).toList(),
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // Por defecto, muestra un indicador de carga
                return CircularProgressIndicator();
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 560),
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
                          icon: SvgPicture.asset(
                            'assets/images/store.svg',
                            width: 50,
                            height: 50,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: SvgPicture.asset(
                            'assets/images/home.svg',
                            width: 50,
                            height: 50,
                          ),
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
