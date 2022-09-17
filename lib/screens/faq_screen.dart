import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:referon/screens/dashBoard_screen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:searchfield/searchfield.dart';
import 'package:dropdownfield/dropdownfield.dart';

class FaQ extends StatefulWidget {
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
  const FaqDetails({Key key}) : super(key: key);

  @override
  State<FaqDetails> createState() => _FaqDetailsState();
}

class _FaqDetailsState extends State<FaqDetails> {
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
    "Andhra Pradesh Grameena Vikas Bank",
    "Andhra Pragathi Grameena Bank",
    "Arunachal Pradesh Rural Bank",
    "Aryavart Bank",
    "Assam Gramin Vikash Bank",
    "AU Small Finance Bank",
    "Axis Bank",
    "Bandhan Bank",
    "Bangiya Gramin Vikash Bank",
    "Bank of Baroda",
    "Bank of India",
    "Bank of Maharashtra",
    "Baroda Gujarat Gramin Bank",
    "Baroda Rajasthan Kshetriya Gramin Bank",
    "Baroda UP Bank",
    "Canara Bank",
    "Capital Small Finance Bank",
    "Central Bank of India",
    "Chaitanya Godavari Gramin Bank",
    "Chhattisgarh Rajya Gramin Bank",
    "City Union Bank",
    "CSB Bank",
    "Dakshin Bihar Gramin Bank",
    "DCB Bank",
    "Dhanlaxmi Bank",
    "Ellaquai Dehati Bank",
    "Equitas Small Finance Bank",
    "ESAF Small Finance Bank",
    "Federal Bank",
    "Fincare Small Finance Bank",
    "HDFC Bank",
    "Himachal Pradesh Gramin Bank",
    "ICICI Bank",
    "IDBI Bank",
    "IDFC First Bank",
    "Indian Bank",
    "Indian Overseas Bank",
    "IndusInd Bank",
    "Jammu & Kashmir Bank",
    "Jammu And Kashmir Grameen Bank",
    "Jana Small Finance Bank",
    "Jharkhand Rajya Gramin Bank",
    "Karnataka Bank",
    "Karnataka Gramin Bank",
    "Karnataka Vikas Grameena Bank",
    "Karur Vysya Bank",
    "Kerala Gramin Bank",
    "Kotak Mahindra Bank",
    "Madhya Pradesh Gramin Bank",
    "Madhyanchal Gramin Bank",
    "Maharashtra Gramin Bank",
    "Manipur Rural Bank",
    "Meghalaya Rural Bank",
    "Mizoram Rural Bank",
    "Nagaland Rural Bank",
    "Nainital Bank",
    "North East Small Finance Bank",
    "Odisha Gramya Bank",
    "Paschim Banga Gramin Bank",
    "Prathama UP Gramin Bank",
    "Puduvai Bharathiar Grama Bank",
    "Punjab and Sind Bank",
    "Punjab Gramin Bank",
    "Punjab National Bank",
    "Rajasthan Marudhara Gramin Bank",
    "RBL Bank"
        "Saptagiri Gramin Bank",
    "Sarva Haryana Gramin Bank",
    "Saurashtra Gramin Bank",
    "Shivalik Small Finance Bank",
    "South Indian Bank",
    "State Bank of India",
    "Suryoday Small Finance Bank",
    "Tamil Nadu Grama Bank",
    "Tamilnad Mercantile Bank",
    "Telangana Grameena Bank",
    "Tripura Gramin Bank",
    "UCO Bank",
    "Ujjivan Small Finance Bank"
        "Union Bank of India",
    "Unity Small Finance Bank",
    "Utkal Grameen Bank",
    "Utkarsh Small Finance Bank",
    "Uttar Bihar Gramin Bank",
    "Uttarakhand Gramin Bank",
    "Uttarbanga Kshetriya Gramin Bank",
    "Vidarbha Konkan Gramin Bank",
    "Yes Bank"
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: (){

          moveToLastScreen();

      },
      child: Scaffold(
          appBar: AppBar(
            title:
                Image.asset('assets/images/loginheader.png', fit: BoxFit.cover),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          backgroundColor: Colors.white,
          body: Container(
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
                                style:
                                    TextStyle(fontSize: 15, color: Colors.black)),
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
                      Padding(
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
                              items: _list6,
                              onValueChanged: (value) {
                                setState(() {
                                  selectpreferredbankingpartner = value;
                                  print(selectpreferredbankingpartner);
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
                              items: _list7,
                              onValueChanged: (value) {
                                setState(() {
                                  selectpreferredfasttag = value;
                                  print(selectpreferredfasttag);
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
                              items: _list8,
                              onValueChanged: (value) {
                                setState(() {
                                  selectpreferinsurance = value;
                                  print(selectpreferinsurance);
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
                              items: _list,
                              onValueChanged: (value) {
                                setState(() {
                                  String selectprefferedfuelpartner = value;
                                  print(selectprefferedfuelpartner);
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
                              items: _list2,
                              onValueChanged: (value) {
                                setState(() {
                                  String selectprefferedcontaineroem = value;
                                  print(selectprefferedcontaineroem);
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
                              items: _list3,
                              onValueChanged: (value) {
                                setState(() {
                                  String selectedprefferedvehicleoem = value;
                                  print(selectedprefferedvehicleoem);
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
                              items: _list4,
                              onValueChanged: (value) {
                                setState(() {
                                  String selectedprefferedTyreoem = value;
                                  print(selectedprefferedTyreoem);
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
                              controller: selectedPreferredVehicleOEM,
                              hintText: "Select",
                              enabled: true,
                              items: _list5,
                              onValueChanged: (value) {
                                setState(() {
                                  String selectedpreferredrefferoem = value;
                                  print(selectedpreferredrefferoem);
                                });
                              },
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonTheme(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: ElevatedButtonTheme(
                            data: ElevatedButtonThemeData(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(180.0, 50),
    
                                primary: Color.fromRGBO(17, 24, 66,
                                    40), // Sets color for all the descendent ElevatedButtons
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6.0))),
                              ),
                            ),
                            child: ElevatedButton(
                              child: Text(' Submit '),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => DashBoard())));
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
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
}