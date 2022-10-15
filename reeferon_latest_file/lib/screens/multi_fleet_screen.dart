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
    
     print("InSide  Mullti Fleet Details: ${widget.loginScreenModel.firstName}");
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
       List<FleetItemWidget> formsData = fleetitemwidget.map((e) => FleetItemWidget(name: e["value"]["name"])).toList();
      for(int i = 0; i < fleetitemwidget.length; i++)
      {

        


      Map<String, dynamic> json ={  

        "FLeetDetails Form": itemWidget.fleetformdetails.id,

        "value":FleetItemWidget{

          "vehicleManufacturer":itemWidget.fleetformdetails.vehicle_manufacturer,
          "vehicleModel":itemWidget.fleetformdetails.vehicle_model,
          "vehicleMAkeYear":itemWidget.fleetformdetails.vehicle_make_year,
          "VehicleCapMT":itemWidget.fleetformdetails.vehicle_capacity,
          "Length":itemWidget.fleetformdetails.length,
          "Width":itemWidget.fleetformdetails.width,
          "Height":itemWidget.fleetformdetails.height,
          "reeferUnitManufacturer":itemWidget.fleetformdetails.reefer_unit_manufacturer,
          "reeferUnitModel":itemWidget.fleetformdetails.reefer_unit_model,
          "reeferMakeYear":itemWidget.fleetformdetails.reefer_make_year,
          "containerMake":itemWidget.fleetformdetails.container_make,
          "vehicleCount":itemWidget.fleetformdetails.numberofvehicle,
          "vehicleNo":itemWidget.fleetformdetails.vehicle_number


        }
      };
        // data.add(itemWidget.fleetformdetails.vehicle_manufacturer+","+itemWidget.fleetformdetails.vehicle_model+","+itemWidget.fleetformdetails.vehicle_make_year);
        
        print(json); 
        

        //  print("Data in Multi Screen ${itemWidget.fleetformdetails.vehicle_manufacturer}");
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.vehicle_model);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.vehicle_make_year);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.vehicle_capacity);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.length);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.width);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.height);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.reefer_unit_manufacturer);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.reefer_unit_model);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.reefer_make_year);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.container_make);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.numberofvehicle);
        //  print("Data in Multi Screen "+itemWidget.fleetformdetails.vehicle_number);
      }


      Navigator.push(context, MaterialPageRoute(builder: ((context) => MultiFaqScreen(forms: formsData))));
    } 
    else {
      print(" Empty Data ");
      debugPrint("Form is Not Valid");
    }
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
