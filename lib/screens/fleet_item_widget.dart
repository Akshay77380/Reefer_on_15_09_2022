import 'dart:convert';
import 'dart:developer';
import "package:flutter/src/widgets/framework.dart";
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:referon/models/fleetFormDetails.dart';
import 'package:referon/models/getVehicleModel.dart';
import 'package:referon/models/login_model.dart';
import 'package:referon/screens/faq_screen.dart';
import 'package:referon/utils/Common.dart';
import 'package:http/http.dart' as http;

class FleetItemWidget extends StatefulWidget {
  
  FleetItemWidget({Key key, this.fLeetDetail, this.index, this.onRemove})
      : super(key: key);

  final index;

  FleetFormDetails fleetformdetails;
  
  FLeetDetail fLeetDetail;

  final Function onRemove;

  final state = _FleetItemWidgetState();

  @override
  State<FleetItemWidget> createState() {
    return state;
  }

  // bool isValidated() => state.validate();
}

class _FleetItemWidgetState extends State<FleetItemWidget> {
  final formKey = GlobalKey<FormState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  FocusNode _focusNode = FocusNode();

  _FleetItemWidgetState() {
    _selectedval = _list[0];
    _selectedval2 = _list[0];
    _selectedval3 = _list[0];
    _selectedval4 = _list[0];
    _selectedval5 = _list[0];
    _selectedval6 = _list[0];
  }
  String _selectedval = "Select";

  String _selectedval2 = "Select";

  String _selectedval3 = "Select";

  String _selectedval4 = "Select";

  String _selectedval5 = "Select";

  String _selectedval6 = "Select";

  String vehicleMakeyeardate = "Select Date";

  String refervehicleyeardate = "Select Date";

  getVehicleModel_List _vehicleModel_List;

  final selectedVehicleManufacturer = TextEditingController();
  final selectedVehicleModel = TextEditingController();
  var selectedVehicleMake_year = TextEditingController();
  final selectedVehicleCapacity = TextEditingController();
  final selectedVehicleSize = TextEditingController();
  final length = TextEditingController();
  final width = TextEditingController();
  final height = TextEditingController();
  final selectedReeferUnitManufacturer = TextEditingController();
  final selectedReeferUnitModel = TextEditingController();
  var selectedReeferMakeYear = TextEditingController();
  final selectedContainerMake = TextEditingController();
  final _Edt_No_of_Vehicles = TextEditingController();
  final _Edt_VehicleNumber = TextEditingController();
  List<String> data = ["Others"];
  List<String> reeferunitsp = ["Others"];
  List<String> reeferUnitModelsp = ["Others"];
  DateTime _date = DateTime.now();

  Future<Null> selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
        context: context,
        firstDate: DateTime(DateTime.now().year - 100, 1),
        lastDate: DateTime(DateTime.now().year + 100, 1),
        initialDate: DateTime.now());

    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
      });
    }
  }

  String selectVehicle = "";
  String selectVehicleModel = "";
  var selectVehicleMake_year = "";
  var selectVehicleCapacity = "";
  String selectVehicleSize = "";
  String selectedVehicleReferUnit = "";
  String selectedVehicleReferModel = "";
  String selectedVehicleReferMakeyear = "";
  String selectedVehicleContainerMake = "";

  List<String> _list = [
    "Select"
    // "TATA Motors",
    // "Ashok Leyland",
    // "Mahindra & Mahindra",
    // "Eicher",
    // "Bharat Benz"
  ];
  List<String> _list2 = [
    "Select"
    // " Tata Ace gold",
    // "Tata Intra V30",
    // "Tata Intra V10",
    // "Tata Ace EV",
    // "Tata 407 Gold SFC",
    // "Tata Yodha Pickup",
    // "Tata 709g LPT",
    // "Tata 1512 LPT",
    // "Tata 912 LPK",
    // "Tata Signa 4018.S",
    // "Tata Signa 5525.S",
    // "Tata 1412 LPT",
    // "Tata 1212 LPT",
    // "Tata Signa 1923.K",
    // "Tata Ultra 1918.T",
    // "Tata 1109g LPT",
    // "Tata T.7 Ultra"
    //     "Tata 1212 LPK",
    // "Tata 712 LPT",
    // "Tata LPT 1918 Cowl",
    // "Tata 610 SK",
    // "Tata T.16 Ultra",
    // "Tata T.18 Ultra SL",
    // "Tata 710 SFC",
    // "Tata 1512g LPT",
    // "Tata Ultra Sleek T.6",
    // "Tata 1112 LPT",
    // "Tata 1012 LPT",
    // "Tata Ultra T.16 AMT",
    // "Tata 510 SFC TT",
    // "Tata 1009g LPT",
    // "Tata T.11 Ultra",
    // "Tata T.9 Ultra",
    // "Tata 610 SFC TT",
    // "Tata T.16 Ultra SL",
    // "Tata T.12 Ultra",
    // "Tata 912 LPT",
    // "Tata 709g LPT TT",
    // "Tata LPT 1918 5L",
    // "Tata Signa 4625.S",
    // "Tata 1412g LPT",
    // "Tata 1212 LP",
    // "Tata Ultra Sleek T.7",
    // "Tata T.14 Ultra",
    // "Tata Ultra Sleek T.9",
    // "Tata LPS 4018 Cowl",
    // "Tata Signa 5530.S",
    // "Tata Signa 2823.K",
    // "Tata Prima 2825.K",
    // "Tata Signa 2825.K",
    // "Tata LPT 3118 Cowl",
    // "Tata Signa 3118.T",
    // "Tata LPT 2818 Cowl",
    // "Tata Signa 2818.T",
    // "Tata Signa 2821.T 5L",
    // "Tata LPT 2821 Cowl",
    // "Tata LPT 3518 Cowl",
    // "Tata Signa 3518.T",
    // "Tata LPT 3521 Cowl",
    // "Tata Signa 3521.T 5L",
    // "Tata LPT 4225 Cowl",
    // "Tata Signa 4225.T",
    // "Tata Ultra 3021.S",
    // "Tata Signa 4021.S",
    // "Tata Signa 4221.T",
    // "Tata LPT 4825",
    // "Tata Signa 5530.S 4x2",
    // "Tata Signa 4825.T",
    // "Tata LPT 4925",
    // "Tata Signa 4925.T",
    // "Tata Prima 4625.S",
    // "Tata Signa 4623.S",
    // "Tata Signa 4625.S ESC",
    // "Tata Prima FL 5530.S",
    // "Tata Prima 5530.S",
    // "Ashok Leyland BADA DOST",
    // "Ashok Leyland Dost+",
    // "Ashok Leyland Dost Strong",
    // "Ashok Leyland Ecomet 1615 HE",
    // "Ashok Leyland Partner 6 Tyre",
    // "Ashok Leyland 1920 4x2",
    // "Ashok Leyland Boss 1920",
    // "Ashok Leyland Ecomet 1015 HE",
    // "Ashok Leyland Ecomet 1415 HE",
    // "Ashok Leyland Ecomet 1215 HE",
    // "Ashok Leyland BOSS 1115 HB",
    // "Ashok Leyland BOSS 1215 HB",
    // "Ashok Leyland 1916 HH 4X2",
    // "Ashok Leyland 5525 4x2",
    // "Ashok Leyland 1920 HH 4X2",
    // "Ashok Leyland Ecomet 1615 HE",
    // "Ashok Leyland 4620",
    // "Ashok Leyland BOSS 1415 HB",
    // "Ashok Leyland Ecomet 1115 HE",
    // "Ashok Leyland 5425 4x2",
    // "Ashok Leyland Ecomet 1415 H",
    // "Ashok Leyland 4020",
    // "Ashok Leyland 5225",
    // "Ashok Leyland BOSS 1315 HB",
    // "Ashok Leyland 5525",
    // "Ashok Leyland 2820 6x2 MAV",
    // "Ashok Leyland 3120 6x2 DTLA",
    // "Ashok Leyland 2820 6x4 MAV",
    // "Ashok Leyland 3520 8x2 Twin S",
    // "Ashok Leyland 3520 8x2 LA M",
    // "Ashok Leyland 4220 10x2 MAV",
    // "Ashok Leyland 4225 10x2 MAV",
    // "Ashok Leyland 4120 8x2 DTLA",
    // "Ashok Leyland 4125 8x2 DTLA MAV",
    // "Ashok Leyland 4825 10x2 DTL",
    // "Mahindra Jeeto",
    // "Mahindra Bolero Maxitruck Plus",
    // "Mahindra Bolero Pikup 4x4",
    // "Mahindra Bolero City Pikup",
    // "Mahindra Supro Profit Truck Mini",
    // "Mahindra Furio 16",
    // "Mahindra Furio 14",
    // "Mahindra Furio 11",
    // "Mahindra Furio 7 HD Cargo",
    // "Mahindra Furio 7 Tipper",
    // "Mahindra Loadking Optimo Tip",
    // "Mahindra Furio 17",
    // "Mahindra Furio 12",
    // "Mahindra Loadking Optimo",
    // "Mahindra Furio 14 HD",
    // "Mahindra Blazo X 28",
    // "Mahindra Blazo X 35",
    // "Mahindra Blazo X 35 LIFT AXLE",
    // "Mahindra Blazo X 42",
    // "Mahindra Blazo X 40",
    // "Mahindra Blazo X 42 PUSHER A",
    // "Mahindra Blazo X 49",
    // "Mahindra Blazo X 46",
    // "Mahindra Blazo X 55",
    // "Eicher Pro 3015",
    // "Eicher Pro 2095XP CNG",
    // "Eicher Pro 3019",
    // "Eicher Pro 2110",
    // "Eicher Pro 2095XP",
    // "Eicher Pro 2114XP",
    // "Eicher Pro 2055",
    // "Eicher Pro 2075",
    // "Eicher Pro 2095",
    // "Eicher Pro 3015XP",
    // "Eicher Pro 6019",
    // "Eicher Pro 3014",
    // "Eicher Pro 2114XP CNG",
    // "Eicher Pro 2080XP",
    // "Eicher Pro 3012",
    // "Eicher Pro 2110XP",
    // "Eicher Pro 2110XP Plus",
    // "Eicher Pro 2090",
    // "Eicher Pro 2075 CNG",
    // "Eicher Pro 2055K",
    // "Eicher Pro 2110XP Plus CNG",
    // "Eicher Pro 2055DSD",
    // "Eicher Pro 6055 4x2",
    // "Eicher Pro 6028",
    // "Eicher Pro 8055",
    // "Eicher Pro 6035",
    // "Eicher Pro 6042",
    // "Eicher Pro 6041",
    // "Eicher Pro 6040",
    // "Eicher Pro 6048",
    // "Eicher Pro 6046",
    // "Eicher Pro 6055",
    // "BharatBenz 1917R",
    // "BharatBenz 1617R",
    // "BharatBenz 1015R",
    // "BharatBenz 1415R",
    // "BharatBenz 1215R",
    // "BharatBenz 1415RE",
    // "BharatBenz 1215RE",
    // "BharatBenz 1015R Plus",
    // "BharatBenz 2823R",
    // "BharatBenz 3523R",
    // "BharatBenz 4228R",
    // "BharatBenz 4023TT",
    // "BharatBenz 4028T",
    // "BharatBenz 4828R",
    // "BharatBenz 5428T",
    // "BharatBenz 5228T",
    // "BharatBenz 5028T",
    // "BharatBenz 5528TT"
  ];
  final _list3 = [
    "Select",
    "1995",
    "1996",
    "1997",
    "1998",
    "1999",
    "2000",
    "2001",
    "2002"
  ];
  final _list4 = ["Select"];

  final _list5 = [
    "Select"
    // , "Carrier", "Thermoking", "Hwasung"
  ];

  final _list6 = [
    "Select",
    "Citifresh 280",
    "Citifresh 500",
    "Citimax 700",
    "Citimax 500",
    "Citimax 280",
    "Citimax 350",
    "Citimax 400",
    "Pulsor 300",
    "Pulsor 500",
    "Xarios 500",
    "Viento 350 R134a",
    "Viento 200 R404a",
    "Viento 200 R134a",
    "Xarios 350",
    "Xarios 600",
    "Supra 1250",
    "Supra 1250 MT",
    "Supra 950 U",
    "Supra 1150",
    "Supra 1050",
    "Supra 850",
    "Supra 850 U",
    "Supra 550",
    "Supra 450",
    "Oasis 250",
    "Oasis 150",
    "Supra 844 U Airport",
    "Vector 1350",
    "Vector 1550",
    "Vector 1950",
    "Vector 1950 MT",
    "Vector E",
    "T600",
    "T600M",
    "T800",
    "TH-350SPII",
    "1000SD",
    "T590",
    "T690",
    "T890MAX",
    "T1090",
    "T690MAX",
    "T890",
    "T1090MAX",
    "T1090SPECTRUM",
    "HT100",
    "HT250",
    "HT350",
    "HT500",
    "HT50MIni",
    "HT950MB",
    "HT50RT",
    "HT70",
  ];
  final _list7 = [
    "Select",
    "1995",
    "1996",
    "1997",
    "1998",
    "1999",
    "2000",
    "2001",
    "2002"
  ];
  final _list8 = [
    "Others"
    // ,
    // "Suraksha",
    // "HLM",
    // "Reefer India",
    // "IcemakeIndia",
    // "Subzero",
    // "Kalyani cleantech",
    // "TransACNR"
  ];
  String country_id;
  List<String> country = [
    "America",
    "Brazil",
    "Canada",
    "India",
    "Mongalia",
    "USA",
    "China",
    "Russia",
    "Germany"
  ];

  Future FetchVehicleManfList() async {
    var response = await http.get(Uri.parse('${baseUrl}vehiclemanufacturer'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['vehiclename']}');
      for (int i = 0; i < dataList.length; i++) {
        data.add(dataList[i]['vehiclename']);
      }
      print('Data Fleet Details: $data');
    }
  }

  Future FetchVehicleModel(selectVehicle) async {
    var response = await http.get(Uri.parse(
        "${baseUrl}Vehicle_Models?Vehicle_Manufacturer=" + selectVehicle));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['vehiclemodel']}');
      for (int i = 0; i < dataList.length; i++) {
        _list2.add(dataList[i]['vehiclemodel']);
      }
      print('Data Vehicle Model : $_list2');
    }
  }

  Future FetchReeferUnitfList() async {
    var response = await http.get(Uri.parse('${baseUrl}reeferUnitManufacture'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['Referunit_Manufacturer']}');
      for (int i = 0; i < dataList.length; i++) {
        reeferunitsp.add(dataList[i]['Referunit_Manufacturer']);
      }
      print('Data Fleet Details: $data');
    }
  }

  Future FetchReeferUnitModel(selectedVehicleReferUnit) async {
    var response = await http.get(Uri.parse(
        "${baseUrl}reeferUnitModel?unitManufacturer=" +
            selectedVehicleReferUnit));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['Referunit_model']}');

      for (int i = 0; i < dataList.length; i++) {
        reeferUnitModelsp.add(dataList[i]['Referunit_model']);
      }

      print('Data Vehicle Model : $reeferUnitModelsp');
    }
  }

  Future FetchContainerMake() async {
    var response = await http.get(Uri.parse('${baseUrl}ContainerMake'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final dataList = jsonResponse['Data'] as List;
      print('Data List :${dataList.first['Container_Make']}');
      for (int i = 0; i < dataList.length; i++) {
        _list8.add(dataList[i]['Container_Make']);
      }
      print('Data Container Make Details: $data');
    }
  }

  @override
  void initState() {
    super.initState();
    // print("InSide Fleet Details: ${widget.loginScreenModel.registeredmobilenum}");
    // Vehicle Manufacturer

    FetchVehicleManfList();
    FetchReeferUnitfList();
    FetchContainerMake();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.contain,
                  opacity: 500),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularPercentIndicator(
                              animation: true,
                              animationDuration: 5000,
                              radius: 25,
                              lineWidth: 8,
                              percent: 0.5,
                              progressColor: Color.fromRGBO(180, 211, 67, 30),
                              backgroundColor: Color.fromRGBO(17, 24, 66, 50),
                              circularStrokeCap: CircularStrokeCap.round,
                              center: const Text('50%',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                            ),
                            Spacer(),
                            Text(
                              "Fleet  Details",
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
                          height: 30.0,
                          child: Center(), //Center
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Column(
                            children: [
                              Text(
                                " Enter Details - ${widget.index + 1}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 11, 11, 22),
                                  fontStyle: FontStyle.normal,
                                ),
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
                                        labelText: ' Vehicle Manufacturer : ',
                                        labelStyle: TextStyle(
                                          color:
                                              Color.fromRGBO(17, 24, 66, 100),
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                width: 0, color: Colors.black),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ))),
                                    child: DropDownField(
                                      controller: selectedVehicleManufacturer,
                                      hintText: "Select",
                                      enabled: true,
                                      items: data,
                                      onValueChanged: (value) async {
                                        widget.fLeetDetail.vehicleManufacturer =
                                            value;

                                        print(
                                            "Data of Selected Vehicle Name: " +
                                                widget.fLeetDetail
                                                    .vehicleManufacturer);

                                        _list2.clear();

                                        if (widget.fLeetDetail
                                                .vehicleManufacturer ==
                                            "Others") {
                                          selectedVehicleManufacturer.text =
                                              " ";
                                          _list2.add("Others");
                                        }

                                        FetchVehicleModel(widget
                                            .fLeetDetail.vehicleManufacturer);

                                        setState(() async {
                                          print(widget
                                              .fLeetDetail.vehicleManufacturer);
                                        });
                                      },
                                    ),
                                  )),

                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  child: InputDecorator(
                                    decoration: InputDecoration(
                                        filled: true,
                                        labelText: 'Vehicle Model : ',
                                        labelStyle: TextStyle(
                                          color:
                                              Color.fromRGBO(17, 24, 66, 100),
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                width: 0, color: Colors.black),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ))),
                                    child: DropDownField(
                                      controller: selectedVehicleModel,
                                      hintText: "Select",
                                      enabled: true,
                                      items: _list2,
                                      onValueChanged: (value) {
                                        widget.fLeetDetail.vehicleModel = value;

                                        if (widget.fLeetDetail.vehicleModel ==
                                            "Others") {
                                          selectedVehicleModel.text = " ";
                                        }
                                        setState(() {
                                          widget.fLeetDetail.vehicleModel =
                                              value;
                                          print("Data From Model :" +
                                              widget.fLeetDetail.vehicleModel);
                                        });
                                      },
                                    ),
                                  )),

                              // SizedBox(
                              //             width: 400,
                              //             height: 55,
                              //              child: TextField(

                              //               keyboardType: TextInputType.name,
                              //               textAlign: TextAlign.center,

                              //                 decoration: InputDecoration(
                              //                   prefix: Icon(Icons.precision_manufacturing,size: 20,),
                              //                   iconColor:  Color.fromRGBO(17,24,66,100),
                              //                 labelText: 'Vehicle Manufacturer :',
                              //                 labelStyle: TextStyle(
                              //                   color: Colors.black
                              //                 ),

                              //                 enabledBorder: OutlineInputBorder(
                              //                 borderSide: const BorderSide(width: 0, color: Colors.black),
                              //                 borderRadius: BorderRadius.circular(15),

                              //                                ),
                              //               focusedBorder: OutlineInputBorder(
                              //               borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                              //               borderRadius: BorderRadius.circular(15),
                              //                                )),
                              //                                style: TextStyle(fontSize: 15),
                              //                            ),
                              //            ),
                              // SizedBox(height: 10,),
                              // SizedBox(
                              //             width: 400,
                              //             height: 55,
                              //              child: TextField(

                              //               keyboardType: TextInputType.name,
                              //               textAlign: TextAlign.center,

                              //                 decoration: InputDecoration(
                              //                   prefix: Icon(Icons.precision_manufacturing,size: 20,),
                              //                   iconColor:  Color.fromRGBO(17,24,66,100),
                              //                 labelText: 'Ac Mainetance :',
                              //                 labelStyle: TextStyle(
                              //                   color: Colors.black
                              //                 ),

                              //                 enabledBorder: OutlineInputBorder(
                              //                 borderSide: const BorderSide(width: 0, color: Colors.black),
                              //                 borderRadius: BorderRadius.circular(15),

                              //                                ),
                              //               focusedBorder: OutlineInputBorder(
                              //               borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                              //               borderRadius: BorderRadius.circular(15),
                              //                                )),
                              //                                style: TextStyle(fontSize: 15),
                              //                            ),
                              //            ),
                              //             SizedBox(height: 10,),
                              //          Padding(
                              //           padding: EdgeInsets.only(left:5, right:5),

                              //           child: DropdownButtonFormField(

                              //             decoration:   InputDecoration(

                              //             filled: true,
                              //              labelText: 'Reefer OEM : ',
                              //              labelStyle: TextStyle(
                              //               color: Color.fromRGBO(17,24,66,100),

                              //              ),
                              //             border: OutlineInputBorder(borderSide: const BorderSide(width: 0, color: Colors.black),borderRadius: BorderRadius.all(
                              //             Radius.circular(10.0),
                              //   ))
                              // ),
                              //             isExpanded: true,

                              //             value: _selectedval4,
                              //             items: _list4.map((e) =>
                              //             DropdownMenuItem(child: Text(e),value: e,)
                              //            ).toList()
                              //           , onChanged: ((value) {
                              //             setState(() {
                              //               _selectedval4 = value as String;
                              //             });

                              //           })),
                              //         ),
                              //         SizedBox(height: 10,),
                              //          Padding(
                              //           padding: EdgeInsets.only(left:5, right:5),

                              //           child: DropdownButtonFormField(

                              //             decoration:   InputDecoration(

                              //             filled: true,
                              //              labelText: 'Reefer Make : ',
                              //              labelStyle: TextStyle(
                              //               color: Color.fromRGBO(17,24,66,100),

                              //              ),
                              //             border: OutlineInputBorder(borderSide: const BorderSide(width: 0, color: Colors.black),borderRadius: BorderRadius.all(
                              //             Radius.circular(10.0),
                              //   ))
                              // ),
                              //             isExpanded: true,

                              //             value: _selectedval,
                              //             items: _list.map((e) =>
                              //             DropdownMenuItem(child: Text(e),value: e,)
                              //            ).toList()
                              //           , onChanged: ((value) {
                              //             setState(() {
                              //               _selectedval = value as String;
                              //             });

                              //           })),
                              //         ),

                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 400,
                                height: 75,
                                child: TextFormField(
                                  controller: selectedVehicleMake_year =
                                      TextEditingController(
                                          text: widget.fLeetDetail.vehicleMAkeYear),
                                  onChanged: (value) => widget
                                      .fLeetDetail.vehicleMAkeYear = value,
                                  onSaved: (value) => widget
                                      .fLeetDetail.vehicleMAkeYear = value,
                                  readOnly: true,
                                  onTap: () {
                                    return showDialog(
                                      context: context,
                                      builder: (context) {
                                        final Size size =
                                            MediaQuery.of(context).size;
                                        return AlertDialog(
                                          title: Column(
                                            children: const [
                                              Text('Select a Year'),
                                              Divider(
                                                thickness: 1,
                                              )
                                            ],
                                          ),
                                          contentPadding:
                                              const EdgeInsets.all(10),
                                          content: SizedBox(
                                            height: size.height / 3,
                                            width: size.width,
                                            child: GridView.count(
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              crossAxisCount: 3,
                                              children: [
                                                ...List.generate(
                                                  123,
                                                  (index) => InkWell(
                                                    onTap: () {
                                                      log("Selected Year ==> ${(2022 - index).toString()}");

                                                      setState(() {
                                                        widget.fLeetDetail.vehicleMAkeYear =
                                                            " ${(2022 - index).toString()}";
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 8.0,
                                                          vertical: 0),
                                                      child: Chip(
                                                        
                                                        label: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          child: Text(
                                                            (2022 - index)
                                                                .toString(),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      prefix: Icon(
                                        Icons.calendar_month,
                                        size: 20,
                                      ),
                                      hintText: (_date.toString()),
                                      iconColor:
                                          Color.fromRGBO(17, 24, 66, 100),
                                      labelText: 'Vehicle Make Year :',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0, color: Colors.black),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0,
                                            color:
                                                Color.fromARGB(255, 5, 10, 22)),
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              // Padding(
                              //     padding: EdgeInsets.only(left: 0, right: 0),
                              //     child: InputDecorator(
                              //       decoration: InputDecoration(
                              //           filled: true,
                              //           labelText: 'Vehicle Capacity : ',
                              //           labelStyle: TextStyle(
                              //             color: Color.fromRGBO(17, 24, 66, 100),
                              //           ),
                              //           border: OutlineInputBorder(
                              //               borderSide: const BorderSide(
                              //                   width: 0, color: Colors.black),
                              //               borderRadius: BorderRadius.all(
                              //                 Radius.circular(10.0),
                              //               ))),
                              //       child: DropDownField(
                              //         controller: selectedVehicleCapacity,
                              //         hintText: "Select",
                              //         enabled: true,
                              //         items: _list4,
                              //         onValueChanged: (value) {
                              //           setState(() {
                              //             selectVehicleCapacity = value;
                              //             print(selectVehicleCapacity);
                              //           });
                              //         },
                              //       ),
                              //     )),
                              SizedBox(
                                width: 400,
                                height: 75,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: selectedVehicleCapacity,
                                  onChanged: (value) =>
                                      widget.fLeetDetail.vehicleCapMt = value,
                                  onSaved: (value) =>
                                      widget.fLeetDetail.vehicleCapMt = value,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      prefix: Icon(
                                        Icons.line_weight,
                                        size: 20,
                                      ),
                                      iconColor:
                                          Color.fromRGBO(17, 24, 66, 100),
                                      labelText: 'Vehicles Capacity in MT :',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0, color: Colors.black),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0,
                                            color:
                                                Color.fromARGB(255, 5, 10, 22)),
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              // Padding(
                              //     padding: EdgeInsets.only(left: 0, right: 0),
                              //     child: InputDecorator(
                              //       decoration: InputDecoration(
                              //           filled: true,
                              //           labelText: 'Vehicle Size : ',
                              //           labelStyle: TextStyle(
                              //             color: Color.fromRGBO(17, 24, 66, 100),
                              //           ),
                              //           border: OutlineInputBorder(
                              //               borderSide: const BorderSide(
                              //                   width: 0, color: Colors.black),
                              //               borderRadius: BorderRadius.all(
                              //                 Radius.circular(10.0),
                              //               ))),
                              //       child: DropDownField(
                              //         controller: selectedVehicleSize,
                              //         hintText: "Select",
                              //         enabled: true,
                              //         items: _list4,
                              //         onValueChanged: (value) {
                              //           setState(() {
                              //             selectVehicleSize = value;
                              //             print(selectVehicleSize);
                              //           });
                              //         },
                              //       ),
                              //     )),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Container Inner Dimensions in Feet :",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 100,
                                          height: 75,
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: length,
                                            onChanged: (value) => widget
                                                .fLeetDetail.length = value,
                                            onSaved: (value) => widget
                                                .fLeetDetail.length = value,
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                                labelText: 'Length :',
                                                labelStyle: TextStyle(
                                                    color: Colors.black),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      width: 0,
                                                      color: Colors.black),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      width: 0,
                                                      color: Color.fromARGB(
                                                          255, 5, 10, 22)),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                )),
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: SizedBox(
                                            width: 100,
                                            height: 75,
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: width,
                                              onChanged: (value) => widget
                                                  .fLeetDetail.width = value,
                                              onSaved: (value) => widget
                                                  .fLeetDetail.width = value,
                                              textAlign: TextAlign.center,
                                              decoration: InputDecoration(
                                                  labelText: 'Width :',
                                                  labelStyle: TextStyle(
                                                      color: Colors.black),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 0,
                                                            color:
                                                                Colors.black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 0,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    5,
                                                                    10,
                                                                    22)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  )),
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 100,
                                          height: 75,
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: height,
                                            onChanged: (value) => widget
                                                .fLeetDetail.height = value,
                                            onSaved: (value) => widget
                                                .fLeetDetail.height = value,
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                                labelText: 'Height :',
                                                labelStyle: TextStyle(
                                                    color: Colors.black),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      width: 0,
                                                      color: Colors.black),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      width: 0,
                                                      color: Color.fromARGB(
                                                          255, 5, 10, 22)),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                )),
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  child: InputDecorator(
                                    decoration: InputDecoration(
                                        filled: true,
                                        labelText: 'Reefer Unit Manufacturer :',
                                        labelStyle: TextStyle(
                                          color:
                                              Color.fromRGBO(17, 24, 66, 100),
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                width: 0, color: Colors.black),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ))),
                                    child: DropDownField(
                                      controller:
                                          selectedReeferUnitManufacturer,
                                      hintText: "Select",
                                      enabled: true,
                                      items: reeferunitsp,
                                      onValueChanged: (value) {
                                        widget.fLeetDetail
                                            .reeferUnitManufacturer = value;

                                        reeferUnitModelsp.clear();

                                        if (widget.fLeetDetail
                                                .reeferUnitManufacturer ==
                                            "Others") {
                                          selectedReeferUnitManufacturer.text =
                                              " ";
                                          reeferUnitModelsp.add("Others");
                                        }

                                        FetchReeferUnitModel(widget.fLeetDetail
                                            .reeferUnitManufacturer);

                                        setState(() {
                                          print(widget.fLeetDetail
                                              .reeferUnitManufacturer = value);
                                        });
                                      },
                                    ),
                                  )),

                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  child: InputDecorator(
                                    decoration: InputDecoration(
                                        filled: true,
                                        labelText: 'Reefer Unit Model :',
                                        labelStyle: TextStyle(
                                          color:
                                              Color.fromRGBO(17, 24, 66, 100),
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                width: 0, color: Colors.black),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ))),
                                    child: DropDownField(
                                      controller: selectedReeferUnitModel,
                                      hintText: "Select",
                                      enabled: true,
                                      items: reeferUnitModelsp,
                                      onValueChanged: (value) {
                                        widget.fLeetDetail.reeferUnitModel =
                                            value;

                                        if (widget
                                                .fLeetDetail.reeferUnitModel ==
                                            "Others") {
                                          selectedReeferUnitModel.text = " ";
                                        }
                                        setState(() {
                                          widget.fLeetDetail.reeferUnitModel =
                                              value;
                                        });
                                      },
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 400,
                                height: 75,  
                                child: TextFormField(
                                  controller: selectedReeferMakeYear =
                                      TextEditingController(
                                          text: widget.fLeetDetail.reeferMakeYear),
                                  onChanged: (value) =>
                                      widget.fLeetDetail.reeferMakeYear = value,
                                  onSaved: (value) =>
                                      widget.fLeetDetail.reeferMakeYear = value,  
                                  readOnly: true,
                                  onTap: () {
                                    return showDialog(
                                      context: context,
                                      builder: (context) {
                                        final Size size =
                                            MediaQuery.of(context).size;
                                        return AlertDialog(
                                          title: Column(
                                            children: const [
                                              Text('Select a Year'),
                                              Divider(
                                                thickness: 1,
                                              )
                                            ],
                                          ),
                                          contentPadding:
                                              const EdgeInsets.all(10),
                                          content: SizedBox(
                                            height: size.height / 3,
                                            width: size.width,
                                            child: GridView.count(
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              crossAxisCount: 3,
                                              children: [
                                                ...List.generate(
                                                  123,
                                                  (index) => InkWell(
                                                    onTap: () {
                                                      log("Selected Year ==> ${(2022 - index).toString()}");

                                                      setState(() {
                                                        widget.fLeetDetail.reeferMakeYear =
                                                            " ${(2022 - index).toString()}";
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 8.0,
                                                          vertical: 0),
                                                      child: Chip(
                                                        label: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          child: Text(
                                                            (2022 - index)
                                                                .toString(),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      prefix: Icon(
                                        Icons.calendar_month,
                                        size: 20,
                                      ),
                                      hintText: (_date.toString()),
                                      iconColor:
                                          Color.fromRGBO(17, 24, 66, 100),
                                      labelText: 'Reefer Make Year :',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0, color: Colors.black),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0,
                                            color:
                                                Color.fromARGB(255, 5, 10, 22)),
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  child: InputDecorator(
                                    decoration: InputDecoration(
                                        filled: true,
                                        labelText: 'Container Make :',
                                        labelStyle: TextStyle(
                                          color:
                                              Color.fromRGBO(17, 24, 66, 100),
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                width: 0, color: Colors.black),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ))),
                                    child: DropDownField(
                                      controller: selectedContainerMake,
                                      hintText: "Select",
                                      enabled: true,
                                      items: _list8,
                                      onValueChanged: (value) {
                                        widget.fLeetDetail.containerMake =
                                            value;
                                        if (widget.fLeetDetail.containerMake ==
                                            "Others") {
                                          selectedContainerMake.text = " ";
                                        }
                                        setState(() {
                                          widget.fLeetDetail.containerMake =
                                              value;
                                          print(
                                              widget.fLeetDetail.containerMake);
                                        });
                                      },
                                    ),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 400,
                                height: 65,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _Edt_No_of_Vehicles,
                                  onChanged: (value) =>
                                      widget.fLeetDetail.vehicleCount = value,
                                  onSaved: (value) =>
                                      widget.fLeetDetail.vehicleCount = value,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      prefix: Icon(
                                        Icons.numbers,
                                        size: 20,
                                      ),
                                      iconColor:
                                          Color.fromRGBO(17, 24, 66, 100),
                                      labelText: 'No.of Vehicles :',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0, color: Colors.black),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0,
                                            color:
                                                Color.fromARGB(255, 5, 10, 22)),
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                width: 400,
                                height: 65,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  controller: _Edt_VehicleNumber,
                                  onChanged: (value) =>
                                      widget.fLeetDetail.vehicleNo = value,
                                  onSaved: (value) =>
                                      widget.fLeetDetail.vehicleNo = value,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      prefix: Icon(
                                        Icons.numbers,
                                        size: 20,
                                      ),
                                      iconColor:
                                          Color.fromRGBO(17, 24, 66, 100),
                                      labelText: 'Vehicle Number :',
                                      hintText:
                                          ' Example: MH 01 CS 7859 , MH 01 TL 1234 ',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0, color: Colors.black),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 0,
                                            color:
                                                Color.fromARGB(255, 5, 10, 22)),
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              // SizedBox(
                              //   height: 20.0,
                              // ),
                              // ButtonTheme(
                              //   child: Padding(
                              //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              //     child: ElevatedButtonTheme(
                              //       data:  ElevatedButtonThemeData(
                              //         style: ElevatedButton.styleFrom(
                              //           minimumSize: Size(120.0, 50),
                              //           primary: Color.fromRGBO(17, 24, 66,
                              //               40), // Sets color for all the descendent ElevatedButtons
                              //           shape: RoundedRectangleBorder(
                              //               borderRadius: BorderRadius.all(
                              //                   Radius.circular(6.0))),
                              //         ),
                              //       ),
                              //       child: ElevatedButton(
                              //         child: Text(' +  AddMore '),
                              //         onPressed: () {
                              //           final text = 'Fleet Details Data Saved....!';
                              //             final snackBar = SnackBar(content: Text(text));

                              //             ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              //         },
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
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
                        //   height: 20.0,
                        // ),
                        // new Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: <Widget>[
                        //     Expanded(
                        //       flex: 1,
                        //       child: Padding(
                        //         padding: EdgeInsets.only(left: 5, right: 5),
                        //         child: SizedBox(
                        //           child: Padding(
                        //             padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        //             child: ElevatedButtonTheme(
                        //               data: ElevatedButtonThemeData(
                        //                 style: ElevatedButton.styleFrom(
                        //                   minimumSize: Size(120.0, 60),
                        //                   primary: Color.fromRGBO(17, 24, 66,
                        //                       40), // Sets color for all the descendent ElevatedButtons
                        //                   shape: RoundedRectangleBorder(
                        //                       borderRadius: BorderRadius.all(
                        //                           Radius.circular(6.0))),
                        //                 ),
                        //               ),
                        //               child: ElevatedButton(
                        //                 child: Text(' Upload With Excel '),
                        //                 onPressed: () {
                        //                   Navigator.push(
                        //                       context,
                        //                       MaterialPageRoute(
                        //                           builder: ((context) =>
                        //                               FleetDetails())));
                        //                 },
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Expanded(
                        //       flex: 1,
                        //       child: Padding(
                        //         padding: EdgeInsets.only(left: 5, right: 5),
                        //         child: SizedBox(
                        //           child: ButtonTheme(
                        //             child: Padding(
                        //               padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        //               child: ElevatedButtonTheme(
                        //                 data: ElevatedButtonThemeData(
                        //                   style: ElevatedButton.styleFrom(
                        //                     minimumSize: Size(120.0, 60),
                        //                     primary: Color.fromRGBO(17, 24, 66,
                        //                         40), // Sets color for all the descendent ElevatedButtons
                        //                     shape: RoundedRectangleBorder(
                        //                         borderRadius: BorderRadius.all(
                        //                             Radius.circular(6.0))),
                        //                   ),
                        //                 ),
                        //                 child: ElevatedButton(
                        //                   child: Text(' Next '),
                        //                   onPressed: () {
                        //                     // Navigator.push(
                        //                     //     context,
                        //                     //     MaterialPageRoute(
                        //                     //         builder: ((context) => _submit())));

                        //                     // for(int i = 0;i<fleetform)
                        //                     _submit();
                        //                   },
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );      
  }
  // _submit()
  // {

  //     final isValid = formKey.currentState.validate();
  //      LoginScreenModel logindata = widget.loginScreenModel;
  //      logindata = LoginScreenModel(

  //   // contact: widget.loginScreenModel.contact,

  //   companyName: widget.loginScreenModel.companyName,
  //   companyType: widget.loginScreenModel.companyType,
  //   businessType: widget.loginScreenModel.businessType,
  //   address1: widget.loginScreenModel.address1,
  //   address2: widget.loginScreenModel.address2,
  //   pincode: widget.loginScreenModel.pincode,
  //   city: widget.loginScreenModel.city,
  //   stateName: widget.loginScreenModel.stateName,
  //   countryName: widget.loginScreenModel.countryName,

  //   firstName: widget.loginScreenModel.firstName,
  //   lastName:  widget.loginScreenModel.lastName,
  //   contact: widget.loginScreenModel.contact,
  //   altcontact :  widget.loginScreenModel.altcontact,
  //   emailid:  widget.loginScreenModel.emailid,
  //   designation:  widget.loginScreenModel.designation,
  //   panNo:  widget.loginScreenModel.panNo,
  //   panImg:  widget.loginScreenModel.panImg,
  //   cancelChequeNo: widget.loginScreenModel.cancelChequeNo,
  //   cancelChequeImg: widget.loginScreenModel.cancelChequeImg,
  //   gstNo : widget.loginScreenModel.gstNo,
  //   gstImg : widget.loginScreenModel.gstImg,
  //   fssaiLicNo:  widget.loginScreenModel.fssaiLicNo,
  //   fssaiImg: widget.loginScreenModel.fssaiImg,
  //   businessCard: widget.loginScreenModel.businessCard,
  //   businessImg: widget.loginScreenModel.businessImg,
  //   otherDoc:  widget.loginScreenModel.otherDoc,
  //   otherDocImg: widget.loginScreenModel.otherDocImg,

  //   // vehiclemanufacturer:selectedVehicleManufacturer.text,
  //   // vehiclemodel: selectedVehicleModel.text,
  //   // vehiclemakeyear: vehicleMakeyeardate,
  //   // vehiclecapactity:selectedVehicleCapacity.text,
  //   // length:length.text,
  //   // width:width.text,
  //   // height:height.text,
  //   // reeferunitmanufacture: selectedReeferUnitManufacturer.text,
  //   // reeferunitmodel: selectedReeferUnitModel.text,
  //   // reefermakeyear: selectedReeferMakeYear.text,
  //   // containermake: selectedContainerMake.text,
  //   // no_of_vehicles:_Edt_No_of_Vehicles.text,
  //   // vehiclenum:_Edt_VehicleNumber.text

  //   );

  //   if(isValid)
  //   {

  //     Navigator.push(
  //         context, MaterialPageRoute(builder: ((context) => FaqDetails(loginScreenModel: logindata))));
  //   }

  // }

  // bool validate() {
  //   //Validate Form Fields
  //   bool validate = formKey.currentState.validate();
  //   if (validate) formKey.currentState.save();
  //   return validate;
  // }
}

Future flutterYearPicker(BuildContext context) async {}
