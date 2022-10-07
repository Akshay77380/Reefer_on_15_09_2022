import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:referon/models/fleetFormDetails.dart';
import 'package:referon/screens/empty_state.dart';
import 'package:referon/screens/multi_fleet_screen.dart';
import 'fleet_details_screen.dart';

 
 class MultiFleetScreen extends StatefulWidget {
 
   const MultiFleetScreen({ Key key }) : super(key: key);
 
   @override
   State<MultiFleetScreen> createState() => _MultiFleetScreenState();
 }
 
 class _MultiFleetScreenState extends State<MultiFleetScreen> {
  
    List<FleetDetailsForm> fleetdetailsform = List.empty(growable: true);



    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('Please Click on Add Button To Display Form'),),
            bottomNavigationBar: Padding(padding: EdgeInsets.all(8.0),
            child: CupertinoButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            onSave();
          },
          child: Text("Save"),
        ),
            ),
            floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add), 
        onPressed: () {
          onAdd();
        },
      ),
      body: fleetdetailsform.isNotEmpty
          ? ListView.builder(
              itemCount: fleetdetailsform.length,
              itemBuilder: (_, index) {
                return fleetdetailsform[index];
              })
          : Center(child: Text("Tap on + to Add Contact")),
        );
   }
   onSave() {
    bool allValid = true;

    fleetdetailsform
        .forEach((element) => allValid = (allValid && element.isValidated()));

    if (allValid) {
      List<String> names =
          fleetdetailsform.map((e) => e.fleetformdetails.vehicle_manufacturer).toList();
      debugPrint("$names");
    } else {
      debugPrint("Form is Not Valid");
    }
  }
  

  onAdd() {
    setState(() {
      FleetFormDetails _fleetdetails = FleetFormDetails(id: fleetdetailsform.length);
      fleetdetailsform.add(FleetDetailsForm(
        index: fleetdetailsform.length,
        fleetformdetails: _fleetdetails,
        
      ));
    });
  }
 }