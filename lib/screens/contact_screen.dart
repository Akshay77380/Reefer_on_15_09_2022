import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:referon/models/login_model.dart';
import 'package:referon/screens/company_details_screen.dart';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:referon/screens/multi_fleet_screen.dart';

import '../utils/Common.dart';


class ContactDetails extends StatefulWidget
 {
     var str_mobilenum,
      str_companyname,
      str_companytype,
      str_businesstype,
      str_address1,
      str_address2,
      str_landmark,
      str_pincode,
      str_city,
      str_state,
      str_country;

  ContactDetails(
      {Key key,
      String str_mobilenum,
      String str_companyname,
      String str_companytype,
      String str_businesstype,
      String str_address1,
      String str_address2,
      String str_landmark,
      String str_pincode,
      String str_city,
      String str_state,
      String str_country})
      : super(key: key);

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: ContactForm(),
    );
  }
}

class ContactForm extends StatefulWidget {
  LoginScreenModel loginScreenModel;
  var mobilenum;

  ContactForm({Key key, this.loginScreenModel,this.mobilenum}) : super(key: key);
 
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  
  String regnum;
  final _Edt_firstname = TextEditingController();
  final _Edt_lastname = TextEditingController();
  var _Edt_contactnumber = TextEditingController();
  final _Edt_alternatenumber = TextEditingController();
  final _Edt_emailid = TextEditingController();
  final _Edt_pancardno = TextEditingController();
  final _Edt_cancelchequeno = TextEditingController();
  final _Edt_gstno = TextEditingController();
  final _Edt_fssailincenseno = TextEditingController();
  final _Edt_businesscardno = TextEditingController();
  final _Edt_otherscard = TextEditingController();
  String _errorMessage = '';

  String str_pancardno = "";
  String str_gstcardno = "";

  var pancard_sts = "";
  var gstcard_sts = "";

  bool click = true;
  bool click2 = true;
  bool click3 = true;
  bool click4 = true;
  bool click5 = true;
  bool click6 = true;

  File _image,_image_cancel_chq,_image_gstno,_image_fssai,_image_business,_image_others;
  final picker = ImagePicker();

  String buttonText = 'Upload';
  String btn_cancelChqText = 'Upload';
  String btn_gstnoText = 'Upload';
  String btn_fssaiLicText = 'Upload';
  String btn_businessText = 'Upload';
  String btn_othersText = 'Upload';

  String pancardimgpath,cancelchequeimgpath,gst_number_img_path,fssai_license_img_path,busiess_card_img_path,others_doc_path;


  final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  FocusNode _focusNode = FocusNode();

  LoginScreenModel loginData = LoginScreenModel();
  @override
  void initState() {
    regnum = widget.mobilenum;
    // print("Data in Contact Screen "+loginData.city);
  
    super.initState();
  }

  Future getCameraImage() async {
    // ignore: deprecated_member_use
    final image = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(image.path);

      print("image data " + _image.toString());

      pancardimgpath = _image.path;


      if(pancardimgpath != null)
      {
        buttonText = "Uploaded";
        click  = !click;

      }
      else
      {
        buttonText = "Upload";
        click  = click;
      }

    });
      Navigator.pop(context);

    
  }
  Future getGalleryImage() async {
    final image = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(image.path);

      print("image data " + _image.toString());

      pancardimgpath = _image.path;


      if(pancardimgpath != null)
      {
        buttonText = "Uploaded";
        click  = !click;

      }
      else
      {
        buttonText = "Upload";
        click  = click;
      }

    });
     Navigator.pop(context);
  }


Future getChequeCameraImage() async {
    // ignore: deprecated_member_use
    final image2 = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image_cancel_chq = File(image2.path);

      print("image data " + _image_cancel_chq.toString());

      cancelchequeimgpath = _image_cancel_chq.path;


      if(cancelchequeimgpath != null)
      {
        btn_cancelChqText = "Uploaded";
        click2  = !click2;

      }
      else
      {
        btn_cancelChqText  = "Upload";
        click2  = click2;
      }

    });
     Navigator.pop(context);
  }
  Future getChequegalleryImage() async {
    // ignore: deprecated_member_use
    final image2 = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image_cancel_chq = File(image2.path);

      print("image data " + _image_cancel_chq.toString());

       cancelchequeimgpath = _image_cancel_chq.path;


      if(cancelchequeimgpath != null)
      {
        btn_cancelChqText = "Uploaded";
        click2  = !click2;

      }
      else
      {
        btn_cancelChqText  = "Upload";
        click2  = click2;
      }


    });
     Navigator.pop(context);
  }

  Future getGstCameraImage() async {
    // ignore: deprecated_member_use
    final image3 = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image_gstno = File(image3.path);

      print("image data " + _image_gstno.toString());

       gst_number_img_path = _image_gstno.path;


      if(gst_number_img_path!= null)
      {
        btn_gstnoText =  "Uploaded";
        click3  = !click3;

      }
      else
      {
        btn_gstnoText  = "Upload";
        click3  = click3;
      }

    });
     Navigator.pop(context);
  }
  Future getGstGalleryImage() async {
    // ignore: deprecated_member_use
    final image3 = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image_gstno = File(image3.path);

      print("image data " + _image_gstno.toString());

       gst_number_img_path = _image_gstno.path;


      if(gst_number_img_path!= null)
      {
        btn_gstnoText =  "Uploaded";
        click3  = !click3;

      }
      else
      {
        btn_gstnoText  = "Upload";
        click3  = click3;
      }

    });
     Navigator.pop(context);
  }
  Future getFssaiLicCameraImage() async {
    // ignore: deprecated_member_use
    final image4 = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image_fssai = File(image4.path);

      print("image data " + _image_fssai.toString());

      fssai_license_img_path = _image_fssai.path;


      if(fssai_license_img_path!= null)
      {
        btn_fssaiLicText =   "Uploaded";
        click4  = !click4;

      }
      else
      {
        btn_fssaiLicText  = "Upload";
        click4  = click4;
      }

    });
     Navigator.pop(context);
  }
  Future getFssaiLicGalleryImage() async {
    // ignore: deprecated_member_use
    final image4 = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image_fssai = File(image4.path);

      print("image data " + _image_fssai.toString());

      fssai_license_img_path = _image_fssai.path;


      if(fssai_license_img_path!= null)
      {
        btn_fssaiLicText =   "Uploaded";
        click4  = !click4;

      }
      else
      {
        btn_fssaiLicText  = "Upload";
        click4  = click4;
      }

    });
     Navigator.pop(context);
  }
  Future getBusinesCardCameraImage() async {
    // ignore: deprecated_member_use
    final image5 = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image_business = File(image5.path);

      print("image data " + _image_business.toString());

       busiess_card_img_path = _image_business.path;


      if(busiess_card_img_path!= null)
      {
        btn_businessText =   "Uploaded";
        click5  = !click5;

      }
      else
      {
        btn_businessText  = "Upload";
        click5  = click5;
      }

    });
     Navigator.pop(context);
  }
  Future getBusinesCardGalleryImage() async {
    // ignore: deprecated_member_use
    final image5 = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image_business = File(image5.path);

      print("image data " + _image_business.toString());

       busiess_card_img_path = _image_business.path;


      if(busiess_card_img_path!= null)
      {
        btn_businessText =   "Uploaded";
        click5  = !click5;

      }
      else
      {
        btn_businessText  = "Upload";
        click5  = click5;
      }
      
    });
     Navigator.pop(context);
  }
  Future getOthersDocCameraImage() async {
    // ignore: deprecated_member_use
    final image5 = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image_others = File(image5.path);

      print("image data " + _image_others.toString());

       others_doc_path = _image_others.path;


      if(others_doc_path!= null)
      {
        btn_othersText =   "Uploaded";
        click6  = !click6;

      }
      else
      {
        btn_othersText  = "Upload";
        click6  = click6;
      }

    });
     Navigator.pop(context);
  }


  Future getOthersDocGalleryImage() async {
    // ignore: deprecated_member_use
    final image5 = await picker.getImage(source: ImageSource.gallery);
    String others_doc_path;

    

    setState(() {
      _image_others = File(image5.path);

      print("image data " + _image_others.toString());

       others_doc_path = _image_others.path;

      
      if(others_doc_path!= null)
      {
        btn_othersText =   "Uploaded";
        click6  = !click6;
        

      }
      else
      {
        btn_othersText  = "Upload";
        click6  = click6;
      }

    });
     Navigator.pop(context);
  }
  
  Future getCheckPanNumber(str_pancardno) async {
    var response = await http.get(Uri.parse(
        "${baseUrl}userPanDetails?panNo=" +
            str_pancardno));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List pancard  :${dataList.first['status']}');

      pancard_sts = ('${dataList[0]['status']}');
      // var one = int.parse('1');
      if (pancard_sts == '1')
      {
        Fluttertoast.showToast(
        msg: "Pan Card Number is Verified....",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      } 
      else if(pancard_sts == '0')
       {
        Fluttertoast.showToast(
        msg: "Pan Card Number is  Not Verified.....",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );

      }
    }
  }

  Future getGstNumber(str_gstcardno) async {
    var response = await http.get(Uri.parse(
        "${baseUrl}userGstDetails?gstin_number=" +
            str_gstcardno));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List gst  :${dataList.first['status']}');

      gstcard_sts = ('${dataList[0]['status']}');
      // var one = int.parse('1');
      if (gstcard_sts == '1') {
        Fluttertoast.showToast(
        msg: "GST Number is Verified....",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
      } else {
      Fluttertoast.showToast(
        msg: "GST Number is Not  Verified....",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
      }
    }
  }

  Future<void> _showChoiceDialog(BuildContext buildContext) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select Pan Card Image "),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () => getCameraImage(),
                  ),
                  Padding(padding: EdgeInsets.all(20.0)),
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () => getGalleryImage(),
                  ),
                ],
              ),
            ),
          );
        });
  }
  Future<void> _showChoiceDialog2(BuildContext buildContext) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select cancel Cheque Image"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () => getChequeCameraImage(),
                  ),
                  Padding(padding: EdgeInsets.all(20.0)),
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () => getChequegalleryImage(),
                  ),
                ],
              ),
            ),
          );
        });
  }
  Future<void> _showChoiceDialog3(BuildContext buildContext) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select GST Image"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () => getGstCameraImage(),
                  ),
                  Padding(padding: EdgeInsets.all(20.0)),
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () => getGstGalleryImage(),
                  ),
                ],
              ),
            ),
          );
        });
  }
  Future<void> _showChoiceDialog4(BuildContext buildContext) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select Fssai License Image"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () => getFssaiLicCameraImage(),
                  ),
                  Padding(padding: EdgeInsets.all(20.0)),
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () => getFssaiLicGalleryImage(),
                  ),
                ],
              ),
            ),
          );
        });
  }
  Future<void> _showChoiceDialog5(BuildContext buildContext) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select Business Card Image"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () => getBusinesCardCameraImage(),
                  ),
                  Padding(padding: EdgeInsets.all(20.0)),
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () => getBusinesCardGalleryImage(),
                  ),
                ],
              ),
            ),
          );
        });
  }
  Future<void> _showChoiceDialog6(BuildContext buildContext) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select Others Doc Image"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () => getOthersDocCameraImage(),
                  ),
                  Padding(padding: EdgeInsets.all(20.0)),
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () => getOthersDocGalleryImage(),
                  ),
                ],
              ),
            ),
          );
        });
  }
  // Future < File > saveImagePermanently (String imagePath) async
  // {
  //   final directory = await getApplicationDocumentsDirectory() ;
  //   final name = basename(imagePath);
  //   final image = File ( ' ${directory.path} / $name ' ) ;
  //   return File ( imagePath ) .copy ( image.path ) ;
  // }

  // Future<ImageSource> showImageSource(BuildContext buildContext) async {
  //   if (Platform.isIOS) {
  //     return showCupertinoModalPopup<ImageSource>(
  //         context: context,
  //         builder: (context) => CupertinoActionSheet(
  //               actions: [
  //                 CupertinoActionSheetAction(
  //                     onPressed: () =>
  //                         _openCamera(),
  //                     child: Text('Camera')),
  //                 CupertinoActionSheetAction(
  //                   child: Text(' Gallery '),
  //                   onPressed: () =>
  //                       _openGallery(),
  //                 ), // CupertinoActionSheetAction
  //               ],
  //             ));
  //   }
  //   else
  //   {
  //     return showModalBottomSheet(context: context, builder: (context)=>Column(

  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         ListTile(
  //           leading: Icon(Icons.camera_alt),
  //           title: Text('Camera'),
  //           onTap: ()=>Navigator.of(context).pop(ImageSource.camera),

  //         ),
  //         ListTile(
  //           leading: Icon(Icons.camera_alt),
  //           title: Text('Gallery'),
  //           onTap: ()=>Navigator.of(context).pop(ImageSource.gallery),

  //         )

  //       ],
  //     ));
  //   }
  // }

  void _sumbit() {
  

    final isValid = _formKey.currentState.validate();

    LoginScreenModel logindata = widget.loginScreenModel;
    print("kgahf: ${widget.loginScreenModel.address1}");
    
    logindata = LoginScreenModel(
        
        companyName: widget.loginScreenModel.companyName,
        companyType: widget.loginScreenModel.companyType,
        businessType: widget.loginScreenModel.businessType,
        address1: widget.loginScreenModel.address1,
        address2: widget.loginScreenModel.address2,
        pincode: widget.loginScreenModel.pincode,
        city: widget.loginScreenModel.city,
        stateName: widget.loginScreenModel.stateName,
        countryName: widget.loginScreenModel.countryName,
        
        firstName: _Edt_firstname.text,
        lastName: _Edt_lastname.text,
        contact: _Edt_contactnumber.text,
        altcontact: _Edt_alternatenumber.text,
        emailid: _Edt_emailid.text,
        designation: _selectedval,
        panNo: _Edt_pancardno.text,
        
        // String pancardimgpath,cancelchequeimgpath,gst_number_img_path,fssai_license_img_path,busiess_card_img_path,others_doc_path;
        panImg: pancardimgpath.toString(),
        cancelChequeNo: _Edt_cancelchequeno.text,
        cancelChequeImg: cancelchequeimgpath.toString(),
        gstNo: _Edt_gstno.text,
        gstImg: gst_number_img_path.toString(),
        fssaiLicNo: _Edt_fssailincenseno.text,
        fssaiImg: fssai_license_img_path.toString(),
        businessCard: _Edt_businesscardno.text,
        businessImg: busiess_card_img_path.toString(),
        otherDoc: _Edt_otherscard.text,
        otherDocImg: others_doc_path.toString());

    
    
    if (isValid) {
      
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) =>
                 MultiFleetScreen(loginScreenModel: logindata))));
    }
    _formKey.currentState.save();
  }

  _ContactDetailsState() {
    _selectedval = _list[0];
  }

  int _counter = 0;
  String _selectedval = "Select";
  final _list = ["Select", "Proprietor", "Partner", "Manager", "Head"];
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
          key: _formKey,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.contain,
                  opacity: 500),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            animation: true,
                            animationDuration: 5000,
                            radius: 25,
                            lineWidth: 8,
                            percent: 0.2,
                            progressColor: Color.fromRGBO(180, 211, 67, 30),
                            backgroundColor: Color.fromRGBO(17, 24, 66, 50),
                            circularStrokeCap: CircularStrokeCap.round,
                            center: const Text('25%',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black)),
                          ),
                          Spacer(),
                          Text(
                            "Contact  Details",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 11, 11, 22),
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            'assets/images/logocircle.png',
                            width: 70,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                        child: Center(), //Center
                      ),
                      SizedBox(
                        width: 400,
                        // height: 55,
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          autofocus: false,
                          focusNode: FocusNode(),
                          keyboardType: TextInputType.name,
                          textAlign: TextAlign.center,
                          controller: _Edt_firstname,
                          onFieldSubmitted: (value) {},
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'First Name Cannot be Empty ';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              prefix: Icon(
                                Icons.person,
                                size: 20,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              errorStyle: _focusNode.hasFocus
                                  ? TextStyle(
                                      fontSize: 0,
                                      height: 0,
                                      color: Colors.white)
                                  : null,
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              iconColor: Color.fromRGBO(17, 24, 66, 100),
                              labelText: 'First Name :',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 400,
                        // height: 55,
                        child: TextFormField(
                          autofocus: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          focusNode: FocusNode(),
                          keyboardType: TextInputType.name,
                          textAlign: TextAlign.center,
                          controller: _Edt_lastname,
                          onFieldSubmitted: (value) {},
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'Last Name Cannot be Empty ';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              prefix: Icon(
                                Icons.person,
                                size: 20,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              errorStyle: _focusNode.hasFocus
                                  ? TextStyle(
                                      fontSize: 0,
                                      height: 0,
                                      color: Colors.white)
                                  : null,
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              iconColor: Color.fromRGBO(17, 24, 66, 100),
                              labelText: 'Last Name :',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 400,
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          readOnly: true,
                          textAlign: TextAlign.center,
                          controller: _Edt_contactnumber =
                              TextEditingController(
                                  text: regnum),
                          maxLength: 10,
                          onFieldSubmitted: (value) {},
                          validator: (value) {
                            String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
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
                                    color: Color.fromARGB(255, 5, 10, 22)),
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
                              labelText: 'Registered Mobile Number',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 400,
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          controller: _Edt_alternatenumber,
                          maxLength: 10,
                          onFieldSubmitted: (value) {},
                          validator: (value) {
                            String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                            RegExp regExp = new RegExp(patttern);
                            // if (value.length == 0) {
                            //   return 'Please enter Alternate number';
                            // }
                            //  if (!regExp.hasMatch(value)) {
                            //   return 'Please enter valid  Alternate mobile number';
                            // }
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
                                    color: Color.fromARGB(255, 5, 10, 22)),
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
                              labelText: 'Enter Alternate Mobile  Number',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        // height: 55,
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.emailAddress,
                          textAlign: TextAlign.center,
                          controller: _Edt_emailid,
                          onFieldSubmitted: (value) {},
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return "Cannot be Empty ";
                            }
                            const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                            final regExp = RegExp(pattern);
                            if (!regExp.hasMatch(val)) {
                              return "please Enter Valid Email Address";
                            }
                          },
                          decoration: InputDecoration(
                              prefix: Icon(
                                Icons.email,
                                size: 20,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              errorStyle: _focusNode.hasFocus
                                  ? TextStyle(
                                      fontSize: 0,
                                      height: 0,
                                      color: Colors.white)
                                  : null,
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              iconColor: Color.fromRGBO(17, 24, 66, 100),
                              labelText: 'Email Address :',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: DropdownButtonFormField<String>(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                              filled: true,
                              labelText: ' Designation : ',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(17, 24, 66, 100),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ))),
                          isExpanded: true,
                          value: _selectedval,
                          hint: Text(
                            'Select',
                          ),
                          onChanged: (value) =>
                              setState(() => _selectedval = value),
                          validator: (value) =>
                              value == "Select" ? 'field required' : null,
                          items: _list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                        child: Center(), //Center
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Column(
                          children: [
                            Text(
                              " MY KYC  ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(180, 211, 67, 30)),
                            ),
                            SizedBox(
                              height: 20.0,
                              child: Center(), //Center
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Expanded(
                                    // optional flex property if flex is 1 because the default flex is 1
                                    flex: 1,
                                    child: SizedBox(
                                      width: 250,
                                      child: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        keyboardType: TextInputType.name,
                                        controller: _Edt_pancardno,
                                        textCapitalization:
                                            TextCapitalization.characters,
                                        onFieldSubmitted: (value) {},
                                        onChanged: (data) async {
                                          str_pancardno = data;

                                          getCheckPanNumber(str_pancardno);

                                          setState(() {});
                                        },
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return "Cannot be Empty ";
                                          }
                                          const pattern =
                                              r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$';
                                          final regExp = RegExp(pattern);
                                          if (!regExp.hasMatch(val)) {
                                            return "please Enter Valid Pancard No";
                                          }
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            prefix: Icon(
                                              Icons.edit,
                                              size: 20,
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                width: 0,
                                                color: Colors.red,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            errorStyle: _focusNode.hasFocus
                                                ? TextStyle(
                                                    fontSize: 0,
                                                    height: 0,
                                                    color: Colors.white)
                                                : null,
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            iconColor: Color.fromRGBO(
                                                17, 24, 66, 0.612),
                                            labelText: 'Pan Card  :',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: SizedBox(
                                    width: 120,
                                    child: Expanded(
                                      // optional flex property if flex is 1 because the default flex is 1
                                      flex: 1,
                                      child: ButtonTheme(
                                        minWidth: 210.0,
                                        child: TextButton.icon(
                                          onPressed: () {
                                            _showChoiceDialog(context);

                                            setState(() {});
                                          },
                                          icon: Icon(
                                            (click == false)
                                                ? Icons.check
                                                : Icons.camera_enhance,
                                            color: (click)
                                                ? Colors.white
                                                : Colors.green,
                                            size: 28,
                                          ),
                                          label: Text(
                                            buttonText,
                                            style: click
                                                ? TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18)
                                                : TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 18),
                                          ),
                                          style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  17, 24, 66, 40)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Padding(
                                //   padding: EdgeInsets.only(left: 5, right: 5),
                                //   child: SizedBox(
                                //     width: 120,
                                //     child: Expanded(
                                //       // optional flex property if flex is 1 because the default flex is 1
                                //       flex: 1,
                                //       child: ButtonTheme(

                                //         minWidth: 210.0,
                                //         child: TextButton.icon
                                //         (
                                //           onPressed: () {
                                //             _showChoiceDialog(context);
                                //             setState((){

                                //                 String pancardimgpath = _image.path;

                                //                 print("Pancard Image path "+pancardimgpath);

                                //             });
                                //           },

                                //           icon: Icon(
                                //             Icons.check,
                                //             color: Colors.white,
                                //             size: 28,
                                //           ),
                                //           label: Text( "Uploaded",
                                //               style: TextStyle(
                                //                 color: Colors.white,
                                //                 fontSize: 18,
                                //                 fontWeight: FontWeight.bold,
                                //               )),

                                //           style: TextButton.styleFrom(
                                //               backgroundColor:   Color.fromRGBO(
                                //                   180, 211, 67, 30) ),

                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                              child: Center(), //Center
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Expanded(
                                    // optional flex property if flex is 1 because the default flex is 1
                                    flex: 1,
                                    child: SizedBox(
                                      width: 250,
                                      child: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        keyboardType: TextInputType.name,
                                        textCapitalization:
                                            TextCapitalization.characters,
                                        onFieldSubmitted: (value) {},
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return "Cannot be Empty ";
                                          }
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            prefix: Icon(
                                              Icons.edit,
                                              size: 20,
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                width: 0,
                                                color: Colors.red,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            errorStyle: _focusNode.hasFocus
                                                ? TextStyle(
                                                    fontSize: 0,
                                                    height: 0,
                                                    color: Colors.white)
                                                : null,
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            iconColor: Color.fromRGBO(
                                                17, 24, 66, 0.612),
                                            labelText: 'Cancel Cheque No :',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                      // optional flex property if flex is 1 because the default flex is 1
                                      flex: 1,
                                child:Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: SizedBox(
                                    width: 120,
                                    
                                      child: ButtonTheme(
                                        minWidth: 210.0,
                                        height: 45,
                                        //     child: RaisedButton(

                                        //    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                                        //    child: Text(' Upload '),

                                        //    textColor: Colors.white,
                                        //    color: Color.fromRGBO(17,24,66,40),

                                        //    shape: RoundedRectangleBorder(
                                        //     borderRadius: BorderRadius.all(Radius.circular(6.0))),
                                        //    onPressed: () {
                                        //         Navigator.push(context, MaterialPageRoute(builder: ((context) => FleetDetailsForm())));
                                        //    },
                                        //  ),
                                        child: TextButton.icon(
                                          
                                          onPressed: () {
                                            // pickImage();
                                            _showChoiceDialog2(context);
                                            
                                            setState((){

                                            });
                                          },
                                          icon: Icon(
                                            (click2 == false)
                                                ? Icons.check
                                                : Icons.camera_enhance,
                                            color: (click2 )
                                                ? Colors.white
                                                : Colors.green,
                                            size: 28,
                                          ),
                                          label: Text(
                                            btn_cancelChqText,
                                            style: click2
                                                ? TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18)
                                                : TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 18),
                                          ),
                                          style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  17, 24, 66, 40)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                              child: Center(), //Center
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Expanded(
                                    // optional flex property if flex is 1 because the default flex is 1
                                    flex: 1,
                                    child: SizedBox(
                                      width: 250,
                                      child: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: _Edt_gstno,
                                        keyboardType: TextInputType.name,
                                        textCapitalization:
                                            TextCapitalization.characters,
                                        onFieldSubmitted: (value) {},
                                        onChanged: (data) async {
                                          str_gstcardno = data;

                                          getGstNumber(str_gstcardno);

                                          setState(() {});
                                        },
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return "Cannot be Empty ";
                                          }
                                          const pattern =
                                              r'^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$';
                                          final regExp = RegExp(pattern);
                                          if (!regExp.hasMatch(val)) {
                                            return "please Enter Valid GST No";
                                          }
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            prefix: Icon(
                                              Icons.edit,
                                              size: 20,
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                width: 0,
                                                color: Colors.red,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            errorStyle: _focusNode.hasFocus
                                                ? TextStyle(
                                                    fontSize: 0,
                                                    height: 0,
                                                    color: Colors.white)
                                                : null,
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            iconColor: Color.fromRGBO(
                                                17, 24, 66, 0.612),
                                            labelText: 'GST No :',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: SizedBox(
                                    width: 120,
                                    child: Expanded(
                                      // optional flex property if flex is 1 because the default flex is 1
                                      flex: 1,
                                      child: ButtonTheme(
                                        minWidth: 210.0,
                                        height: 45,
                                        //     child: RaisedButton(

                                        //    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                                        //    child: Text(' Upload '),

                                        //    textColor: Colors.white,
                                        //    color: Color.fromRGBO(17,24,66,40),

                                        //    shape: RoundedRectangleBorder(
                                        //    borderRadius: BorderRadius.all(Radius.circular(6.0))),
                                        //    onPressed: () {
                                        //        Navigator.push(context, MaterialPageRoute(builder: ((context) => ContactDetails())));
                                        //    },
                                        //  ),
                                        child: TextButton.icon(
                                          onPressed: () {
                                            // pickImage();
                                            _showChoiceDialog3(context);
                                          },
                                          icon: Icon(
                                            (click3 == false)
                                                ? Icons.check
                                                : Icons.camera_enhance,
                                            color: (click3 )
                                                ? Colors.white
                                                : Colors.green,
                                            size: 28,
                                          ),
                                          label: Text(
                                            btn_gstnoText,
                                            style: click3
                                                ? TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18)
                                                : TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 18),
                                          ),
                                          style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  17, 24, 66, 40)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                              child: Center(), //Center
                            ),
                            Row( 
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Expanded(
                                    // optional flex property if flex is 1 because the default flex is 1
                                    flex: 1,
                                    child: SizedBox(
                                      width: 250,
                                      child: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        keyboardType: TextInputType.name,
                                        textCapitalization:
                                            TextCapitalization.characters,
                                        onFieldSubmitted: (value) {},
                                        // validator: (val) {
                                        //   if (val == null || val.isEmpty) {
                                        //     return "Cannot be Empty ";
                                        //   }
                                        // },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            prefix: Icon(
                                              Icons.edit,
                                              size: 20,
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                width: 0,
                                                color: Colors.red,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            errorStyle: _focusNode.hasFocus
                                                ? TextStyle(
                                                    fontSize: 0,
                                                    height: 0,
                                                    color: Colors.white)
                                                : null,
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            iconColor: Color.fromRGBO(
                                                17, 24, 66, 0.612),
                                            labelText: 'FSSAI License No :',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: SizedBox(
                                    width: 120,
                                    child: Expanded(
                                      // optional flex property if flex is 1 because the default flex is 1
                                      flex: 1,
                                      child: ButtonTheme(
                                        minWidth: 210.0,
                                        height: 45,
                                        //                 child: RaisedButton(

                                        //                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                                        //                child: Text(' Upload '),

                                        //                textColor: Colors.white,
                                        //                color: Color.fromRGBO(17,24,66,40),

                                        //                shape: RoundedRectangleBorder(
                                        //   borderRadius: BorderRadius.all(Radius.circular(6.0))),
                                        //                onPressed: () {
                                        // Navigator.push(context, MaterialPageRoute(builder: ((context) => ContactDetails())));
                                        //                },
                                        //              ),
                                        child: TextButton.icon(
                                          onPressed: () {
                                            // pickImage();
                                            _showChoiceDialog4(context);
                                          },
                                          icon: Icon(
                                            (click4 == false)
                                                ? Icons.check
                                                : Icons.camera_enhance,
                                            color: (click4 )
                                                ? Colors.white
                                                : Colors.green,
                                            size: 28,
                                          ),
                                          label: Text(
                                            btn_fssaiLicText,
                                            style: click4
                                                ? TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18)
                                                : TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 18),
                                          ),
                                          style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  17, 24, 66, 40)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Expanded(
                                    // optional flex property if flex is 1 because the default flex is 1
                                    flex: 1,
                                    child: SizedBox(
                                      width: 250,
                                      child: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        keyboardType: TextInputType.name,
                                        textCapitalization:
                                            TextCapitalization.characters,
                                        onFieldSubmitted: (value) {},
                                        // validator: (val) {
                                        //   if (val == null || val.isEmpty) {
                                        //     return "Cannot be Empty ";
                                        //   }
                                        // },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            prefix: Icon(
                                              Icons.edit,
                                              size: 20,
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                width: 0,
                                                color: Colors.red,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            errorStyle: _focusNode.hasFocus
                                                ? TextStyle(
                                                    fontSize: 0,
                                                    height: 0,
                                                    color: Colors.white)
                                                : null,
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            iconColor: Color.fromRGBO(
                                                17, 24, 66, 0.612),
                                            labelText: 'Business Card  :',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: SizedBox(
                                    width: 120,
                                    child: Expanded(
                                      // optional flex property if flex is 1 because the default flex is 1
                                      flex: 1,
                                      child: ButtonTheme(
                                        minWidth: 210.0,
                                        height: 45,
                                        //     child: RaisedButton(

                                        //    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                                        //    child: Text(' Upload '),

                                        //    textColor: Colors.white,
                                        //    color: Color.fromRGBO(17,24,66,40),

                                        //    shape: RoundedRectangleBorder(
                                        //     borderRadius: BorderRadius.all(Radius.circular(6.0))),
                                        //    onPressed: () {
                                        //         Navigator.push(context, MaterialPageRoute(builder: ((context) => FleetDetailsForm())));
                                        //    },
                                        //  ),
                                        child: TextButton.icon(
                                          onPressed: () {
                                            // pickImage();
                                            _showChoiceDialog5(context);
                                          },
                                          icon: Icon(
                                            (click5 == false)
                                                ? Icons.check
                                                : Icons.camera_enhance,
                                            color: (click5 )
                                                ? Colors.white
                                                : Colors.green,
                                            size: 28,
                                          ),
                                          label: Text(
                                            btn_businessText,
                                            style: click5
                                                ? TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18)
                                                : TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 18),
                                          ),
                                          style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  17, 24, 66, 40)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Expanded(
                                    // optional flex property if flex is 1 because the default flex is 1
                                    flex: 1,
                                    child: SizedBox(
                                      width: 250,
                                      child: TextField(
                                        keyboardType: TextInputType.name,
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            prefix: Icon(
                                              Icons.edit,
                                              size: 20,
                                            ),
                                            iconColor:
                                                Color.fromRGBO(17, 24, 66, 40),
                                            labelText: 'Others Document :',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 5, 10, 22)),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: SizedBox(
                                    width: 120,
                                    child: Expanded(
                                      // optional flex property if flex is 1 because the default flex is 1
                                      flex: 1,
                                      child: ButtonTheme(
                                        minWidth: 210.0,
                                        height: 45,
                                        //     child: RaisedButton(

                                        //    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                                        //    child: Text(' Upload '),

                                        //    textColor: Colors.white,
                                        //    color: Color.fromRGBO(17,24,66,40),

                                        //    shape: RoundedRectangleBorder(
                                        //     borderRadius: BorderRadius.all(Radius.circular(6.0))),
                                        //    onPressed: () {
                                        //         Navigator.push(context, MaterialPageRoute(builder: ((context) => FleetDetailsForm())));
                                        //    },
                                        //  ),
                                        child: TextButton.icon(
                                          onPressed: () {
                                            // pickImage();
                                            _showChoiceDialog6(context);
                                          },
                                          icon: Icon(
                                            (click6 == false)
                                                ? Icons.check
                                                : Icons.camera_enhance,
                                            color: (click6 )
                                                ? Colors.white
                                                : Colors.green,
                                            size: 28,
                                          ),
                                          label: Text(
                                            btn_othersText,
                                            style: click6
                                                ? TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18)
                                                : TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 18),
                                          ),
                                          style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  17, 24, 66, 40)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                        child: Center(), //Center
                      ),
                      ButtonTheme(
                        minWidth: 450.0,
                        height: 50,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: ElevatedButtonTheme(
                            data: ElevatedButtonThemeData(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(380.0, 45),
                                primary: Color.fromRGBO(17, 24, 66,
                                    40), // Sets color for all the descendent ElevatedButtons
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6.0))),
                              ),
                            ),
                            child: ElevatedButton(
                              child: Text(' Next '),
                              onPressed: () {
                                _sumbit();
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
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

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }

  basename(String imagePath) {}
}
