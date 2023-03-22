import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: strt(),
  ));
}

class strt extends StatefulWidget {
  const strt({Key? key}) : super(key: key);

  @override
  State<strt> createState() => _strtState();
}

class _strtState extends State<strt> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/loading.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 300,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => lgin()),
                    );
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 20, color: Color(0xFF43468E)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFACAFF2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
