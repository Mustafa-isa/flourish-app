import 'package:flourish/Models/Product_data.dart';
// import 'package:flourish/Models/Product_model.dart';
import 'package:flourish/Pages/ProductBox.dart';
import 'package:flourish/Pages/Product_Details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          childAspectRatio: (40 / 65),

          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        scrollDirection: Axis.vertical,
        itemCount: selected == 0
            ? Data.pData.length
            : selected == 1
                ? Data.filterData('cotton').length
                : selected == 2
                    ? Data.filterData('silk').length
                    : Data.filterData('linen').length,
        itemBuilder: (context, index) {
          final allp = selected == 0
              ? Data.pData[index]
              : selected == 1
                  ? Data.filterData('cotton')[index]
                  : selected == 2
                      ? Data.filterData('silk')[index]
                      : Data.filterData('linen')[index];
          return GestureDetector(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Product_Details( product:allp)))
            },
            child: pCard(
              product: allp,
            ),
          );
        },
      );
}
