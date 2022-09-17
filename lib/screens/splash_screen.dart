import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:referon/screens/home_screen.dart';
import 'package:referon/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 2),
        ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()
        )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body: Center(
        child:Center(
          child: Image.asset('assets/images/logo.png',height: 300,width: 300)
        )
      ),
    );
  }
}