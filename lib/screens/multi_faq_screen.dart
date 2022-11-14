import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:referon/models/faqFormDetails.dart';
import 'package:referon/models/login_model.dart';
import 'package:referon/screens/faq_screen.dart';
import 'package:referon/screens/fleet_item_widget.dart';
import 'package:referon/screens/success_screen.dart';
import 'package:http/http.dart' as http;
import 'package:referon/utils/Common.dart';

class MultiFaqScreen extends StatefulWidget {
  LoginScreenModel loginScreenModel;
  List<Faq> forms;

  MultiFaqScreen({Key key, this.loginScreenModel, this.forms})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MultiFaqScreenState();
  }
}

class _MultiFaqScreenState extends State<MultiFaqScreen> {
  LoginScreenModel loginScreenModel;
  List<FaqDetails> faqdetails_data = List.empty(growable: true);

  List<String> data = [];
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/loginheader.png', fit: BoxFit.cover),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButtonTheme(
          data: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(380.0, 45),
              primary: Color.fromRGBO(17, 24, 66,
                  40), // Sets color for all the descendent ElevatedButtons
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6.0))),
            ),
          ),
          child: ElevatedButton(
            child: Text(' Next '),
            onPressed: () {
              onSave();
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          onAdd();
        },
        icon: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(180, 211, 67, 50),
        focusColor: Colors.green,
        label: Text(" Add New Faq Form "),
        elevation: 10,
      ),
      body: Form(
        key: _formKey,
        child: faqdetails_data.isNotEmpty
            ? ListView.builder(
                itemCount: faqdetails_data.length,
                itemBuilder: (_, index) {
                  return faqdetails_data[index];
                })
            : Center(child: Text("To Add Fleet Form Click on New Fleet Form",style: TextStyle(fontSize: 20),)),
      ),
    );
  }

  onSave() async {
    var isValid = _formKey.currentState.validate();
    LoginScreenModel logindata_multi_faq = LoginScreenModel();

    faqdetails_data
        .forEach((element) => isValid = (isValid));

    if (isValid)
     {
      List<Faq> formsData = faqdetails_data
          .map((e) => Faq.fromJson(e.faqDetails.toJson()))
          .toList();

      logindata_multi_faq = widget.loginScreenModel;

      print("inside Multi Faq Details ${widget.loginScreenModel.address1}");

      logindata_multi_faq = LoginScreenModel(
          companyName: widget.loginScreenModel.companyName,
          companyType: widget.loginScreenModel.companyType,
          businessType: widget.loginScreenModel.businessType,
          address1: widget.loginScreenModel.address1,
          address2: widget.loginScreenModel.address2,
          pincode: widget.loginScreenModel.pincode,
          city: widget.loginScreenModel.city,
          stateName: widget.loginScreenModel.stateName,
          countryName: widget.loginScreenModel.countryName,
          firstName: widget.loginScreenModel.firstName,
          lastName: widget.loginScreenModel.lastName,
          contact: widget.loginScreenModel.contact,
          altcontact: widget.loginScreenModel.altcontact,
          emailid: widget.loginScreenModel.emailid,
          designation: widget.loginScreenModel.designation,
          panNo: widget.loginScreenModel.panNo,
          panImg: widget.loginScreenModel.panImg,
          cancelChequeNo: widget.loginScreenModel.cancelChequeNo,
          cancelChequeImg: widget.loginScreenModel.cancelChequeImg,
          gstNo: widget.loginScreenModel.gstNo,
          gstImg: widget.loginScreenModel.gstImg,
          fssaiLicNo: widget.loginScreenModel.fssaiLicNo,
          fssaiImg: widget.loginScreenModel.fssaiImg,
          businessCard: widget.loginScreenModel.businessCard,
          businessImg: widget.loginScreenModel.businessImg,
          otherDoc: widget.loginScreenModel.otherDoc,
          otherDocImg: widget.loginScreenModel.otherDocImg,
          fLeetDetails: widget.loginScreenModel.fLeetDetails,
          faq: formsData.toList());

          print("faq Details ${logindata_multi_faq.faq}");

      http.Response response = await http.post(
          Uri.parse("${baseUrl}submitApi"),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
          body: jsonEncode({
            "CompanyName": logindata_multi_faq.companyName,
            "firstName": logindata_multi_faq.companyType,
            "lastName": logindata_multi_faq.lastName,
            "contact": logindata_multi_faq.contact,
            "altcontact": logindata_multi_faq.altcontact,
            "emailid": logindata_multi_faq.emailid,
            "landmark": logindata_multi_faq.landmark,
            "Address1": logindata_multi_faq.address1,
            "Address2": logindata_multi_faq.address2,
            "Designation": logindata_multi_faq.designation,
            "pincode": logindata_multi_faq.pincode,
            "city": logindata_multi_faq.city,
            "panNo": logindata_multi_faq.panNo,
            "PanImg": logindata_multi_faq.panImg,
            "year": logindata_multi_faq.year,
            "CompanyType": logindata_multi_faq.companyName,
            "BusinessType": logindata_multi_faq.businessType,
            "VendorType": "",
            "CancelChequeNo": logindata_multi_faq.cancelChequeNo,
            "CancelChequeIMG": logindata_multi_faq.cancelChequeImg,
            "GstNo": logindata_multi_faq.gstNo,
            "GSTImg": logindata_multi_faq.gstImg,
            "FSSAILicNo": logindata_multi_faq.fssaiLicNo,
            "FSSAIImg":  logindata_multi_faq.fssaiImg,
            "BusinessCard": logindata_multi_faq.businessCard,
            "BusinessImg": logindata_multi_faq.businessImg,
            "OtherDoc": logindata_multi_faq.otherDoc,
            "OtherDocImg": logindata_multi_faq.otherDocImg,
            "Region": logindata_multi_faq.region,
            "StateName": logindata_multi_faq.stateName,
            "CountryName":logindata_multi_faq.countryName,

            "FLeetDetails": logindata_multi_faq.fLeetDetails,

            "FAQ":formsData.toList()
          }));

      
      print("Response body${response.body}");

      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => SuccessPage())));
    } else {
      print(" Empty Data ");
      debugPrint("Form is Not Valid");
    }
  }

  onAdd() {
    setState(() {
      Faq _faq = Faq(id: faqdetails_data.length);
      faqdetails_data.add(FaqDetails(
        index: faqdetails_data.length,
        faqDetails: _faq,
        // onRemove: () => onRemove(_contactModel),
      ));
    });
  }
}
