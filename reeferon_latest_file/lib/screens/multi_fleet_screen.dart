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
  
    List<FleetDetailsForm> fleetdetailsform = [];



    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text(''),),
           body: Container(
            child: fleetdetailsform.length <= 0 
            ?Center(
              child: EmptyState(
                title: 'oops',
                message: 'ssls',
              ) ,
            ):ListView.builder(
              addAutomaticKeepAlives: true,
              itemCount: fleetdetailsform.length,
              itemBuilder:(_,i) => fleetdetailsform[i])
           ),
           floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: onAddForm,
            foregroundColor: Colors.white,  
           ),
        );
   }
   ///on add form
  void onAddForm() {
    setState(() {
      var _user = FleetFormDetails();
      fleetdetailsform.add(FleetDetailsForm(
        fleetformdetails :_user,
       
      ));
    });
  }
  }