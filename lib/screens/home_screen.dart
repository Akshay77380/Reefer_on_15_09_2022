import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      
      home: Scaffold(
        appBar: AppBar(

        title: Image.asset('assets/images/loginheader.png',fit: BoxFit.cover),
                backgroundColor: Colors.white,
                elevation: 0,
      ),
      backgroundColor: Colors.white,
      ),
      
    );
  }
}