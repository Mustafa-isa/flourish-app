import 'package:flutter/material.dart';

import '../Models/Product_model.dart';

class pCard extends StatefulWidget {
  final Product product;

  const pCard({super.key, required this.product});

  @override
  State<pCard> createState() => _pCardState();
}

class _pCardState extends State<pCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 34, 31, 31).withOpacity(0.1),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Icon(Icons.favorite_border_outlined,
          color: Colors.red,)
        ],),
        Container(
          width: 130,
          height: 130,
          child: Image.asset(widget.product.image,
          fit: BoxFit.cover,
          ),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        )
      ],),
    );
  }
}