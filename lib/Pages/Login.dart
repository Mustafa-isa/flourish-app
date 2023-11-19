import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: SingleChildScrollView(
        child: Column(
        
          children: [
          
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                        Image.asset("assets/images/flourish.png",height: 200,width: 200,),
              
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 233, 231, 237).withOpacity(.2)                            .withOpacity(0.1),
                              Color.fromARGB(255, 208, 204, 211).withOpacity(.2)  
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20)),
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
              
                          SizedBox(height: 30.0),
                          ElevatedButton(
                            onPressed: () {
                              // Handle button press
                            },
                            
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 84, 4, 59),
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
                      margin: EdgeInsets.only(top: 60),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Register",
                                style:
                                    TextStyle(fontSize: 30, color: Color.fromARGB(255, 152, 195, 229)),
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
      ),
    );
  }
}
