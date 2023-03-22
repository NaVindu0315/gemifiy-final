import 'package:flutter/material.dart';
import 'main.dart';
import 'signup.dart';
import 'dashboard.dart';

void main() {
  runApp(lgin());
}

class lgin extends StatefulWidget {
  const lgin({Key? key}) : super(key: key);

  @override
  State<lgin> createState() => _lginState();
}

class _lginState extends State<lgin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/loginbackground.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset('images/login.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF7CA7B0),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 50,
                          child: Container(
                            height: 5,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Color(0xFF7CA7B0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => gemifysign()),
                              );
                            },
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF7CA7B0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    'HELLO', // Add this new Text widget
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F3D56),
                    ),
                  ),
                ),
                SizedBox(height: 5), // Add this SizedBox widget
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: Text(
                    'Sign in to your account',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF3F3D56),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 70,
                  width: 350, // Set the width of the SizedBox to 300 pixels
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          //hintText: 'Enter your username',
                          prefixIcon: Icon(Icons.person),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 70,
                  width: 350, // Set the width of the SizedBox to 300 pixels
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          // hintText: 'Enter your password',
                          prefixIcon: Icon(Icons.key),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Positioned(
                        bottom: 10,
                        child: Container(
                          width: 70,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('images/Social.png'),
                        ),
                      ),
                      SizedBox(width: 5),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('images/mail.png'),
                        ),
                      ),
                      SizedBox(width: 5),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('images/twitter.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 350,
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF43468E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
