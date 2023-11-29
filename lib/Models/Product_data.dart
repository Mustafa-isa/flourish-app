import 'package:flourish/Models/Product_model.dart';

class Data {
  static List<Product> pData = [
    Product(
        id: 1,
        name: 'cotton beige',
        category: 'cotton',
        image: 'assets/products/Cotton_Beige.jpg',
        description: 'description',
        price: 85,
        Quantity: 2),
    Product(
        id: 2,
        name: 'cotton Gray',
        category: 'cotton',
        image: 'assets/products/Cotton_Gray.jpg',
        description: 'description',
        price: 85,
        Quantity: 2),
    Product(
        id: 3,
        name: 'cotton Green',
        category: 'cotton',
        image: 'assets/products/Cotton_Green.jpg',
        description: 'description',
        price: 85,
        Quantity: 2),
    Product(
        id: 5,
        name: 'silk beige',
        category: 'silk',
        image: 'assets/products/Silk_OffWhite.jpg',
        description: 'description',
        price: 85,
        Quantity: 2),
    Product(
        id: 6,
        name: 'Silk Yellow',
        category: 'silk',
        image: 'assets/products/Silk_Yellow.jpg',
        description: 'description',
        price: 85,
        Quantity: 2),
  
    Product(
        id: 8,
        name: 'Wool Beige',
        category: 'wool ',
        image: 'assets/products/Wool_Beige.jpg',
        description: 'description',
        price: 85,
        Quantity: 2),
    Product(
        id: 9,
        name: 'wool Green',
        category: 'wool',
        image: 'assets/products/Wool_Green.jpg',
        description: 'description',
        price: 85,
        Quantity: 2),
    Product(
        id: 9,
        name: 'wool Yellow',
        category: 'wool',
        image: 'assets/products/Wool_Yellow.jpg',
        description: 'description',
        price: 85,
        Quantity: 2),
    Product(
        id: 9,
        name: 'Linen Beige',
        category: 'linen',
        image: 'assets/products/Linen_Beige.jpg',
        description: 'description',
        price: 85,
        Quantity: 2),
    Product(
        id: 9,
        name: ' Linen Yellow',
        category: 'linen',
        image: 'assets/products/Linen_Yellow.jpg',
        description: 'description',
        price: 85,
        Quantity: 2),
  ];
   static filterData(condationFiltered){
    return pData.where((product) => product.category == condationFiltered).toList();
  }
}
