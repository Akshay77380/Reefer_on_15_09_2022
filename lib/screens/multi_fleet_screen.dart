import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:referon/models/fleetFormDetails.dart';
import 'package:referon/models/login_model.dart';
import 'package:referon/screens/empty_state.dart';
import 'package:referon/screens/faq_screen.dart';
import 'package:referon/screens/fleet_item_widget.dart';
import 'package:referon/screens/login_screen.dart';
import 'package:referon/screens/multi_faq_screen.dart';
import 'package:referon/screens/multi_fleet_screen.dart';

class MultiFleetScreen extends StatefulWidget 
{

  
LoginScreenModel loginScreenModel;
List<FLeetDetail> forms;

  MultiFleetScreen({Key key, this.loginScreenModel,this.forms}) : super(key: key);
    

  @override
  State<StatefulWidget> createState() {
    return _MultiFleetScreenState();
  }
} 

class _MultiFleetScreenState extends State<MultiFleetScreen> 
{
  
  
  List<FleetItemWidget> fleetitemwidget = List.empty(growable: true);
  
  List<String> data = [];

  LoginScreenModel loginData2 = LoginScreenModel();


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
      
      bottomNavigationBar:

       Padding(
        padding: EdgeInsets.all(8.0),
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
        label: Text(' Add New Fleet Form '),
        elevation: 10,
      ),

      body: Form(
        key: _formKey,
        child: fleetitemwidget.isNotEmpty
            ? ListView.builder(
                itemCount: fleetitemwidget.length,
                itemBuilder: (_, index) {
                  return fleetitemwidget[index];
                })
            : Center(child: Text("To Add Fleet Form Click on New Fleet Form",style: TextStyle(fontSize: 20),)),
      ),
    );      
  }

  onSave()                                                                                                                                                                                                    
   {
    var isValid = _formKey.currentState.validate();
    LoginScreenModel  logindata_multi = LoginScreenModel();

    
    
    for (var element in fleetitemwidget) 
    {
      isValid = (isValid);
    }  

    
      
    
    if (isValid)
    {
      
      
       List<FLeetDetail> formsData = fleetitemwidget.map((e) => FLeetDetail.fromJson(e.fLeetDetail.toJson())).toList();

      logindata_multi = widget.loginScreenModel;
      
      print("inside Multi Fleet Screen : ${widget.loginScreenModel.address1}");

       logindata_multi = LoginScreenModel(
        //first page   
        companyName: widget.loginScreenModel.companyName,
        companyType: widget.loginScreenModel.companyType,
        businessType: widget.loginScreenModel.businessType,
        address1: widget.loginScreenModel.address1,
        address2: widget.loginScreenModel.address2,
        pincode: widget.loginScreenModel.pincode,
        city: widget.loginScreenModel.city,
        stateName: widget.loginScreenModel.stateName,
        countryName: widget.loginScreenModel.countryName,
        // Second page
        firstName: widget.loginScreenModel.firstName,
        lastName: widget.loginScreenModel.lastName,
        contact: widget.loginScreenModel.contact,
        altcontact: widget.loginScreenModel.altcontact,
        emailid: widget.loginScreenModel.emailid,
        designation: widget.loginScreenModel.designation,
        panNo: widget.loginScreenModel.panNo,

        // String pancardimgpath,cancelchequeimgpath,gst_number_img_path,fssai_license_img_path,busiess_card_img_path,others_doc_path;
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
        
        fLeetDetails: formsData.toList()
        
        
        );

        

        print("hssj${widget.loginScreenModel.panNo}");
        print("Fleet Details: ${logindata_multi.fLeetDetails}");

    } 

      Navigator.push(context, MaterialPageRoute(builder: ((context) => MultiFaqScreen(loginScreenModel:logindata_multi))));
  
  
   }
   onAdd() {
    setState(() {
      FLeetDetail _fleetdetail =
          FLeetDetail(id: fleetitemwidget.length);
      fleetitemwidget.add(FleetItemWidget(
        index: fleetitemwidget.length,
        fLeetDetail:_fleetdetail,
        // onRemove: () => onRemove(_contactModel),
      ));
    });
  }
}
