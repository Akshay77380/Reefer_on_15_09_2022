import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:phone_number/phone_number.dart';
import 'package:referon/models/checklogin.dart';
import 'package:referon/models/login_model.dart';
import 'package:referon/screens/company_details_screen.dart';
import 'package:referon/screens/home_screen.dart';
import 'package:referon/screens/login_screen.dart';
import 'package:referon/screens/personel_details.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:otp_autofill/otp_autofill.dart';
import 'package:referon/utils/Common.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';
import 'package:http/http.dart' as http;
import 'package:otp_text_field/otp_text_field.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyMe extends StatefulWidget {
  //fetching from LoginScreen
  CheckLogin checklogin;
  String mobilenum;
  //  otpcode, msgidcode, sts;
  LoginScreenModel loginscreenmodel;

  VerifyMe({Key key, this.mobilenum}) : super(key: key);

  @override
  State<VerifyMe> createState() => _VerifyMeState();
}

class _VerifyMeState extends State<VerifyMe> {
  LoginScreenModel loginscreenmodel;
  int _otpCodeLength = 4;
  bool _isLoadingButton = false;
  bool _enableButton = false;

  String _otpCode = "";
  String _otpCode2 = "";
  String _msgidCode = "";

  var sts;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final intRegex = RegExp(r'\d+', multiLine: true);
  TextEditingController textEditingController =
      new TextEditingController(text: "");

  OtpFieldController otpbox = OtpFieldController();

  final _formKey = GlobalKey<FormState>();

  FocusNode _focusNode = FocusNode();

  OTPTextEditController controller;

  CheckLogin checkLogin;

  String Language = 'English';

  void _sumbit() {
    String registerednum = "${widget.mobilenum}";

    final isValid = _formKey.currentState.validate();

    if (isValid) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => CompanyDataForm(
                    registerednum: registerednum,
                    loginScreenModel: loginscreenmodel,
                  ))));
    }
    _formKey.currentState.save();
  }

  @override
  void initState() {
    super.initState();
    // print(" OTP CODE: " + widget.otpcode);
    // print(" Msg Id: " + widget.msgidcode);
    // print(" sts: " + widget.sts);
    print("MobileNum: " + widget.mobilenum);

    // _msgidCode = widget.msgidcode;
    // _otpCode2 = widget.otpcode;

    // _getSignatureCode();
    // _startListeningSms();

    getOTP(widget.mobilenum);
  }

  Future getOTP(str_mobilenumber) async {
    var response = await http
        .get(Uri.parse("${baseUrl}loginWithOtp?mobile=" + str_mobilenumber));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;

      _otpCode2 = ('${dataList[0]['OTP']}');
      _msgidCode = ('${dataList[0]['MsgId']}');
      sts = ('${dataList[0]['status']}');

      print("OTP" + _otpCode2 + "msgid" + _msgidCode + "status" + sts);
    } else {
      //  Fluttertoast.showToast(
      //   msg: "Failed to get OTP Please Retry Again !!!",
      //   toastLength: Toast.LENGTH_SHORT,
      //   gravity: ToastGravity.CENTER,
      //   timeInSecForIosWeb: 1,
      //   backgroundColor: Colors.red,
      //   textColor: Colors.white,
      //   fontSize: 16.0
      //  );
      // throw Exception('Failed to  get OTP Code');
    }
  }

  Future getVerifyOTP(String _otpCode2, String _msgidCode) async {
    var response = await http.get(Uri.parse(
        "https://reeferon.com/ReeferOn/VerifyOTP?OTP=$_otpCode2&MsgID=$_msgidCode"));

    if (response.statusCode == 200) {
      final jsonResponse2 = jsonDecode(response.body);
      final sts = jsonResponse2['status'];

      print("sts $sts");

      if (sts == 1) {
        Fluttertoast.showToast(
            msg: "Login Successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);

        _sumbit();
      } 
      else if (sts == 0){
        Fluttertoast.showToast(
            msg: "Please Enter Valid OTP Login Failed ",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    }
     else {
      print('Code: ${response.statusCode}');
    }
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
                          "Confirm OTP ",
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
                          "91-${widget.mobilenum}",
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
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          
                          child: OTPTextField(
                            // textController: textEditingController =
                            //     TextEditingController(text: _otpCode),
                            // autoFocus: true,
                            // codeLength: _otpCodeLength,
                            // alignment: MainAxisAlignment.center,
                            // defaultBoxSize: 46.0,
                            // margin: 10,
                            // selectedBoxSize: 46.0,
                            // textStyle: TextStyle(fontSize: 16),
                            // defaultDecoration: _pinPutDecoration.copyWith(
                            //     border: Border.all(
                            //         color: Theme.of(context)
                            //             .primaryColor
                            //             .withOpacity(0.6))),
                            // selectedDecoration: _pinPutDecoration,

                            // onChange: (code) {
                            //   _otpCode2 = textEditingController.text;
                            //   _onOtpCallBack(code, false);
                            // }
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 50,
                            style: TextStyle(fontSize: 17),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.box,
                            onChanged: (value) => {
                              _otpCode = value,
                              print("printing Editing Text Value " + _otpCode),
                            },
                            onCompleted: (_otpCode) {
                              print("Entered OTP Code: $_otpCode");
                            },
                          ),
                          
                        ),
                        
                        SizedBox(
                          height: 10.0,
                          child: Center(), //Center
                        ),
                        Text(
                          "OTP Expires in 2:00 min",
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
                                  print("otppp :$_otpCode && $_msgidCode");

                                  getVerifyOTP(_otpCode, _msgidCode);

                                  // // showModalBottomSheet
                                  // // (
                                  // //     context: context,
                                  // //     shape: RoundedRectangleBorder(
                                  // //         borderRadius: BorderRadius.vertical(
                                  // //       top: Radius.circular(20),
                                  // //     )),
                                  // //     builder: (context) => Column(
                                  // //           children: [
                                  // //             SizedBox(
                                  // //               height: 20,
                                  // //             ),
                                  // //             Text(
                                  // //               "Which lanuguage do you Prefer ?",
                                  // //               style: TextStyle(fontSize: 22),
                                  // //             ),
                                  // //             Divider(
                                  // //               color: Colors.black,
                                  // //             ),
                                  // //             RadioListTile(
                                  // //               value: 'English',
                                  // //               groupValue: Language,
                                  // //               onChanged: (value) {
                                  // //                 setState(() {
                                  // //                   Language = value.toString();
                                  // //                 });
                                  // //               },
                                  // //               title: Text('English'),
                                  // //             ),
                                  // //             RadioListTile(
                                  // //               value: 'Hindi',
                                  // //               groupValue: Language,
                                  // //               onChanged: (value) {
                                  // //                 setState(() {
                                  // //                   Language = value.toString();
                                  // //                 });
                                  // //               },
                                  // //               title: Text('Hindi'),
                                  // //             ),
                                  // //             RadioListTile(
                                  // //               value: 'Marathi',
                                  // //               groupValue: Language,
                                  // //               onChanged: (value) {
                                  // //                 setState(() {
                                  // //                   Language = value.toString();
                                  // //                 });
                                  // //               },
                                  // //               title: Text('Marathi'),
                                  // //             ),
                                  // //             RadioListTile(
                                  // //               value: 'Telugu',
                                  // //               groupValue: Language,
                                  // //               onChanged: (value) {
                                  // //                 setState(() {
                                  // //                   Language = value.toString();
                                  // //                 });
                                  // //               },
                                  // //               title: Text('Telugu'),
                                  // //             ),
                                  // //             RadioListTile(
                                  // //               value: 'Malayalam',
                                  // //               groupValue: Language,
                                  // //               onChanged: (value) {
                                  // //                 setState(() {
                                  // //                   Language = value.toString();
                                  // //                 });
                                  // //               },
                                  // //               title: Text('Malayalam'),
                                  // //             ),
                                  // //             RadioListTile(
                                  // //               value: 'Gujarthi',
                                  // //               groupValue: Language,
                                  // //               onChanged: (value) {
                                  // //                 setState(() {
                                  // //                   Language = value.toString();
                                  // //                 });
                                  // //               },
                                  // //               title: Text('Gujarthi'),
                                  // //             ),
                                  // //             Row(
                                  // //               mainAxisAlignment:
                                  // //                   MainAxisAlignment
                                  // //                       .spaceBetween,
                                  // //               crossAxisAlignment:
                                  // //                   CrossAxisAlignment.start,
                                  // //               children: [
                                  // //                 Padding(
                                  // //                   padding:
                                  // //                       EdgeInsets.all(20.0),
                                  // //                   child: ButtonTheme(
                                  // //                     child:
                                  // //                         ElevatedButtonTheme(
                                  // //                       data:
                                  // //                           ElevatedButtonThemeData(
                                  // //                         style: ElevatedButton
                                  // //                             .styleFrom(
                                  // //                                 minimumSize: Size(100, 45),
                                  // //                           primary: Color.fromRGBO(
                                  // //                               17,
                                  // //                               24,
                                  // //                               66,
                                  // //                               40), // Sets color for all the descendent ElevatedButtons
                                  // //                           // shape: RoundedRectangleBorder(
                                  // //                           //     borderRadius:
                                  // //                           //         BorderRadius.all(
                                  // //                           //             Radius.circular(
                                  // //                           //                 20.0))),
                                  // //                         ),
                                  // //                       ),
                                  // //                       child: ElevatedButton(
                                  // //                         child:
                                  // //                             Text(' Close '),

                                  // //                         // shape: RoundedRectangleBorder(
                                  // //                         //     borderRadius: BorderRadius.all(
                                  // //                         //         Radius.circular(20.0))),
                                  // //                         onPressed: () =>
                                  // //                             Navigator.pop(
                                  // //                                 context),
                                  // //                       ),
                                  // //                     ),
                                  // //                   ),
                                  // //                 ),
                                  // //                 Padding(
                                  // //                   padding:
                                  // //                       EdgeInsets.all(20.0),
                                  // //                   child: ButtonTheme(
                                  // //                     child:
                                  // //                         ElevatedButtonTheme(
                                  // //                       data:
                                  // //                           ElevatedButtonThemeData(
                                  // //                         style: ElevatedButton
                                  // //                             .styleFrom(
                                  // //                                 minimumSize: Size(100, 45),
                                  // //                           primary: Color.fromRGBO(
                                  // //                               17,
                                  // //                               24,
                                  // //                               66,
                                  // //                               40), // Sets color for all the descendent ElevatedButtons
                                  // //                           // shape: RoundedRectangleBorder(
                                  // //                           //     borderRadius:
                                  // //                           //         BorderRadius.all(
                                  // //                           //             Radius.circular(
                                  // //                           //                 20.0))),
                                  // //                         ),
                                  // //                       ),
                                  // //                       child: ElevatedButton(
                                  // //                         child: Text(' Next '),
                                  // //                         onPressed: () => {
                                  // //                           _sumbit(),
                                  // //                         },
                                  // //                       ),
                                  // //                     ),
                                  // //                   ),
                                  // //                 ),
                                  // //               ],
                                  // //             ),
                                  // //           ],
                                  // //         )
                                  //         );
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                          child: Center(), //Center
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              flex: 1,
                              child: TextButton(onPressed: (){
                            Navigator.pop(context);
                        }, child: Text("Change Number",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.black),))
                            ),
                            Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              flex: 1,
                              child: TextButton(onPressed: (){
                                 getOTP(widget.mobilenum);
                        }, child: Text("Resend OTP",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.black),))
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

  _onClickRetry() {
    _startListeningSms();
  }

  _onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() {
      this._otpCode = otpCode;
      if (otpCode.length == _otpCodeLength && isAutofill) {
        _enableButton = false;
        _isLoadingButton = true;
        _verifyOtpCode();
      } else if (otpCode.length == _otpCodeLength && !isAutofill) {
        _enableButton = true;
        _isLoadingButton = false;
      } else {
        _enableButton = false;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    SmsVerification.stopListening();
  }

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  /// get signature code
  _getSignatureCode() async {
    String signature = await SmsVerification.getAppSignature();
    print("signature $signature");
  }

  /// listen sms
  _startListeningSms() {
    SmsVerification.startListeningSms().then((message) {
      setState(() {
        _otpCode = SmsVerification.getCode(message, intRegex);
        textEditingController.text = _otpCode;
        _onOtpCallBack(_otpCode, true);
      });
    });
  }

  _verifyOtpCode() {
    FocusScope.of(context).requestFocus(new FocusNode());
    Timer(Duration(milliseconds: 4000), () {
      setState(() {
        _isLoadingButton = false;
        _enableButton = false;
      });
    });
  }
}

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
