import 'package:flourish/Models/User_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Product_Details extends StatefulWidget {
  var product;
  Product_Details({super.key, required this.product});

  @override
  State<Product_Details> createState() => _Product_DetailsState();
}

class _Product_DetailsState extends State<Product_Details> {
  int? id;
  int? m;
  User_model model = User_model();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEAEB),
      appBar: AppBar(),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomAppBar(
          color: Color(0xFF835792),
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: Color(0xFFFFEAEB)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$ ${widget.product.price}',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF835792)),
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                    textColor: Colors.white,
                    color: Color(0xFF835792),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    widget.product
                                        .image, // Replace with the path to your image
                                    height: 200,
                                    width: 200,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text('Dialog Title'),
                                SizedBox(height: 10),
                                TextField(
                                  keyboardType: TextInputType.number,
                                  // inputFormatters: <TextInputFormatter>[
                                  //   FilteringTextInputFormatter.allow(
                                  //       RegExp(r'[0-9]')),
                                  //   FilteringTextInputFormatter.digitsOnly
                                  // ],
                                  decoration: InputDecoration(
                                    labelText: 'Enter Number',
                                    hintText: 'Start from 1',
                                  ),
                                  onChanged: (value) {
                                    m = int.tryParse(value);
                                    // id = widget.product.id;
                                  },
                                ),
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancel'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  print(m);
                                  widget.product.m = m ;
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Row(children: [
                      Icon(Icons.send),
                      SizedBox(
                        width: 10,
                      ),
                      Text('\$ ${widget.product.price}',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                              color: Colors.white))
                    ]),
                  )
                ]),
          ),
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
                widget.product.image,
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
                    widget.product.name,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$ ${widget.product.price}',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF835792)),
                  ),
                ]),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Immerse yourself in unparalleled audio quality with HarmonyX Wireless Earbuds, the epitome of cutting-edge technology and sleek design These earbuds redefine .",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF835792),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Colors Avalibel",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CircleAvatar(radius: 20, backgroundColor: Colors.orange),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(radius: 20, backgroundColor: Colors.green),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(radius: 20, backgroundColor: Colors.teal),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(radius: 20, backgroundColor: Colors.red),
                      SizedBox(
                        width: 15,
                      )
                    ],
                  )
                ]),
          )
        ]),
      ),
    );
  }
}
