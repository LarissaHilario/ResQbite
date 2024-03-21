import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:resqbite/%20infrastructure/models/product_model.dart';

class ProductService {
  Future<List<ProductModel>> fetchProducts() async {
    final response = await http.get(Uri.parse('http://3.208.35.242/get_all'));

    if (response.statusCode == 200) {
      final dynamic jsonResponse = jsonDecode(response.body);

      if (jsonResponse.containsKey('saucers')) {
        final List<dynamic> saucersJson = jsonResponse['saucers'];

        List<ProductModel> products = saucersJson.map(
                (saucer) => ProductModel.fromJson(saucer)
        ).toList();

        return products;
      } else {
        throw Exception('Response does not contain saucers');
      }
    } else {
      throw Exception('Failed to load products');
    }
  }
}



