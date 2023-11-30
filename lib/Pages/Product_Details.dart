import 'package:flutter/material.dart';

class Product_Details extends StatelessWidget {
  var product;
  Product_Details({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEAEB),
      appBar: AppBar(),
      bottomSheet:   BottomAppBar(
            child: Container(
              width: double.infinity,
              height: 300,
              color:  Color(0xFF835792),
              child: Row(children: [

                
              ]),
            ),
          ),
      body: Container(
        width: double.infinity,
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 250,
            padding: EdgeInsets.all(10),
            color: Colors.red.shade100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$ ${product.price}',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF835792)),
                  ),
                ]),
          ),
        
        ]),
      ),
    );
  }
}
