import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:referon/models/fleetFormDetails.dart';
import 'package:referon/screens/empty_state.dart';
import 'package:referon/screens/fleet_item_widget.dart';
import 'package:referon/screens/multi_fleet_screen.dart';
import 'fleet_details_screen.dart';

class MultiFleetScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MultiFleetScreenState();
  }
}

class _MultiFleetScreenState extends State<MultiFleetScreen> {
  List<FleetItemWidget> fleetitemwidget = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Please Click on Add Button To Display Form'),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
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
      body: fleetitemwidget.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: fleetitemwidget.length,
              itemBuilder: (_, index) {
                return fleetitemwidget[index];
              })
          : Center(child: Text("Tap on + to Add Contact")),
    );
  }

  onSave() {
    bool allValid = true;

    fleetitemwidget
        .forEach((element) => allValid = (allValid && element.isValidated()));

    if (allValid) {
      List<String> names = fleetitemwidget
          .map((e) => e.fleetformdetails.vehicle_manufacturer)
          .toList();
      debugPrint("$names");
    } else {
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
