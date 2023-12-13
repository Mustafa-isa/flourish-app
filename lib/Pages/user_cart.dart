import 'package:flourish/Models/Product_data.dart';
import 'package:flourish/Models/ProviderClass.dart';
import 'package:flourish/Pages/ProductBox.dart';
import 'package:flourish/Pages/Product_Details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Ucart extends StatefulWidget {
  const Ucart({super.key});

  @override
  State<Ucart> createState() => _UcartState();
}

class _UcartState extends State<Ucart> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomAppBar(
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
                    Consumer<AppData>(
                      builder: (context, appData, child) {
                        // This builder function will be called whenever the CounterModel changes
                        return Text(
                          '\$ ${appData.getAllPrice()}',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                              color: Colors.indigo[900]),
                        );
                      },
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed
                      ),
                      textColor: Colors.white,
                      color: Color.fromARGB(255, 127, 138, 235),
                      onPressed: () {
                        print(Data.getPrice());
                      },
                      child: Row(children: [
                        Icon(Icons.send),
                        SizedBox(
                          width: 10,
                        ),
                        Text('CheckOut',
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
            color: Color(0xFFFFEAEB),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Our Products',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCategory(index: 0, name: 'all'),
                      _buildCategory(index: 1, name: 'cotton'),
                      _buildCategory(index: 2, name: 'silk'),
                      _buildCategory(index: 3, name: 'linen'),
                      _buildCategory(index: 4, name: 'wool'),
                      // _buildCategory(index: 2, name: 'silk'),
                      // _buildCategory(index: 2, name: 'silk'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(child: _buildProducts())
              ]),
            )));
  }

  _buildCategory({required int index, required String name}) => GestureDetector(
        onTap: () => setState(() {
          selected = index;
        }),
        child: Container(
          width: 80,
          height: 40,
          margin: EdgeInsets.only(top: 10, right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color:
                  selected == index ? Colors.redAccent : Colors.red.shade300),
          child: Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  double count(double price, double total) {
    return total += price;
  }

  double totalPrice = 0;

  _buildProducts() => ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: selected == 0
            ? Data.CartData('').length
            : selected == 1
                ? Data.CartData('cotton').length
                : selected == 2
                    ? Data.CartData('silk').length
                    : selected == 3
                        ? Data.favData('linen').length
                        : Data.CartData('wool').length,
        itemBuilder: (context, index) {
          final allp = selected == 0
              ? Data.CartData('')[index]
              : selected == 1
                  ? Data.CartData('cotton')[index]
                  : selected == 2
                      ? Data.CartData('silk')[index]
                      : selected == 3
                          ? Data.CartData('linen')[index]
                          : Data.CartData('wool')[index];

          return ListTile(
            leading: Image.asset(
              allp.image,

              fit: BoxFit.cover, // Choose the fit option that suits your layout
            ),
            title: Text(
              allp.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '\$${allp.price.toString()}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    // Implement logic to decrease item quantity.
                    setState(() {
                      allp.m -= 1;
                    });
                  },
                ),
                Text(
                  '${allp.m}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ), // Display quantity here.
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Implement logic to increase item quantity.
                    setState(() {
                      allp.m += 1;
                    });
                  },
                ),
              ],
            ),
          );
        },
      );
}
