import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_att_app/tindercards.dart';
import 'package:tinder_att_app/welcome.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
  );

  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: welcome(),
        routes: {
          '/cards': (context) => ExampleHomePage(),
        },
      )
    );
  }
}

