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
    Future.delayed(Duration(seconds: 1), () {
      Navigator.popAndPushNamed(context, '/cards');
    });
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: new ListView(
        children: [
          Image(image: AssetImage('D:/AndSt Projects/tinder_att_app/images/attapplogo.png')),
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
