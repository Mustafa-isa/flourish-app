import 'package:Flourish/Models/ProviderClass.dart';
// import 'package:flourish/Models/ProviderClass.dart';
import 'package:flutter/material.dart';
// import 'package:flourish/Models/Product_data.dart';
import 'package:provider/provider.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xFFFFEAEB),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/images/main.png'),
          ),
          Text(
            'My Profile',
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
          // Text(
          //   'Flutter Developer'.toUpperCase(),
          //   style: TextStyle(
          //     fontSize: 20.0,
          //     fontFamily: 'SourceSansPro',
          //     color: Colors.teal.shade100,
          //     fontWeight: FontWeight.bold,
          //     letterSpacing: 2.5,
          //   ),
          // ),
          SizedBox(
            height: 20.0,
            width: 150,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          InkWell(
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  title: Consumer<AppData>(
                    builder: (context, appData, child) {
                      // This builder function will be called whenever the CounterModel changes
                      return Text(
                        " ${appData.getFavNumber()} Favorites",
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            color: Colors.teal.shade900),
                      );
                    },
                  ),
                ),
              ),
              onTap: () {}),
          InkWell(
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.teal,
                ),
                title: Consumer<AppData>(
                    builder: (context, appData, child) {
                      // This builder function will be called whenever the CounterModel changes
                      return Text(
                        " ${appData.getProductCartNumber()} Product Added In Cart",
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            color: Colors.teal.shade900),
                      );
                    },
                  ),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
