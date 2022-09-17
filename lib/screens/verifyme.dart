import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:referon/screens/company_details_screen.dart';
import 'package:referon/screens/home_screen.dart';
import 'package:referon/screens/personel_details.dart';
import 'package:group_radio_button/group_radio_button.dart';

class VerifyMe extends StatefulWidget {
  const VerifyMe({Key key}) : super(key: key);

  @override
  State<VerifyMe> createState() => _VerifyMeState();
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class _VerifyMeState extends State<VerifyMe> {
  OtpFieldController otpController = OtpFieldController();
  String text = "";
  final _formKey = GlobalKey<FormState>();
  FocusNode _focusNode = FocusNode();
  String Language = 'English';
  void _sumbit() {
    final isValid = _formKey.currentState.validate();
    if (isValid) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => CompanyDetails())));
    }
    _formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: Scaffold(
          appBar: AppBar(
            title: FittedBox(
                child: Image.asset('assets/images/loginheader.png',
                    fit: BoxFit.fill)),
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
                  child: Card(
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: 5.0,
                          child: Center(), //Center
                        ),
                        Center(
                            child: Image.asset('assets/images/logo.png',
                                height: 180, width: 150)),
                        Text(
                          "Confirm OTP Code",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                          child: Center(), //Center
                        ),
                        Text(
                          "An OTP has been sent to your mobile number",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 11, 11, 22),
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "91-XXXXXXXXXX.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 11, 11, 22),
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                          child: Center(), //Center
                        ),
                        Text(
                          "Please Enter it below",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 11, 11, 22),
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                          child: Center(), //Center
                        ),
                        OTPTextField(
                            controller: otpController,
                            length: 4,
                            width: MediaQuery.of(context).size.width,
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldWidth: 45,
                            fieldStyle: FieldStyle.box,
                            outlineBorderRadius: 15,
                            style: TextStyle(fontSize: 17),
                            onChanged: (pin) {
                              print("Changed: " + pin);
                            },
                            onCompleted: (pin) {
                              print("Completed: " + pin);
                            }),
                        SizedBox(
                          height: 10.0,
                          child: Center(), //Center
                        ),
                        Text(
                          "OTP Expires in 00:20 seconds",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 11, 11, 22),
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                          child: Center(), //Center
                        ),
                        ButtonTheme(
                          minWidth: 200.0,
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
                                          Radius.circular(8.0))),
                                ),
                              ),
                              child: ElevatedButton(
                                child: Text('Confirm'),
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      )),
                                      builder: (context) => Column(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                "Which lanuguage do you Prefer ?",
                                                style: TextStyle(fontSize: 22),
                                              ),
                                              Divider(
                                                color: Colors.black,
                                              ),
                                              RadioListTile(
                                                value: 'English',
                                                groupValue: Language,
                                                onChanged: (value) {
                                                  setState(() {
                                                    Language = value.toString();
                                                  });
                                                },
                                                title: Text('English'),
                                              ),
                                              RadioListTile(
                                                value: 'Hindi',
                                                groupValue: Language,
                                                onChanged: (value) {
                                                  setState(() {
                                                    Language = value.toString();
                                                  });
                                                },
                                                title: Text('Hindi'),
                                              ),
                                              RadioListTile(
                                                value: 'Marathi',
                                                groupValue: Language,
                                                onChanged: (value) {
                                                  setState(() {
                                                    Language = value.toString();
                                                  });
                                                },
                                                title: Text('Marathi'),
                                              ),
                                              RadioListTile(
                                                value: 'Telugu',
                                                groupValue: Language,
                                                onChanged: (value) {
                                                  setState(() {
                                                    Language = value.toString();
                                                  });
                                                },
                                                title: Text('Telugu'),
                                              ),
                                              RadioListTile(
                                                value: 'Malayalam',
                                                groupValue: Language,
                                                onChanged: (value) {
                                                  setState(() {
                                                    Language = value.toString();
                                                  });
                                                },
                                                title: Text('Malayalam'),
                                              ),
                                              RadioListTile(
                                                value: 'Gujarthi',
                                                groupValue: Language,
                                                onChanged: (value) {
                                                  setState(() {
                                                    Language = value.toString();
                                                  });
                                                },
                                                title: Text('Gujarthi'),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(20.0),
                                                    child: ButtonTheme(
                                                      child:
                                                          ElevatedButtonTheme(
                                                        data:
                                                            ElevatedButtonThemeData(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  minimumSize: Size(100, 45), 
                                                            primary: Color.fromRGBO(
                                                                17,
                                                                24,
                                                                66,
                                                                40), // Sets color for all the descendent ElevatedButtons
                                                            // shape: RoundedRectangleBorder(
                                                            //     borderRadius:
                                                            //         BorderRadius.all(
                                                            //             Radius.circular(
                                                            //                 20.0))),
                                                          ),
                                                        ),
                                                        child: ElevatedButton(
                                                          child:
                                                              Text(' Close '),

                                                          // shape: RoundedRectangleBorder(
                                                          //     borderRadius: BorderRadius.all(
                                                          //         Radius.circular(20.0))),
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(20.0),
                                                    child: ButtonTheme(
                                                      child:
                                                          ElevatedButtonTheme(
                                                        data:
                                                            ElevatedButtonThemeData(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  minimumSize: Size(100, 45), 
                                                            primary: Color.fromRGBO(
                                                                17,
                                                                24,
                                                                66,
                                                                40), // Sets color for all the descendent ElevatedButtons
                                                            // shape: RoundedRectangleBorder(
                                                            //     borderRadius:
                                                            //         BorderRadius.all(
                                                            //             Radius.circular(
                                                            //                 20.0))),
                                                          ),
                                                        ),
                                                        child: ElevatedButton(
                                                          child: Text(' Next '),
                                                          onPressed: () => {
                                                            _sumbit(),
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ));
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                          child: Center(), //Center
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              flex: 1,
                              child: Text(
                                "Change Number",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              flex: 1,
                              child: Text(
                                " Resend OTP",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 11, 11, 22),
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                          child: Center(), //Center
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
