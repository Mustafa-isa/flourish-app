import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 20),
        child: ContactUs(
          dividerColor: Colors.purple.shade900,
          taglineColor:Colors.white ,
          companyColor:Colors.purple.shade900,
          cardColor: Colors.purple.shade900,
          textColor:  Colors.white,
            logo: AssetImage('assets/images/flourish.png'),
            email: 'adoshi26.ad@gmail.com',
            companyName: 'Flourish',
            phoneNumber: '+91123456789',
            dividerThickness: 2,
            website: 'https://abhishekdoshi.godaddysites.com',
          
            linkedinURL: 'https://www.linkedin.com/in/abhishek-doshi-520983199/',
          
            twitterHandle: 'AbhishekDoshi26',
            
          ),
      ),
    );
  }
}
