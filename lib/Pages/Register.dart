import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://d33wubrfki0l68.cloudfront.net/8d79b89491cf9ef958be1386776dc937d39266be/1a630/img/particle_background.jpg',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/flourish.png",height: 200,width: 200,),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                              Color.fromARGB(255, 18, 0, 63)                             .withOpacity(0.1),
                            Color.fromARGB(255, 48, 2, 76).withOpacity(0.1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Name TextField
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: TextStyle(color: Colors.white),
                            icon: Icon(Icons.person, color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 16.0),
                        // Password TextField
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white),
                            icon: Icon(Icons.lock, color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 16.0),
                        // Phone TextField
                        TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Phone',
                            hintStyle: TextStyle(color: Colors.white),
                            icon: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 30.0),
                        ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ElevatedButton.styleFrom(
                                                      primary: Color.fromARGB(255, 89, 15, 186),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Submit',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Login",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.blue[200]),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue[200],
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
