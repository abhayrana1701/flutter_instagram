import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 2),
        ()=>Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Home()),
            (Route<dynamic>route)=>true)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Image(image: AssetImage("assets/insta.jpg"),width: 50,height:50,))
    );
  }
}
