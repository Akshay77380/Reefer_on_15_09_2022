import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:referon/screens/company_details_screen.dart';
import 'package:referon/screens/home_screen.dart';
import 'package:referon/screens/verifyme.dart';
import 'package:phone_number/phone_number.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String text = "";

  final _formKey = GlobalKey<FormState>();
  FocusNode _focusNode = FocusNode();
  void _sumbit() {
    final isValid = _formKey.currentState.validate();
    if (isValid) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => VerifyMe())));
    }
    _formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: Scaffold(
          appBar: AppBar(
            title:
                Image.asset('assets/images/loginheader.png', fit: BoxFit.cover),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          backgroundColor: Colors.white,
          body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 20.0,
                        child: Center(), //Center
                      ),
                      Center(
                          child: Image.asset('assets/images/logo.png',
                              height: 180, width: 150)),
                      SizedBox(
                        height: 50.0,
                        child: Center(), //Center
                      ),
                      Card(
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(
                              height: 20.0,
                              child: Center(), //Center
                            ),
                            
                            Text(
                              " Let's get you Started! ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 11, 11, 22),
                                fontStyle: FontStyle.normal,
                              ),
                            ),

                            SizedBox(
                              height: 30.0,
                              child: Center(), //Center
                            ),
                            SizedBox(
                              width: 300,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                controller: phoneController,
                                maxLength: 10,
                                onFieldSubmitted: (value) {},
                                validator: (value) {
                                  String patttern =
                                      r'(^(?:[+0]9)?[0-9]{10,12}$)';
                                  RegExp regExp = new RegExp(patttern);
                                  if (value.length == 0) {
                                    return 'Please enter mobile number';
                                  } else if (!regExp.hasMatch(value)) {
                                    return 'Please enter valid mobile number';
                                  }
                                  // return value!.length == 10 ? 'Not a Valid Number' : null;
                                  return null;
                                },
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: InputDecoration(
                                    prefix: Icon(
                                      Icons.phone,
                                      size: 20,
                                    ),
                                    errorStyle: _focusNode.hasFocus
                                        ? TextStyle(
                                            fontSize: 0,
                                            height: 0,
                                            color: Colors.black)
                                        : null,
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 0,
                                          color:
                                              Color.fromARGB(255, 5, 10, 22)),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 0,
                                        color: Colors.red,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    iconColor: Color.fromRGBO(17, 24, 66, 100),
                                    labelText: 'Enter Mobile Number',
                                    labelStyle: TextStyle(color: Colors.black),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 0, color: Colors.black),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 0,
                                          color:
                                              Color.fromARGB(255, 5, 10, 22)),
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                              child: Center(), //Center
                            ),
                            ButtonTheme(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: ElevatedButtonTheme(
                                  data: ElevatedButtonThemeData(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(200.0, 45),
                                      primary: Color.fromRGBO(17, 24, 66,
                                          40), // Sets color for all the descendent ElevatedButtons
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6.0))),
                                    ),
                                  ),
                                  child: ElevatedButton(
                                      child: Text(' PROCEED '),
                                      onPressed: () => _sumbit()),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                              child: Center(), //Center
                            ),
                            Text(
                              "By Continuing,You Agree To Below ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 11, 11, 22),
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                              child: Center(), //Center
                            ),
                            Text(
                              "TERMS & CONDITIONS",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(180, 211, 67, 100),
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                              child: Center(), //Center
                            ),
                            Text(
                              "PRIVACY POLICY",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(180, 211, 67, 100),
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                              child: Center(), //Center
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
