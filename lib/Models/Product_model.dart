// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final int id;
  final String name;
  final String category;
  final String image;
  final String description;
  final double price;
  bool fav = false;
  int Quantity;
  int m=0;
  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.description,
    required this.price,
    required this.Quantity,
  });
}
