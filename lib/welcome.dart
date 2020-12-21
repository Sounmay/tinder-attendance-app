import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 40), () {
      Navigator.popAndPushNamed(context, '/cards');
    });
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: new ListView(
        children: [
          Image(image: AssetImage('images/attapplogo.png')),
          Center(
            child: Text(
              'ATTENDANCE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
