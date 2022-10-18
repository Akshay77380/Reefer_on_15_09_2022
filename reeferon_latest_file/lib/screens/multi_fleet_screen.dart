import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:referon/models/fleetFormDetails.dart';
import 'package:referon/models/login_model.dart';
import 'package:referon/screens/empty_state.dart';
import 'package:referon/screens/faq_screen.dart';
import 'package:referon/screens/fleet_item_widget.dart';
import 'package:referon/screens/multi_faq_screen.dart';
import 'package:referon/screens/multi_fleet_screen.dart';
import 'fleet_details_screen.dart';

class MultiFleetScreen extends StatefulWidget {

  LoginScreenModel loginScreenModel;
  FLeetDetail fleetdetail; 

  MultiFleetScreen({Key key, this.loginScreenModel}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return _MultiFleetScreenState();
  }
}

class _MultiFleetScreenState extends State<MultiFleetScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    
     print(" InSide  Mullti Fleet Details: ${widget.loginScreenModel}");
    super.initState();
  }

  List<FleetItemWidget> fleetitemwidget = List.empty(growable: true);
  
  List<String> data = [];
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

      body: fleetitemwidget.isNotEmpty
          ? ListView.builder(
              itemCount: fleetitemwidget.length,
              itemBuilder: (_, index) {
                return fleetitemwidget[index];
              })
          : Center(child: Text("To Add Fleet Form Click on New Fleet Form")),
    );
  }

  onSave()
   {
    bool allValid = true;

    fleetitemwidget
        .forEach((element) => allValid = (allValid && element.isValidated()));
    
    if (allValid) {
      // List<String> names = fleetitemwidget
      //     .map((e) => e.fleetformdetails.vehicle_manufacturer)
      //     .toList();
      //   print("$names");
      // Navigator.push(
      //     context, MaterialPageRoute(builder: ((context) => FaqDetails())));
      //  List<FleetItemWidget> formsData = fleetitemwidget.map((e) => FleetItemWidget(name: e["value"]["name"])).toList();
      for(int i = 0; i < fleetitemwidget.length; i++)
      {

        
          FleetItemWidget fleetItemWidget = fleetitemwidget[i];
          
          Map<String ,dynamic> json =
          
          {

              // "Fleet Detail Form": fleetItemWidget.fLeetDetail.id,

        "value":{

              "vehicleManufacturer":fleetItemWidget.fLeetDetail.vehicleManufacturer,
              "vehicleModel":fleetItemWidget.fLeetDetail.vehicleModel,
              "vehicleMAkeYear":fleetItemWidget.fLeetDetail.vehicleMAkeYear,
              "VehicleCapMT":fleetItemWidget.fLeetDetail.vehicleCapMt,
              "Length":fleetItemWidget.fLeetDetail.length,
              "Width":fleetItemWidget.fLeetDetail.width,
              "Height":fleetItemWidget.fLeetDetail.height,
              "reeferUnitManufacturer":fleetItemWidget.fLeetDetail.reeferUnitManufacturer,
              "reeferUnitModel":fleetItemWidget.fLeetDetail.reeferUnitModel,
              "reeferMakeYear":fleetItemWidget.fLeetDetail.reeferMakeYear,
              "containerMake":fleetItemWidget.fLeetDetail.containerMake,
              "vehicleCount":fleetItemWidget.fLeetDetail.vehicleCount,
              "vehicleNo":fleetItemWidget.fLeetDetail.vehicleNo
              
        }

          };


      }
      



    } 
  print("Data Ayegaya "+json.toString());
  
   }
   onAdd() {
    setState(() {
      FleetFormDetails _fleetformdetails =
          FleetFormDetails(id: fleetitemwidget.length);
      fleetitemwidget.add(FleetItemWidget(
        index: fleetitemwidget.length,
        fleetformdetails: _fleetformdetails,
        // onRemove: () => onRemove(_contactModel),
      ));
    });
  }
}
