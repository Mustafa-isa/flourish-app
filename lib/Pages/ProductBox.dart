
import 'package:flourish/Models/User_model.dart';


import 'package:flutter/material.dart';

import '../Models/Product_model.dart';

class pCard extends StatefulWidget {
  final Product product;

  const pCard({super.key, required this.product});

  @override
  State<pCard> createState() => _pCardState();
}

class _pCardState extends State<pCard> {

  final model = User_model();
  @override
  Widget build(BuildContext context) {
    return Container(

  @override
  Widget build(BuildContext context) {
    return Container(
      

      width: MediaQuery.of(context).size.width / 2,
      height: 400,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 34, 31, 31).withOpacity(0.1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              IconButton(
                  onPressed: () {
                    setState(() {
                    widget.product.fav = !widget.product.fav;
                    });
                  },
                  icon: Icon(
                    widget.product.fav
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    color: Colors.red,
                  ))

              Icon(
                Icons.favorite_border_outlined,
                color: Colors.red,
              )

            ],
          ),
          Container(
            width: 130,
            height: 130,
            child: Image.asset(
              widget.product.image,
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  "${widget.product.name}",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),

                Text(
                  "Trending Now",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[900]),
                ),
                Text(

                  Text(
                  "Trending Now",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold ,color: Colors.red[900]),
                ),
                  Text(

                  '\$ ${widget.product.price}',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
