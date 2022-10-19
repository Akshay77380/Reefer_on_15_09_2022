// To parse this JSON data, do
//
//     final loginScreenModel = loginScreenModelFromJson(jsonString);

import 'dart:convert';

import 'package:referon/models/faqFormDetails.dart';
import 'package:referon/screens/fleet_details_screen.dart';
import 'package:referon/screens/fleet_item_widget.dart';

LoginScreenModel loginScreenModelFromJson(String str) => LoginScreenModel.fromJson(json.decode(str));

String loginScreenModelToJson(LoginScreenModel data) => json.encode(data.toJson());

class LoginScreenModel 
{
    LoginScreenModel({
        this.companyName, 
        this.firstName,
        this.lastName,
        this.contact,
        this.altcontact,
        this.emailid,
        this.landmark,
        this.address1,
        this.address2,
        this.designation,
        this.pincode,
        this.city,
        this.panNo,
        this.panImg,
        this.year,
        this.companyType,
        this.businessType,
        this.vendorType,
        this.cancelChequeNo,
        this.cancelChequeImg,
        this.gstNo,
        this.gstImg,
        this.fssaiLicNo,
        this.fssaiImg,
        this.businessCard,
        this.businessImg,
        this.otherDoc,
        this.otherDocImg,
        this.region,
        this.stateName,
        this.countryName,

        this.fLeetDetails,

        this.faq,
        
    });

    String companyName;
    String firstName;
    String lastName;
    String contact;
    String altcontact;
    String emailid;
    String landmark;
    String address1;
    String address2;
    String designation;
    String pincode;
    String city;
    String panNo;
    String panImg;
    String year;
    String companyType;
    String businessType;
    String vendorType;
    String cancelChequeNo;
    String cancelChequeImg;
    String gstNo;
    String gstImg;
    String fssaiLicNo;
    String fssaiImg;
    String businessCard;
    String businessImg;
    String otherDoc;
    String otherDocImg;
    String region;
    String stateName;
    String countryName;

    List<FLeetDetail> fLeetDetails;

    List<Faq> faq;

    factory LoginScreenModel.fromJson(Map<String, dynamic> json) => LoginScreenModel(

        companyName: json["CompanyName"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        contact: json["contact"],
        altcontact: json["altcontact"],
        emailid: json["emailid"],
        landmark: json["landmark"],
        address1: json["Address1"],
        address2: json["Address2"],
        designation: json["Designation"],
        pincode: json["pincode"],
        city: json["city"],
        panNo: json["panNo"],
        panImg: json["PanImg"],
        year: json["year"],
        companyType: json["CompanyType"],
        businessType: json["BusinessType"],
        vendorType: json["VendorType"],
        cancelChequeNo: json["CancelChequeNo"],
        cancelChequeImg: json["CancelChequeIMG"],
        gstNo: json["GstNo"],
        gstImg: json["GSTImg"],
        fssaiLicNo: json["FSSAILicNo"],
        fssaiImg: json["FSSAIImg"],
        businessCard: json["BusinessCard"],
        businessImg: json["BusinessImg"],
        otherDoc: json["OtherDoc"],
        otherDocImg: json["OtherDocImg"],
        region: json["Region"],
        stateName: json["StateName"],
        countryName: json["CountryName"],

        fLeetDetails: List<FLeetDetail>.from(json["FLeetDetails"].map((x) => FLeetDetail.fromJson(x))),

        faq: List<Faq>.from(json["FAQ"].map((x) => Faq.fromJson(x))),

    );

    Map<String, dynamic> toJson() => {
        "CompanyName": companyName,
        "firstName": firstName,
        "lastName": lastName,
        "contact": contact,
        "altcontact": altcontact,
        "emailid": emailid,
        "landmark": landmark,
        "Address1": address1,
        "Address2": address2,
        "Designation": designation,
        "pincode": pincode,
        "city": city,
        "panNo": panNo,
        "PanImg": panImg,
        "year": year,
        "CompanyType": companyType,
        "BusinessType": businessType,
        "VendorType": vendorType,
        "CancelChequeNo": cancelChequeNo,
        "CancelChequeIMG": cancelChequeImg,
        "GstNo": gstNo,
        "GSTImg": gstImg,
        "FSSAILicNo": fssaiLicNo,
        "FSSAIImg": fssaiImg,
        "BusinessCard": businessCard,
        "BusinessImg": businessImg,
        "OtherDoc": otherDoc,
        "OtherDocImg": otherDocImg,
        "Region": region,
        "StateName": stateName,
        "CountryName": countryName,

        "FLeetDetails": List<Map<String,dynamic>>.from(fLeetDetails.map((x) => x.toJson())),

        "FAQ": List<Map<String,dynamic>>.from(faq.map((x) => x.toJson())),
    };
}

class FLeetDetail {
    FLeetDetail({
        this.id,
        this.vehicleManufacturer,
        this.vehicleModel,
        this.vehicleMAkeYear,
        this.vehicleCapMt,
        this.length,
        this.width,
        this.height,
        this.reeferUnitManufacturer,
        this.reeferUnitModel,
        this.reeferMakeYear,
        this.containerMake,
        this.vehicleCount,
        this.vehicleNo,
    });
    int id;
    String vehicleManufacturer;
    String vehicleModel;
    String vehicleMAkeYear;
    String vehicleCapMt;
    String length;
    String width;
    String height;
    String reeferUnitManufacturer;
    String reeferUnitModel;
    String reeferMakeYear;
    String containerMake;
    String vehicleCount;
    String vehicleNo;

    factory FLeetDetail.fromJson(Map<String, dynamic> json) => FLeetDetail(

        vehicleManufacturer: json["vehicleManufacturer"],
        vehicleModel: json["vehicleModel"],
        vehicleMAkeYear:json["vehicleMAkeYear"],
        vehicleCapMt: json["VehicleCapMT"],
        length: json["Length"],
        width: json["Width"],
        height: json["Height"],
        reeferUnitManufacturer: json["reeferUnitManufacturer"],
        reeferUnitModel: json["reeferUnitModel"],
        reeferMakeYear:json["reeferMakeYear"],
        containerMake: json["containerMake"],
        vehicleCount: json["vehicleCount"],
        vehicleNo: json["vehicleNo"],
    );

    Map<String, dynamic> toJson() => {

        "vehicleManufacturer": vehicleManufacturer,
        "vehicleModel": vehicleModel,
        "vehicleMAkeYear": vehicleMAkeYear,
        "VehicleCapMT": vehicleCapMt,
        "Length": length,
        "Width": width,
        "Height": height,
        "reeferUnitManufacturer": reeferUnitManufacturer,
        "reeferUnitModel": reeferUnitModel,
        "reeferMakeYear": reeferMakeYear,
        "containerMake": containerMake,
        "vehicleCount": vehicleCount,
        "vehicleNo": vehicleNo,

    };

    @override
      String toString()
    {
      return '{vehicleManufacturer:$vehicleManufacturer, vehicleModel:$vehicleModel, vehicleMAkeYear:$vehicleMAkeYear, vehicleCapMt:$vehicleCapMt,Length:$length,Width:$width,Height:$height,reeferUnitManufacturer:$reeferUnitManufacturer,reeferUnitModel:$reeferUnitModel,reeferMakeYear:$reeferMakeYear,containerMake:$containerMake,vehicleCount:$vehicleCount,vehicleNo:$vehicleNo}';
    }
}

class Faq {
    Faq({
        this.id,
        this.bankingPartner,
        this.fastTagPartner,
        this.insurancePartner,
        this.fuelPartner,
        this.containerOem,
        this.vehicleOem,
        this.tyreOem,
        this.reeferOem,
    });
    int id;
    String bankingPartner;
    String fastTagPartner;
    String insurancePartner;
    String fuelPartner;
    String containerOem;
    String vehicleOem;
    String tyreOem;
    String reeferOem;

    factory Faq.fromJson(Map<String, dynamic> json) => Faq(
        bankingPartner: json["banking_partner"],
        fastTagPartner: json["fastTag_partner"],
        insurancePartner: json["insurance_partner"],
        fuelPartner: json["fuel_partner"],
        containerOem: json["container_OEM"],
        vehicleOem: json["vehicle_OEM"],
        tyreOem: json["tyre_OEM"],
        reeferOem: json["reefer_OEM"],
    );

    Map<String, dynamic> toJson() => {
        "banking_partner": bankingPartner,
        "fastTag_partner": fastTagPartner,
        "insurance_partner": insurancePartner,
        "fuel_partner": fuelPartner,
        "container_OEM": containerOem,
        "vehicle_OEM": vehicleOem,
        "tyre_OEM": tyreOem,
        "reefer_OEM": reeferOem,
    };
}
