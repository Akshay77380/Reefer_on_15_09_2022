import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VehiclePostScreen extends StatefulWidget {
  const VehiclePostScreen({Key key}) : super(key: key);

  @override
  State<VehiclePostScreen> createState() => _VehiclePostScreenState();
}

class _VehiclePostScreenState extends State<VehiclePostScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: VehiclePostDtlForm(),
    );
  }
}

class VehiclePostDtlForm extends StatefulWidget {
  const VehiclePostDtlForm({Key key}) : super(key: key);

  @override
  State<VehiclePostDtlForm> createState() => _VehiclePostDtlFormState();
}

class _VehiclePostDtlFormState extends State<VehiclePostDtlForm> {
  _VehiclePostDtlFormState() {
    _selectedval = _list[0];
    _selectedval2 = _list[0];
    _selectedval3 = _list[0];
     _selectedval4 = _list[0];
  }
  int _counter = 0;
  String _selectedval = "Select";

  final _list = [
    "Select",
    "Pune,Nashik",
    "Hyderabad",
    "Goa",
    "Punjab",
    "Rajasthan",
    "Kerala"
  ];
  String _selectedval2 = "Select";
  final _list2 = [
    "Select",
    "Mumbai MMR",
    "Pune PPC",
    "Kerala KKK",
    "Nashik NSK"
  ];
  String _selectedval3 = "Select";
  final _list3 = [
    "Select",
    "North1(Delhi NCR)",
    "South1(BLR,Mysore)"
  ];
  String _selectedval4 = "Select";
  final _list4 = [
    "Select",
    "North1(Delhi NCR)",
    "South1(BLR,Mysore)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //         // title: Image.asset('assets/images/loginheader.png',fit: BoxFit.fill),
      //               backgroundColor: Colors.white,
      //         //       elevation: 0,

      //   ),

      body: Container(
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
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade200, blurRadius: 5)
                        ]),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vehicle Available for Loads :",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .merge(TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal)),
                              ),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("31-08-2022 : MH46AB4574",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                          color:
                                              Color.fromRGBO(17,24,66,80),
                                          fontStyle: FontStyle.normal,
                                          decoration:
                                              TextDecoration.underline))),
                              SizedBox(
                                height: 8,
                              ),
                              Text("31-08-2022 : MH46AB5745",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                          color:
                                              Color.fromRGBO(17,24,66,80),
                                          fontStyle: FontStyle.normal,
                                          decoration:
                                              TextDecoration.underline))),
                              SizedBox(
                                height: 8,
                              ),
                              Text("31-08-2022 : MH46AB4555",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                          color:
                                              Color.fromRGBO(17,24,66,80),
                                          fontStyle: FontStyle.normal,
                                          decoration:
                                              TextDecoration.underline))),
                              SizedBox(
                                height: 8,
                              ),
                              Text("31-08-2022 : MH46AB4576",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                          color:
                                              Color.fromRGBO(17,24,66,80),
                                          fontStyle: FontStyle.normal,
                                          decoration:
                                              TextDecoration.underline))),
                              SizedBox(
                                height: 8,
                              ),
                              Text("01-08-2022 : MH46AB8754",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                          color:
                                              Color.fromRGBO(17,24,66,80),
                                          fontStyle: FontStyle.normal,
                                          decoration:
                                              TextDecoration.underline))),
                              SizedBox(
                                height: 8,
                              ),
                              Text("01-08-2022 : MH46AB5855",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                          color:
                                              Color.fromRGBO(17,24,66,80),
                                          fontStyle: FontStyle.normal,
                                          decoration:
                                              TextDecoration.underline))),
                              SizedBox(
                                height: 8,
                              ),
                              Text("01-08-2022 : MH46AB1234",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                          color:
                                              Color.fromRGBO(17,24,66,80),
                                          fontStyle: FontStyle.normal,
                                          decoration:
                                              TextDecoration.underline))),
                              SizedBox(
                                height: 8,
                              ),
                              Text("01-08-2022 : MH46AB4678",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                          color:
                                              Color.fromRGBO(17,24,66,80),
                                          fontStyle: FontStyle.normal,
                                          decoration:
                                              TextDecoration.underline))),
                            ],
                          ))
                        ],
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade200, blurRadius: 5),
                        ]),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date : 24-08-2022",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .merge(TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Vehicle No : MH46AB1234",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .merge(TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      labelText: 'Origin City  : ',
                                      labelStyle: TextStyle(
                                        color: Color.fromRGBO(17, 24, 66, 100),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 0, color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ))),
                                  isExpanded: true,
                                  value: _selectedval2,
                                  items: _list2
                                      .map((e) => DropdownMenuItem(
                                            child: Text(e),
                                            value: e,
                                          ))
                                      .toList(),
                                  onChanged: ((value) {
                                    setState(() {
                                      _selectedval2 = value as String;
                                    });
                                  })),
                              SizedBox(
                                height: 20,
                              ),
                              DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      labelText: 'Destination Cluster 1 :',
                                      labelStyle: TextStyle(
                                        color: Color.fromRGBO(17, 24, 66, 100),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 0, color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ))),
                                  isExpanded: true,
                                  value: _selectedval3,
                                  items: _list3
                                      .map((e) => DropdownMenuItem(
                                            child: Text(e),
                                            value: e,
                                          ))
                                      .toList(),
                                  onChanged: ((value) {
                                    setState(() {
                                      _selectedval3 = value as String;
                                    });
                                  })),
                              SizedBox(
                                height: 20,
                              ),
                              DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      labelText: 'Destination Cluster 2 :',
                                      labelStyle: TextStyle(
                                        color: Color.fromRGBO(17, 24, 66, 100),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 0, color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ))),
                                  isExpanded: true,
                                  value: _selectedval4,
                                  items: _list4
                                      .map((e) => DropdownMenuItem(
                                            child: Text(e),
                                            value: e,
                                          ))
                                      .toList(),
                                  onChanged: ((value) {
                                    setState(() {
                                      _selectedval4 = value as String;
                                    });
                                  })),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Product Temp : Frozen",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal)),
                                ),
                              ),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Vehicle Type : 32ft_15MT",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .merge(TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal)),
                              ),
                              SizedBox(height: 10),
                              Padding( 
                                padding: EdgeInsets.only(top: 5, left: 10),
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        labelText: ' Others Cites in Cluster : ',
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
                                    isExpanded: true,
                                    value: _selectedval,
                                    items: _list
                                        .map((e) => DropdownMenuItem(
                                              child: Text(e),
                                              value: e,
                                            ))
                                        .toList(),
                                    onChanged: ((value) {
                                      setState(() {
                                        _selectedval = value as String;
                                      });
                                    })),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  " Amount : 95,000 rs/- ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                        color: Color.fromRGBO(180, 211, 67, 10),
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Amount : 85,000 rs/-",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .merge(TextStyle(
                                        color: Color.fromRGBO(180, 211, 67, 10),
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18,
                                      )),
                                ),
                              ),
                               SizedBox(
                                height: 20,
                              ),
                              Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: ElevatedButtonTheme(
                                                data: ElevatedButtonThemeData(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Color.fromRGBO(
                                                        17,
                                                        24,
                                                        66,
                                                        40), // Sets color for all the descendent ElevatedButtons
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    20.0))),
                                                  ),
                                                ),
                                                child: ElevatedButton(
                                                  child: Text(
                                                      ' Post Vehicle Details'),
                                                  onPressed: () {
                                                    // openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                            ],
                          ))
                        ],
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
