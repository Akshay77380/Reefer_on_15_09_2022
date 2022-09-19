import 'package:flutter/cupertino.dart';
import 'dart:convert';

// List<PostOffice> pincodeApiFromJson(String str) =>
//     List<PostOffice>.from(json.decode(str).map((x) => PostOffice.fromMap(x)));





class PostOffice {
   String region;
  String state;
  String country;

  PostOffice({
    this.region,
    this.state,
    this.country,
  });

 
  // factory PostOffice.fromMap(Map<String, dynamic> json) => PostOffice(
  //       region: json["Region"],
  //       state: json["State"],
  //       country: json["Country"],
  //     );

PostOffice.fromJson(Map<String,dynamic> json)
{
  region = json['Region'];
  state = json['State'];
  country = json['Country'];
}
  
}
