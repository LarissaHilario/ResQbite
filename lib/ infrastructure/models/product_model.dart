class ProductModel {
  final int id;
  final String name;
  final int price;
  final String description;
  final int stock;


  const ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.stock,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      description: json['description'] as String,
      stock: json['stock'] as int,
    );
  }

}
