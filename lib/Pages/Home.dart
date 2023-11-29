import 'package:flourish/Models/Product_data.dart';
// import 'package:flourish/Models/Product_model.dart';
import 'package:flourish/Pages/ProductCart.dart';
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
    return Padding(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCategory(index: 0, name: 'all'),
              _buildCategory(index: 1, name: 'cotton'),
              _buildCategory(index: 2, name: 'silk'),
              // _buildCategory(index: 2, name: 'silk'),
              // _buildCategory(index: 2, name: 'silk'),
            ],
          ),
          SizedBox(height: 20,),
          Expanded(child: _buildProducts())
        ],
      ),
    );
  }

  _buildCategory({required int index, required String name}) => GestureDetector(
        onTap: () => setState(() {
          selected = index;
        }),
        child: Container(
          width: 100,
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
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        scrollDirection: Axis.vertical,
        itemCount: Data.pData.length,
        itemBuilder: (context, index) {
          final allp = Data.pData[index];
          return pCard(product: allp,);
        },
      );
}
