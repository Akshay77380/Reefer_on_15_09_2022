import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:referon/models/faqFormDetails.dart';
import 'package:referon/models/login_model.dart';
import 'package:referon/screens/dashBoard_screen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:referon/screens/success_screen.dart';
import 'package:referon/utils/Common.dart';
import 'package:searchfield/searchfield.dart';
import 'package:http/http.dart' as http;
import 'package:dropdownfield/dropdownfield.dart';

class FaQ extends StatefulWidget 
{
  const FaQ({Key key}) : super(key: key);

  @override
  State<FaQ> createState() => _FaQState();
}

class _FaQState extends State<FaQ> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: FaqDetails(),
    );
  }
}

class FaqDetails extends StatefulWidget {

  LoginScreenModel loginScreenModel;
  FaqDetails({Key key, this.faqDetails,this.index, this.onRemove}) : super(key: key);

  final index;
 
  Faq  faqDetails;
  final Function onRemove;
  final state = _FaqDetailsState();
 
 
  @override
  State<FaqDetails> createState() {
    return state;
  }
  

  // bool isValidated() => state.validate();
}

class _FaqDetailsState extends State<FaqDetails> {
  final _formKey2 = GlobalKey<FormState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  FocusNode _focusNode = FocusNode();

  _FaqDetailsState() {
    _selectedval = _list[0];
    _selectedval2 = _list2[0];
    _selectedval3 = _list3[0];
    _selectedval4 = _list4[0];
    _selectedval5 = _list5[0];
    _selectedval6 = _list6[0];
    _selectedval7 = _list7[0];
    _selectedval8 = _list8[0];
  }
  String _selectedval = "Select";
  String _selectedval2 = "Select";
  String _selectedval3 = "Select";
  String _selectedval4 = "Select";
  String _selectedval5 = "Select";
  String _selectedval6 = "Select";
  String _selectedval7 = "Select";
  String _selectedval8 = "Select";

  final selectedPreferredBankingPartner = TextEditingController();
  final selectedPreferredFastTagPartner = TextEditingController();
  final selectedPreferredInsurancePartner = TextEditingController();
  final selectedPreferredFuelPartner = TextEditingController();
  final selectedPreferredContainerOEM = TextEditingController();
  final selectedPreferredVehicleOEM = TextEditingController();
  final selectedPreferredTyreOEM = TextEditingController();
  final selectedPreferredReeferOEM = TextEditingController();

  String selectpreferredbankingpartner = "";
  String selectpreferredfasttag = "";
  String selectpreferinsurance = "";
  String selectprefferedfuelpartner = "";
  String selectprefferedcontaineroem = "";
  String selectedprefferedvehicleoem = "";
  String selectedprefferedTyreoem = "";
  String selectedpreferredrefferoem = "";


  var others_preferedOem;

  final _list = [
    "Select",
    "HPCL",
    "BPCL",
    "IOCL",
    "Reliance Petroleum",
    "Essar Oil",
    "Shell"
  ];
  final _list2 = [
    "Select",
    "Suraksha",
    "HLM",
    "Reefer India",
    "IcemakeIndia",
    "Subzero",
    "Kalyani cleantech",
    "TransACNR"
  ];
  final _list3 = [
    "Select",
    "Ashok Leyland",
    "Bharat Benz",
    "Eicher",
    "Mahindra & Mahindra",
    "TATA Motors",
    "Volvo"
  ];

  final _list4 = [
    "Select",
    "Ceat",
    "MRF",
    "JK Tyre",
    "Apollo",
    "Michelin",
    "Continental",
    "Pirelli"
  ];

  final _list5 = ["Select", "Carrier", "Thermoking", "Hwasung"];

  final _list6 = [
    "Select",

    // "Andhra Pradesh Grameena Vikas Bank",
    // "Andhra Pragathi Grameena Bank",
    // "Arunachal Pradesh Rural Bank",
    // "Aryavart Bank",
    // "Assam Gramin Vikash Bank",
    // "AU Small Finance Bank",
    // "Axis Bank",
    // "Bandhan Bank",
    // "Bangiya Gramin Vikash Bank",
    // "Bank of Baroda",
    // "Bank of India",
    // "Bank of Maharashtra",
    // "Baroda Gujarat Gramin Bank",
    // "Baroda Rajasthan Kshetriya Gramin Bank",
    // "Baroda UP Bank",
    // "Canara Bank",
    // "Capital Small Finance Bank",
    // "Central Bank of India",
    // "Chaitanya Godavari Gramin Bank",
    // "Chhattisgarh Rajya Gramin Bank",
    // "City Union Bank",
    // "CSB Bank",
    // "Dakshin Bihar Gramin Bank",
    // "DCB Bank",
    // "Dhanlaxmi Bank",
    // "Ellaquai Dehati Bank",
    // "Equitas Small Finance Bank",
    // "ESAF Small Finance Bank",
    // "Federal Bank",
    // "Fincare Small Finance Bank",
    // "HDFC Bank",
    // "Himachal Pradesh Gramin Bank",
    // "ICICI Bank",
    // "IDBI Bank",
    // "IDFC First Bank",
    // "Indian Bank",
    // "Indian Overseas Bank",
    // "IndusInd Bank",
    // "Jammu & Kashmir Bank",
    // "Jammu And Kashmir Grameen Bank",
    // "Jana Small Finance Bank",
    // "Jharkhand Rajya Gramin Bank",
    // "Karnataka Bank",
    // "Karnataka Gramin Bank",
    // "Karnataka Vikas Grameena Bank",
    // "Karur Vysya Bank",
    // "Kerala Gramin Bank",
    // "Kotak Mahindra Bank",
    // "Madhya Pradesh Gramin Bank",
    // "Madhyanchal Gramin Bank",
    // "Maharashtra Gramin Bank",
    // "Manipur Rural Bank",
    // "Meghalaya Rural Bank",
    // "Mizoram Rural Bank",
    // "Nagaland Rural Bank",
    // "Nainital Bank",
    // "North East Small Finance Bank",
    // "Odisha Gramya Bank",
    // "Paschim Banga Gramin Bank",
    // "Prathama UP Gramin Bank",
    // "Puduvai Bharathiar Grama Bank",
    // "Punjab and Sind Bank",
    // "Punjab Gramin Bank",
    // "Punjab National Bank",
    // "Rajasthan Marudhara Gramin Bank",
    // "RBL Bank"
    //     "Saptagiri Gramin Bank",
    // "Sarva Haryana Gramin Bank",
    // "Saurashtra Gramin Bank",
    // "Shivalik Small Finance Bank",
    // "South Indian Bank",
    // "State Bank of India",
    // "Suryoday Small Finance Bank",
    // "Tamil Nadu Grama Bank",
    // "Tamilnad Mercantile Bank",
    // "Telangana Grameena Bank",
    // "Tripura Gramin Bank",
    // "UCO Bank",
    // "Ujjivan Small Finance Bank"
    //     "Union Bank of India",
    // "Unity Small Finance Bank",
    // "Utkal Grameen Bank",
    // "Utkarsh Small Finance Bank",
    // "Uttar Bihar Gramin Bank",
    // "Uttarakhand Gramin Bank",
    // "Uttarbanga Kshetriya Gramin Bank",
    // "Vidarbha Konkan Gramin Bank",
    // "Yes Bank",

    "Others"
  ];

  final _list7 = [
    "Select",
    "Airtel Payments Bank",
    "AU Small Finance Bank",
    "Axis Bank Ltd",
    "Bank of Baroda",
    "Bank of Maharashtra",
    "Canara Bank",
    "Central Bank of India",
    "City Union Bank Ltd",
    "Cosmos Bank",
    "Dombivli Nagari Sahakari Bank",
    "Equitas Small Finance Bank",
    "Federal Bank",
    "FINO Payments Bank",
    "HDFC Bank",
    "ICICI Bank",
    "IDBI Bank",
    "IDFC First Bank",
    "Indian Bank",
    "Indian Overseas Bank",
    "IndusInd Bank Ltd.",
    "Jammu and Kashmir Bank",
    "Karnataka Bank",
    "Karur Vysya Bank",
    "Kotak Mahindra Bank",
    "Nagpur Nagarik Sahakari Bank",
    "PAYTM Payments Bank",
    "Punjab & Maharashtra Co-operative Bank",
    "Punjab National Bank",
    "Saraswat Bank",
    "South Indian Bank",
    "State Bank of India",
    "Syndicate Bank",
    "The Jalgaon People Co-op Bank",
    "Thrissur District Cooperative Bank (Kerala Bank)",
    "UCO Bank",
    "Union Bank of India",
    "Yes Bank Ltd"
  ];

  final _list8 = [
    "Select",
    "Oriental Commercial Vehicle Insurance",
    "Reliance General Commercial Vehicle Insurance",
    "Edelweiss Commercial Vehicle Insurance",
    "GoDigit Commercial Vehicle Insurance",
    "IFFCO Tokio Commercial Vehicle Insurance",
    "Bharti AXA Commercial Vehicle Insurance",
    "Shriram Commercial Vehicle Insurance",
    "Bajaj Allianz",
    "SBI Commercial Vehicle Insurance",
    "Navi Commercial Insurance"
  ];

  List<String> preferedbankinglist = ["Others"];
  List<String> preferedFastaglist = ["Others"];
  List<String> preferedinsurancelist = ["Others"];
  List<String> preferedfuellist = ["Others"];
  List<String> preferedcontaineroemlist = ["Others"];
  List<String> preferedvehicleoemlist = ["Others"];
  List<String> preferedtyreoemlist = ["Others"];
  List<String> preferedreeferoemlist = ["Others"];

  Future FetchPreferedBankingList() async {
    var response = await http.get(Uri.parse('${baseUrl}preeferdBankinPartner'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['bankPartner_Name']}');
      for (int i = 0; i < dataList.length; i++) {
        preferedbankinglist.add(dataList[i]['bankPartner_Name']);
      }
      print('Data Prefered  Details: $preferedbankinglist');
    }
  }

  Future FetchFastTagList() async {
    var response = await http.get(Uri.parse('${baseUrl}fastTagPartner'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['fastTag_Name']}');
      for (int i = 0; i < dataList.length; i++) {
        preferedFastaglist.add(dataList[i]['fastTag_Name']);
      }
      print('Data Fast Tag  Details: $preferedFastaglist');
    }
  }

  Future FetchinsuranceList() async {
    var response =
        await http.get(Uri.parse('${baseUrl}preeferdInsurrancePartner'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['Insurrance_Name']}');
      for (int i = 0; i < dataList.length; i++) {
        preferedinsurancelist.add(dataList[i]['Insurrance_Name']);
      }
      print('Data insurnace Details: $preferedinsurancelist');
    }
  }

  Future FetchfuelList() async {
    var response = await http.get(Uri.parse('${baseUrl}preeferdFuelPartner'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['fuel_Name']}');
      for (int i = 0; i < dataList.length; i++) {
        preferedfuellist.add(dataList[i]['fuel_Name']);
      }
      print('Data Fuel Details: $preferedinsurancelist');
    }
  }

  Future FetchvehicleContaineroemList() async {
    var response = await http.get(Uri.parse('${baseUrl}preeferdContainerOEM'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['PrecontainerOEM_Name']}');
      for (int i = 0; i < dataList.length; i++) {
        preferedcontaineroemlist.add(dataList[i]['PrecontainerOEM_Name']);
      }
      print('Data Fuel Details: $preferedinsurancelist');
    }
  }

  Future FetchvehicleoemList() async {
    var response = await http.get(Uri.parse('${baseUrl}preeferdVehicleOEM'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['Prevehicle_Name']}');
      for (int i = 0; i < dataList.length; i++) {
        preferedvehicleoemlist.add(dataList[i]['Prevehicle_Name']);
      }
      print('Data Vehicle Oem Details: $preferedvehicleoemlist');
    }
  }

  Future FetchtyreoemList() async {
    var response = await http.get(Uri.parse('${baseUrl}preeferdTyreOEM'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['PretyreOem_Name']}');
      for (int i = 0; i < dataList.length; i++) {
        preferedtyreoemlist.add(dataList[i]['PretyreOem_Name']);
      }
      print('Data Vehicle Oem Details: $preferedtyreoemlist');
    }
  }

  Future FetchreeferoemList() async {
    var response = await http.get(Uri.parse('${baseUrl}preeferdReeferOEM'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['PreReferOem_Name']}');
      for (int i = 0; i < dataList.length; i++) {
        preferedreeferoemlist.add(dataList[i]['PreReferOem_Name']);
      }
      print('Data Vehicle Oem Details: $preferedreeferoemlist');
    }
  }

  bool viewVisible = false;

  final selectedCompanyName = TextEditingController();
  String selectcompanyname = "";
  final _Edt_CompanyName = TextEditingController();

  @override
  void initState() {
    super.initState();
    //  print("InSide faq Details: ${widget.loginScreenModel.vehiclemanufacturer}");
    FetchPreferedBankingList();
    FetchFastTagList();
    FetchinsuranceList();
    FetchfuelList();
    FetchvehicleContaineroemList();
    FetchvehicleoemList();
    FetchtyreoemList();
    FetchreeferoemList();
  }

  @override
  Widget build(BuildContext context)
  {
    return Material(
      
      child: Padding(
        padding: const EdgeInsets.all(12.0),
            
          child: Form(
            key: _formKey2,
            child: Container(
              decoration: BoxDecoration(

                  // image: DecorationImage(image: AssetImage("assets/images/logo.png"),fit: BoxFit.contain,opacity: 500),
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircularPercentIndicator(
                              animation: true,
                              animationDuration: 5000,
                              radius: 30,
                              lineWidth: 10,
                              percent: 1.0,
                              progressColor: Color.fromRGBO(180, 211, 67, 30),
                              backgroundColor: Color.fromRGBO(17, 24, 66, 50),
                              circularStrokeCap: CircularStrokeCap.round,
                              center: const Text('100%',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                            ),
                            Spacer(),
                            Text(
                              "FAQ  Details",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 11, 11, 22),
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/logocircle.png',
                              width: 70,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                          child: Center(), //Center
                        ),
                        Container(
                        
                          child: Padding(
                              padding: EdgeInsets.only(left: 0, right: 0),
                              child: InputDecorator(
                                decoration: InputDecoration(
                                    filled: true,
                                    labelText: 'Preferred Banking Partner : ',
                                    labelStyle: TextStyle(
                                      color: Color.fromRGBO(17, 24, 66, 100),
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0, color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ))),
                                child: DropDownField(
                                  controller: selectedPreferredBankingPartner,

                                  hintText: "Select",
                                  enabled: true,
                                  items: preferedbankinglist,
                                  onValueChanged: (value) {
                                    widget.faqDetails.bankingPartner = value;
                                    print("Data of Selected Prefered banking partner: " + widget.faqDetails.bankingPartner);
                                    setState(() {
                                      
                        
                                      if (widget.faqDetails.bankingPartner ==
                                          "Others") {
                                        setState(() {
                                          selectedPreferredBankingPartner.text = "";
                                          


                                        });
                                      }
                                    });
                                  },
                                ),
                              )),
                        ),
                        
                        SizedBox(
                          height: 20.0,
                          child: Center(), //Center
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 0, right: 0),
                            child: InputDecorator(
                              decoration: InputDecoration(
                                  filled: true,
                                  labelText: 'Preferred FastTag Partner : ',
                                  labelStyle: TextStyle(
                                    color: Color.fromRGBO(17, 24, 66, 100),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 0, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ))),
                              child: DropDownField(
                                controller: selectedPreferredFastTagPartner,

                                hintText: "Select",
                                enabled: true,
                                items: preferedFastaglist,
                                onValueChanged: (value) {
                                  widget.faqDetails.fastTagPartner = value;

                                    if(widget.faqDetails.fastTagPartner == "Others")
                                    {

                                      selectedPreferredFastTagPartner.text = " ";
                                      

                                      }
                                  setState(() {

                                      print(widget.faqDetails.fastTagPartner);

                                    
                                  });
                                },
                              ),
                            )),
                        SizedBox(
                          height: 20.0,
                          child: Center(), //Center
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 0, right: 0),
                            child: InputDecorator(
                              decoration: InputDecoration(
                                  filled: true,
                                  labelText: 'Preferred Insurance Partner: ',
                                  labelStyle: TextStyle(
                                    color: Color.fromRGBO(17, 24, 66, 100),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 0, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ))),
                              child: DropDownField(
                                controller: selectedPreferredInsurancePartner,
                                hintText: "Select",
                                enabled: true,
                                items: preferedinsurancelist,
                                onValueChanged: (value) {

                                  widget.faqDetails.insurancePartner = value;

                                  if(widget.faqDetails.insurancePartner == "Others")
                                  {
                                    selectedPreferredInsurancePartner.text = "";
                                  }
                                  setState(() {
                                    // selectpreferinsurance = value;
                                    print(widget.faqDetails.insurancePartner);
                                  });
                                },
                              ),
                            )),
                        SizedBox(
                          height: 20.0,
                          child: Center(), //Center
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 0, right: 0),
                            child: InputDecorator(
                              decoration: InputDecoration(
                                  filled: true,
                                  labelText: 'Preferred Fuel Partner : ',
                                  labelStyle: TextStyle(
                                    color: Color.fromRGBO(17, 24, 66, 100),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 0, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ))),
                              child: DropDownField(
                                controller: selectedPreferredFuelPartner,

                                hintText: "Select",
                                enabled: true,
                                items: preferedfuellist,
                                onValueChanged: (value) {

                                  widget.faqDetails.fuelPartner = value;
                                  
                                  if(widget.faqDetails.fuelPartner == "Others")
                                  {
                                    selectedPreferredFuelPartner.text = " ";
                                  }
                                  setState(() {
                                    // String selectprefferedfuelpartner = value;
                                    print(widget.faqDetails.fuelPartner);

                                  });
                                },
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 0, right: 0),
                            child: InputDecorator(
                              decoration: InputDecoration(
                                  filled: true,
                                  labelText: 'Preferred Container OEM : ',
                                  labelStyle: TextStyle(
                                    color: Color.fromRGBO(17, 24, 66, 100),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 0, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ))),
                              child: DropDownField(
                                controller: selectedPreferredContainerOEM,
                                

                                hintText: "Select",
                                enabled: true,
                                items: preferedcontaineroemlist,
                                onValueChanged: (value) {
                                  widget.faqDetails.containerOem = value;

                                  if(widget.faqDetails.containerOem == "Others")
                                  {

                                      selectedPreferredContainerOEM.text = "";

                                  }
                                  setState(() {


                                    // String selectprefferedcontaineroem = value;
                                    print(widget.faqDetails.containerOem);

                                  });
                                },
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 0, right: 0),
                            child: InputDecorator(
                              decoration: InputDecoration(
                                  filled: true,
                                  labelText: 'Preferred Vehicle OEM : ',
                                  labelStyle: TextStyle(
                                    color: Color.fromRGBO(17, 24, 66, 100),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 0, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ))),
                              child: DropDownField(
                                controller: selectedPreferredVehicleOEM,
                                hintText: "Select",
                                enabled: true,
                                items: preferedvehicleoemlist,
                                onValueChanged: (value) {
                                  widget.faqDetails.vehicleOem= value;
                                  
                                  if(widget.faqDetails.vehicleOem == "Others")
                                  {

                                    selectedPreferredVehicleOEM.text = "";
                                  }

                                  setState(() {
                                    // String selectedprefferedvehicleoem = value;
                                    print(widget.faqDetails.vehicleOem);
                                  });
                                },
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 0, right: 0),
                            child: InputDecorator(
                              decoration: InputDecoration(
                                  filled: true,
                                  labelText: 'Preferred Tyre OEM : ',
                                  labelStyle: TextStyle(
                                    color: Color.fromRGBO(17, 24, 66, 100),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 0, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ))),
                              child: DropDownField(
                                controller: selectedPreferredTyreOEM,
                                

                                hintText: "Select",
                                enabled: true,
                                items: preferedtyreoemlist,
                                onValueChanged: (value) {
                                  widget.faqDetails.tyreOem = value;

                                  if(widget.faqDetails.tyreOem == "Others")
                                  {

                                        selectedPreferredTyreOEM.text = "";

                                  }
                                  setState(() {
                                    print("widget.faqFormDetails.preferedtyreoem ");
                                  });
                                },
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 0, right: 0),
                            child: InputDecorator(
                              decoration: InputDecoration(
                                  filled: true,
                                  labelText: 'Preferred Reefer OEM : ',
                                  labelStyle: TextStyle(
                                    color: Color.fromRGBO(17, 24, 66, 100),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 0, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ))),
                              child: DropDownField(
                                controller: selectedPreferredReeferOEM,
                                hintText: "Select",
                                enabled: true,
                                items: preferedreeferoemlist,
                                onValueChanged: (value) {

                                  widget.faqDetails.reeferOem = value;

                                  if(widget.faqDetails.reeferOem == "Others")
                                  {
                                    selectedPreferredReeferOEM.text = "";

                                    others_preferedOem = value;
                                    print(others_preferedOem);

                                    // others_preferedOem = selectedPreferredReeferOEM.text;



                                    
                                  }
                                  setState(() {
                                    // String selectedpreferredrefferoem = value;
                                    print(selectedpreferredrefferoem);
                                  });
                                },
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        // ButtonTheme(
                        //   child: Padding(
                        //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        //     child: ElevatedButtonTheme(
                        //       data: ElevatedButtonThemeData(
                        //         style: ElevatedButton.styleFrom(
                        //           minimumSize: Size(400.0, 50),

                        //           primary: Color.fromRGBO(17, 24, 66,
                        //               40), // Sets color for all the descendent ElevatedButtons
                        //           shape: RoundedRectangleBorder(
                        //               borderRadius: BorderRadius.all(
                        //                   Radius.circular(6.0))),
                        //         ),
                        //       ),
                        //       child: ElevatedButton(
                        //         child: Text(' Add More '),
                        //         onPressed: () {
                        //           // onSubmit();
                        //         },
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 30.0,
                        // ),
                        // Text(
                        //   "--------------------OR--------------------",
                        //   style: TextStyle(
                        //     fontSize: 18,
                        //     fontWeight: FontWeight.bold,
                        //     color: Color.fromARGB(255, 11, 11, 22),
                        //     fontStyle: FontStyle.normal,
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 30.0,
                        // ),
                        // ButtonTheme(
                        //   child: Padding(
                        //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        //     child: ElevatedButtonTheme(
                        //       data: ElevatedButtonThemeData(
                        //         style: ElevatedButton.styleFrom(
                        //           minimumSize: Size(400.0, 50),

                        //           primary: Color.fromRGBO(17, 24, 66,
                        //               40), // Sets color for all the descendent ElevatedButtons
                        //           shape: RoundedRectangleBorder(
                        //               borderRadius: BorderRadius.all(
                        //                   Radius.circular(6.0))),
                        //         ),
                        //       ),
                        //       child: ElevatedButton(
                        //         child: Text(' Submit '),
                        //         onPressed: () {
                        //           onSubmit();
                        //         },
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }

  void onSubmit() async {
// updated data
    LoginScreenModel logindata = widget.loginScreenModel;
    logindata = LoginScreenModel(
        // contact: widget.loginScreenModel.contact,
        
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
      

        // vendorType: widget.loginScreenModel.vehiclemanufacturer,
        // vehiclemodel: widget.loginScreenModel.vehiclemodel,
        // vehiclemakeyear: widget.loginScreenModel.vehiclemakeyear,
        // vehiclecapactity: widget.loginScreenModel.vehiclecapactity,
        // length: widget.loginScreenModel.length,
        // width: widget.loginScreenModel.width,
        // height: widget.loginScreenModel.height,
        // reeferunitmanufacture: widget.loginScreenModel.reeferunitmanufacture,
        // reeferunitmodel: widget.loginScreenModel.reeferunitmodel,
        // reefermakeyear: widget.loginScreenModel.reefermakeyear,
        // containermake: widget.loginScreenModel.containermake,
        // no_of_vehicles: widget.loginScreenModel.no_of_vehicles,
        // vehiclenum: widget.loginScreenModel.vehiclenum,
        // preferredbankingpartner: selectedPreferredBankingPartner.text,
        // preferedfast_tagpartner: selectedPreferredFastTagPartner.text,
        // preferedinsurancepartner: selectedPreferredInsurancePartner.text,
        // preferedfuelpartner: selectedPreferredFuelPartner.text,
        // preferedcontaineroem: selectedPreferredContainerOEM.text,
        // preferedvehicleoem: selectedPreferredVehicleOEM.text,
        // preferedtyreoem: selectedPreferredTyreOEM.text,
        // preferedreeferoem: selectedPreferredReeferOEM.text

        );

    print(jsonEncode({
      "CompanyName": logindata.companyName,
      "firstName": logindata.firstName,
      "lastName": logindata.lastName,
      "contact": logindata.contact,
      "altcontact": logindata.altcontact,
      "emailid": logindata.emailid,
      "landmark": logindata.landmark,
      "Address1": logindata.address1,
      "Address2": logindata.address2,
      "Designation": logindata.designation,
      "pincode": logindata.pincode,
      "city": logindata.city,
      "panNo": logindata.panNo,
      "PanImg": logindata.panImg,
      // "year": logindata.,
      "CompanyType": logindata.companyType,
      "BusinessType": logindata.businessType,
      "VendorType": "",

      // "PreferredInsurance": logindata.,
      // "PreferredFuel": logindata.preferedfuelpartner,
      // "PreferredContainer": logindata.preferedcontaineroem,
      // "PreferredVehicle": logindata.preferedvehicleoem,
      // "PreferredTyreOEM": logindata.preferedtyreoem,
      // "PreferredReeferOEM": logindata.preferedreeferoem,

      "CancelChequeNo": logindata.cancelChequeNo,
      "CancelChequeIMG": logindata.cancelChequeImg,
      "GstNo": logindata.gstNo,
      "GSTImg": logindata.gstImg,
      "FSSAILicNo": logindata.fssaiLicNo,
      "FSSAIImg": logindata.fssaiImg,
      "BusinessCard": logindata.businessCard,
      "BusinessImg": logindata.businessImg,
      "OtherDoc": logindata.otherDoc,
      "OtherDocImg": logindata.otherDocImg,
      "Region": logindata.city,
      "StateName": logindata.stateName,
      "CountryName": logindata.countryName,

      // "vehicleManufacturer": logindata.vehiclemanufacturer,
      // "vehicleModel": logindata.vehiclemodel,
      // "vehicleMAkeYear": logindata.vehiclemakeyear,
      // "VehicleCapMT": logindata.vehiclecapactity,
      // "reeferUnitModel": logindata.reeferunitmodel,
      // "reeferMakeYear": logindata.reefermakeyear,
      // "containerMake": logindata.containermake,
      // "vehicleCount": logindata.no_of_vehicles
    }));

    http.Response response = await http.post(
        Uri.parse("http://neotech.v-cloud.in/referonapi/submitApi"),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: jsonEncode({
          "CompanyName": logindata.companyName,
          "firstName": logindata.companyType,
          "lastName": logindata.lastName,
          "contact": logindata.contact,
          "altcontact": logindata.altcontact,
          "emailid": logindata.emailid,
          "landmark": logindata.landmark,
          "Address1": logindata.address1,
          "Address2": logindata.address2,
          "Designation": logindata.designation,
          "pincode": logindata.pincode,
          "city": logindata.city,
          "panNo": logindata.panNo,
          "PanImg": logindata.panImg,

          "year": logindata.year,
          "CompanyType": logindata.companyName,
          "BusinessType": logindata.businessType,
          "VendorType": "",

          // "PreferredInsurance": logindata.preferedinsurancepartner,
          // "PreferredFuel": logindata.preferedfuelpartner,
          // "PreferredContainer": logindata.preferedcontaineroem,
          // "PreferredVehicle": logindata.preferedvehicleoem,
          // "PreferredTyreOEM": logindata.preferedtyreoem,
          // "PreferredReeferOEM": logindata.preferedreeferoem,
          // "CancelChequeNo": logindata.cancelChequeNo,
          // "CancelChequeIMG": logindata.cancelChequeImg,
          // "GstNo": logindata.gstNo,
          // "GSTImg": logindata.gstImg,
          // "FSSAILicNo": logindata.fssaiLicNo,
          // "FSSAIImg": logindata.fssaiImg,
          // "BusinessCard": logindata.businessCard,
          // "BusinessImg": logindata.businessImg,
          // "OtherDoc": logindata.otherDoc,
          // "OtherDocImg": logindata.otherDocImg,
          // "Region": logindata.city,
          // "StateName": logindata.stateName,
          // "CountryName": logindata.countryName,
          // "vehicleManufacturer": logindata.vehiclemanufacturer,
          // "vehicleModel": logindata.vehiclemodel,
          // "vehicleMAkeYear": logindata.vehiclemakeyear,
          // "VehicleCapMT": logindata.vehiclecapactity,
          // "reeferUnitModel": logindata.reeferunitmodel,
          // "reeferMakeYear": logindata.reefermakeyear,
          // "containerMake": logindata.containermake,
          // "vehicleCount": logindata.no_of_vehicles
        }));

    print("Response body${response.body}");

    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => SuccessScreen())));

// final text = 'Thanks for completing the Onboarding Formalities, within 48hrs will update you the status';
//                                         final snackBar = SnackBar(content: Text(text));

//                                         ScaffoldMessenger.of(context).showSnackBar(snackBar);

// print("Saved Data:"+
//         "Company Name:"+logindata.companyname+
//        "firstName :"+logindata.firstname+
//        "lastname :"+logindata.lastname+
//        "contact :"+logindata.mobilenum+
//        "altcontact :"+logindata.alternativemobilenum+
//        "emailid :"+logindata.emailaddress+
//        "landmark :"+logindata.landmark+
//        "Address1 :"+logindata.address1+
//        "Address2 :"+logindata.address2+
//        "Designatoin:"+logindata.designation+
//        "pincode:"+logindata.pincode+
//        "city :"+logindata.city+
//        "panNo :"+logindata.pancardno+
//        "panImg :"+logindata.pancardimg+
//        "year :"+logindata.vehiclemakeyear+
//        "company Type :"+logindata.companytype+
//        "business Type :"+logindata.businesstype+
//        "vendor type :"+"Reeferon"+
//        "preferred Insurance :"+logindata.preferedinsurancepartner+
//        "prefered fuel :"+logindata.preferedfuelpartner+
//        "prefered Container :"+logindata.preferedcontaineroem+
//        "prefered Vehicle :"+logindata.preferedvehicleoem+
//        "prefered Tyreoem:"+logindata.preferedtyreoem+
//        "prefered Reefer oem :"+logindata.preferedreeferoem+
//        "Cancel cheque no:"+logindata.cancelchequeno+
//        "Cancel Cheque Img :"+logindata.cancelchequeimg+
//        "Gst no :"+logindata.gstno+
//        "Gst img :"+logindata.gstnoimg+
//        "Fssai license no:"+logindata.fssailicenseno+
//        "Fssai Img : "+logindata.fssaillicenseimg+
//        "business card :"+logindata.businesscardno+
//        "business img :"+logindata.businesscardnoimg+
//        "other doc no:"+logindata.otherscardno+
//        "other doc img :"+logindata.otherscardnoimg+
//        "region :"+logindata.city+
//        "state :"+logindata.state+
//        "Country :"+logindata.country+
//        "vehicle manufacture:"+logindata.vehiclemanufacturer+
//        "vehicle model :"+logindata.vehiclemodel+
//        "vehicle make year :"+logindata.vehiclemakeyear+
//        "vehicle capacity :"+logindata.vehiclecapactity+
//        "reefer unit model :"+logindata.reeferunitmodel+
//        "reefer make year :"+logindata.reefermakeyear+
//        "container make "+logindata.containermake+
//        "vehicle count :"+logindata.no_of_vehicles

//     );

    // Navigator.push(
    //                                 context,
    //                                 MaterialPageRoute(
    //                                     builder: ((context) => DashBoard())));
  }
  // bool validate() {
  //   //Validate Form Fields
  //   bool validate = _formKey2.currentState.validate();
  //   if (validate) _formKey2.currentState.save();
  //   return validate;
  // }
}
