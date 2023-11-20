import 'package:card_slider/card_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:card_slider/card_slider.dart';

class AboutPage extends StatefulWidget {
  AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool showDetails = false;
  List<Widget> valuesWidget = [
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          'https://www.onlinefabricstore.com/ofssilo/wp-content/uploads/2016/08/dyed-fabric-feature.jpg',
          fit: BoxFit.cover),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          'https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2013/8/12/1376327154144/Dyed-textiles-010.jpg?width=465&dpr=1&s=none',
          fit: BoxFit.cover),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          'https://www.wellandgood.com/wp-content/uploads/2019/03/GettyImages-1051317158.jpg',
          fit: BoxFit.cover),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          'https://images.herzindagi.info/image/2020/Apr/Fabric.jpg',
          fit: BoxFit.cover),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          'https://images.squarespace-cdn.com/content/v1/5ffa73eac1ead434c21b9b9e/1629257266314-SG124DPZCEWHSAN0YAG8/P7241155.jpg?format=500w',
          fit: BoxFit.cover),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                color: Colors.grey,
                child: Image.asset('assets/images/image1.jpeg',
                    width: double.infinity, height: 270, fit: BoxFit.cover),
              ),
              Positioned(
                  top: 190,
                  right: 135,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.grey[900],
                    child: Image.asset("assets/images/flourish.png"),
                  )),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'Hello, Flourish Company!',
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: CardSlider(
              cards: valuesWidget,
              bottomOffset: .0005,
              cardHeight: 0.50,
              containerHeight: 230,
              containerWidth: 400,
              itemDotOffset: -0.025,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              "About",
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  maxLines: showDetails == false ? 2 : null,
                  overflow: TextOverflow.fade,
                  "We are Flourish, a company dedicated to producing 100% natural products. Our products are made using natural raw materials, as well as dyes extracted from plant waste and organic substances.Our product is eco-friendly, so you dont have to worry about it harming your health. Additionally, we are committed to empowering women by providing them with employment opportunities and a steady source of incomeA more sustainable Alternative for your clothes",
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      showDetails = !showDetails;
                      print(showDetails);
                    });
                  },
                  child: Text(
                    ' ${showDetails == false ? "Show More" : "Show Less"} ',
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
