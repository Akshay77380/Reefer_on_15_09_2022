import 'package:flutter/cupertino.dart';
import 'dart:convert';

// List<PostOffice> pincodeApiFromJson(String str) =>
//     List<PostOffice>.from(json.decode(str).map((x) => PostOffice.fromMap(x)));





class getVehicleModel_List {
   String vehiclemodel;
 

  getVehicleModel_List({
    this.vehiclemodel,
 
  });

 
  // factory PostOffice.fromMap(Map<String, dynamic> json) => PostOffice(
  //       region: json["Region"],
  //       state: json["State"],
  //       country: json["Country"],
  //     );

getVehicleModel_List.fromJson(Map<String,dynamic> json)
{
 vehiclemodel = json['vehiclemodel'];
 
}
  
}
