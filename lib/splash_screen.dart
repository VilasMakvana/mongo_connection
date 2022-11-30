import 'dart:async';
import 'package:flutter/services.dart';

import 'main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.darkBlue,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.darkBlue,
          elevation: 0,
          toolbarHeight: 0,
        ),
      body: Center(
        child: Image.asset("images/logo.png",width: 200,height: 200,),
      ),
    );
  }

  @override
  void initState() {
    Timer(Duration(seconds: 5),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AllScreen())));
  }
}
