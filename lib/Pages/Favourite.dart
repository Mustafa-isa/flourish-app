// import 'package:flourish/Models/Product_data.dart';
// import 'package:flourish/Pages/ProductBox.dart';
// import 'package:flourish/Pages/Product_Details.dart';
import 'package:Flourish/Models/Product_data.dart';
import 'package:Flourish/Pages/ProductBox.dart';
import 'package:Flourish/Pages/Product_Details.dart';
import 'package:flutter/material.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFEAEB),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Your Favorite Products',
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
          ],
        ),
      ),
    );
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

  _buildProducts() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (40 / 70),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        scrollDirection: Axis.vertical,
        itemCount: selected == 0
            ? Data.favData('').length
            : selected == 1
                ? Data.favData('cotton').length
                : selected == 2
                    ? Data.favData('silk').length
                    : selected == 3
                        ? Data.favData('linen').length
                        : Data.favData('wool').length,
        itemBuilder: (context, index) {
          final allp = selected == 0
              ? Data.favData('')[index]
              : selected == 1
                  ? Data.favData('cotton')[index]
                  : selected == 2
                      ? Data.favData('silk')[index]
                      : selected == 3
                          ? Data.favData('linen')[index]
                          : Data.favData('wool')[index];
          return GestureDetector(
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Product_Details(product: allp)))
            },
            child: allp.fav
                ? pCard(
                    product: allp,
                  )
                : null,
          );
        },
      );
}
