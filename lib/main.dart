import 'package:flutter/material.dart';
import 'package:iteso_app/iteso_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITESO App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ITESO App"),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: const SingleChildScrollView(child: ItesoInfoPage()));
  }
}
