import 'package:card_slider/card_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:card_slider/card_slider.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
       backgroundColor:   Color(0xFFFFEAEB),
      body: SingleChildScrollView(
      child: Column(
        children: [
        Image.asset("assets/images/logo.png" ,width:200 ,height: 100,),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hello,',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 10,),
                Text(
                'Flourish',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  color: Color(0xFF835792)

                  ),
                ),
              ),
              SizedBox(width: 8,),

                Text(
                ' Company!',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
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
                  color: Color(0xFF835792)
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
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      fontSize: 23.0,
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
          ) ,
// ContactPage() 
   Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Visibility(
              visible: "https://www.reuters.com/?edition-redirect=ara" != null,
              child: IconButton(
                color: Colors.teal,
                onPressed: () {
                  launchUrl(Uri.parse("https://www.reuters.com/?edition-redirect=ara"!));
                },
                icon: Icon(Typicons.link),
              
              ),
            ),
            Visibility(
                visible: 01115684146 != null,
                child: IconButton(
                color: Colors.greenAccent.shade700,

                  onPressed: () {
                    showAlert(context);
                  },
                  icon: Icon(Typicons.phone),
                )

                
                ),
            Visibility(
                child: IconButton(
                color: Color.fromARGB(255, 156, 28, 182),

                    onPressed: () {
                      launchUrl(Uri.parse('mailto:' + "mostafsj@gmai.com"));
                    },
                    icon: Icon(Typicons.mail))

              
                ),
          
            Visibility(
              visible: "sdfvsdf" != null,
              child:    IconButton(
                color: Colors.blueAccent,

              onPressed: () {
              launchUrl(
                      Uri.parse('https://www.facebook.com/' + "sdfvsdf"));
                
              },
              icon: Icon(Typicons.social_facebook)),
              
              
            
            ),
          
          ],
        ),
        ],
      ),
    ));
  }
}
  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 8.0,
          contentPadding: EdgeInsets.all(18.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          content: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () => launchUrl(Uri.parse('tel:' + "01222575"!)),
                  child: Container(
                    height: 50.0,
                    alignment: Alignment.center,
                    child: Text('Call'),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => launchUrl(Uri.parse('sms:' + "01222575"!)),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: Text('Message'),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    final url = Uri.parse(
                      'https://wa.me/' +
                        "01222575"!.substring(
                            1,
                            "01222575"!.length,
                          ),
                    );
                    print(url);
                    launchUrl(url, mode: LaunchMode.externalApplication);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: Text('WhatsApp'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }