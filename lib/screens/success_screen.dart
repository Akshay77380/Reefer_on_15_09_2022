import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SuccessPage(),
    );
  }
}

class SuccessPage extends StatefulWidget {
  @override
  State<SuccessPage> createState() => _SuccessPagesState();
}

class _SuccessPagesState extends State<SuccessPage> {
  final _formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(

        child: Scaffold(
          appBar: AppBar(
            title:
                Image.asset('assets/images/loginheader.png', fit: BoxFit.cover),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          backgroundColor: Colors.white,
          body: Form(
            
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // CircularPercentIndicator(
                          //   animation: true,
                          //   animationDuration: 5000,
                          //   radius: 28,
                          //   lineWidth: 8,
                          //   percent: 0.0,
                          //   progressColor: Color.fromRGBO(180, 211, 67, 30),
                          //   backgroundColor: Color.fromRGBO(17, 24, 66, 50),
                          //   circularStrokeCap: CircularStrokeCap.round,
                          //   center: const Text('',
                          //       style: TextStyle(
                          //           fontSize: 15, color: Colors.black)),
                          // ),
                          
                          // Spacer(),

                          // Text(
                          //   "Company  Details",
                          //   style: TextStyle(
                          //     fontSize: 25,
                          //     fontWeight: FontWeight.bold,
                          //     color: Color.fromARGB(255, 11, 11, 22),
                          //     fontStyle: FontStyle.normal,
                          //   ),
                          // ),
                          Spacer(),
                          Image.asset(
                            'assets/images/logocircle.png',
                            width: 100,
                          ),
                        ],
                      ),
                      
                      SizedBox(
                        height: 50.0,
                        child: Center(), //Center
                      ), 
                      Center(
                          child: Image.asset('assets/images/successicon.png',
                              height: 180, width: 150)),
                      SizedBox(
                        height: 40.0,
                        child: Center(), //Center
                      ),
                      Text('Thanks for Completing the Onboarding Formalities, within 48hrs will update you the status ', 
                      style: TextStyle(fontSize: 24), 
                      textAlign: TextAlign.center)
                    ],
                  ),
                
              ),
            ),
          ),
        ),
          onWillPop: _onWillPop,

        );
        
  }
   Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Confirm Exit?',
                style: new TextStyle(color: Colors.black, fontSize: 20.0)),
            content: new Text(
                'Are you sure you want to exit the app? Tap \'Yes\' to exit \'No\' to cancel.'),
            actions: <Widget>[
              new ElevatedButton(
                onPressed: () {
                  // this line exits the app.
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
                child: new Text('Yes', style: new TextStyle(fontSize: 18.0)),
              ),
              new ElevatedButton(
                onPressed: () =>
                    Navigator.pop(context), // this line dismisses the dialog
                child: new Text('No', style: new TextStyle(fontSize: 18.0)),
              )
            ],
          ),
        ) ??
        false;
  }

}
