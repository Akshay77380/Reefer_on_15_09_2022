import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:referon/models/PincodeApi.dart';
import 'package:referon/screens/contact_screen.dart';
import 'package:referon/services/ApiService.dart';
import 'CircleProgress.dart';
import 'package:flutter/src/widgets/form.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/src/widgets/form.dart';
class CompanyDetails extends StatefulWidget {
  const CompanyDetails({Key key}) : super(key: key);

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: CompanyDataForm(),
    );
  }
}

class CompanyDataForm extends StatefulWidget {
  @override
  State<CompanyDataForm> createState() => _CompanyDataFormState();
}

class _CompanyDataFormState extends State<CompanyDataForm>
    with SingleTickerProviderStateMixin {

  PostOffice _pincodeApi;
  List <PostOffice>responseString = [];
  var city, state, country;

  final _Edt_CompanyName = TextEditingController();
  final _Edt_Address1 = TextEditingController();
  final _Edt_pincode = TextEditingController();
  var _Edt_city = TextEditingController();
  var _Edt_State = TextEditingController();
  var _Edt_Country = TextEditingController();
  
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  FocusNode _focusNode = FocusNode();
  void _sumbit() {
    final isValid = _formKey.currentState.validate();

    if (_selectedval == null || _selectedval == "Select") {
      setState(() => _dropdownError = "Company Type Cannot be Empty");
    }
    if (_selectedval2 == null || _selectedval2 == "Select") {
      setState(() => _dropdownError = "Business Type Cannot be Empty");
    }
    if (isValid) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => ContactDetails())));
    }
    _formKey.currentState.save();
  }

  // List<PincodeApi> pincodeapi;
  // var isLoaded = false;

// @override
// void initState()
// {
//   super.initState();

//   // fetch pincode here
//   getPincodeApi();
// }
// getPincodeApi() async
// {
//     pincodeapi = await ApiService().getPincode();
//     if(pincodeapi != null)
//     {
//       setState(() {

//         isLoaded = true;
//         print(pincodeapi);
//       });
//     }

// }

  Future<List<PostOffice>> getPincode(String pincode) async {
    var response = await http
        .get(Uri.parse("https://api.postalpincode.in/pincode/" + pincode));

     
    if (response.statusCode == 200) {
       final parsed = jsonDecode(response.body);
       final jsonList = (parsed as List).first['PostOffice'];

       city = (' ${jsonList[0]['District']}');
       state = (' ${jsonList[0]['State']}');
       country =(' ${jsonList[0]['Country']}');

       print("city:"+city);
       print("state:"+state);
       print("country:"+country);


      
    } else {
      throw Exception('Failed to  get Pincode ');
    }
  }

  _CompanyDataFormState() {
    _selectedval = _list[0];
    _selectedval2 = _list[0];
  }

  int _counter = 0;
  String _selectedval;
  String _dropdownError = "";
  String _selectedCompanytype;
  String selectedSalutation;

  final _list = [
    "Select",
    "Sole Proprietor",
    "Partnership Firm",
    "Limited Liability Partnership",
    "Private Limited Company",
    "Public Limited Company"
  ];

  String _selectedval2 = "";
  final _list2 = ["Select", "Fleet Owner", "Aggregator", "Both"];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        moveToLastScreen();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/loginheader.png', fit: BoxFit.cover),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
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
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            animation: true,
                            animationDuration: 5000,
                            radius: 28,
                            lineWidth: 8,
                            percent: 0.0,
                            progressColor: Color.fromRGBO(180, 211, 67, 30),
                            backgroundColor: Color.fromRGBO(17, 24, 66, 50),
                            circularStrokeCap: CircularStrokeCap.round,
                            center: const Text('0%',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.black)),
                          ),
                          Spacer(),
                          Text(
                            "Company  Details",
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
                        height: 20.0,
                        child: Center(), //Center
                      ),
                      SizedBox(
                        width: 400,
                        // height: 55,
                        child: TextFormField(
                          autofocus: true,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          focusNode: FocusNode(),
                          keyboardType: TextInputType.name,
                          textAlign: TextAlign.center,
                          controller: _Edt_CompanyName,
                          onFieldSubmitted: (value) {},
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'Company Name Cannot be Empty ';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              prefix: Icon(
                                Icons.business,
                                size: 20,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              errorStyle: _focusNode.hasFocus
                                  ? TextStyle(
                                      fontSize: 0, height: 0, color: Colors.white)
                                  : null,
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              iconColor: Color.fromRGBO(17, 24, 66, 100),
                              labelText: 'Company Name :',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                        child: Center(), //Center
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: DropdownButtonFormField<String>(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                              filled: true,
                              labelText: 'Company Type : ',
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
                          value: _selectedval,
                          hint: Text(
                            'Select',
                          ),
                          onChanged: (value) =>
                              setState(() => _selectedval = value),
                          validator: (value) =>
                              value == "Select" ? 'field required' : null,
                          items:
                              _list.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
    
                      // SizedBox(
                      //   height: 20.0,
                      //     child: Center
                      //     (
    
                      //     ), //Center
    
                      //   ),
    
                      //  Container(
                      //   decoration:BoxDecoration(
                      //     color:Colors.white,
                      //     borderRadius: BorderRadius.circular(10)
                      //   ),
    
                      //   child: Padding(
                      //       padding: EdgeInsets.only(left:5, right:5),
    
                      //       child: DropdownSearch<String>(
                      //         items: [
                      //                     "ssj",
                      //                     "ssksks",
                      //              ],
    
                      //                  //             decoration:   InputDecoration(
                      //                  //             filled: true,
                      //                  //             labelText: 'Company Type : ',
                      //                  //             labelStyle: TextStyle(
                      //                  //               color: Color.fromRGBO(17,24,66,100),
    
                      //                  //             ),
                      //                  //             border: OutlineInputBorder(borderSide: const BorderSide(width: 0, color: Colors.black),borderRadius: BorderRadius.all(
                      //                  //             Radius.circular(10.0),
                      //                  //   ))
                      //                  // ),
                      //                  //             isExpanded: true,
    
                      //                  //             value: _selectedval,
                      //                  //             items: _list.map((e) =>
                      //                  //             DropdownMenuItem(child: Text(e),value: e,)
                      //                  //           ).toList()
                      //                  //           , onChanged: ((value) {
                      //                  //             setState(() {
                      //                  //               _selectedval = value as String;
                      //                  //             });
    
                      //       // }
                      //       // )
                      //       ),
                      //     ),
                      //  ),
    
                      // Container(
                      //     child:Column(
                      //         children: [
                      //             Container(
                      //               width: double.infinity,
                      //               height: MediaQuery.of(context).size.height*0.7,
                      //               child: Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 mainAxisAlignment: MainAxisAlignment.center,
                      //                 children:[
                      //                       Padding(padding: EdgeInsets.all(20),
                      //                       child: Text("Select a Country",style: TextStyle(
                      //                         fontSize: 20,
                      //                         color: Colors.amber,
                      //                       ),),
                      //                       ),
                      //                       Container(
    
                      //                         margin: EdgeInsets.symmetric(horizontal: 20),
                      //                         decoration: BoxDecoration(
                      //                           color: Colors.white,
                      //                           borderRadius: BorderRadius.circular(10),
                      //                           boxShadow: [
                      //                             BoxShadow(
    
                      //                                   color:Colors.grey.withOpacity(0.2),
                      //                                   blurRadius: 10,
                      //                                   offset:Offset(0,10),
    
                      //                             ),
                      //                           ]
                      //                         ),
                      //                           child: SearchField(
                      //                             hint: 'Search..',
                      //                             searchInputDecoration: InputDecoration(
                      //                               enabledBorder:OutlineInputBorder(
                      //                                 borderSide: BorderSide(
                      //                                   color: Colors.blueGrey.shade200,
                      //                                   width: 1,
                      //                                 ),
                      //                                 borderRadius: BorderRadius.circular(10)
                      //                               ),
                      //                               focusedBorder: OutlineInputBorder(
                      //                                 borderSide: BorderSide(
                      //                                   color: Colors.blueGrey.shade200,
                      //                                   width: 2,
                      //                                 ),
                      //                                 borderRadius:BorderRadius.circular(10)
                      //                               )
                      //                             ),
                      //                             itemHeight: 50,
                      //                             maxSuggestionsInViewPort:6,
                      //                             suggestionsDecoration: BoxDecoration(
                      //                               color:Colors.white,
                      //                               borderRadius: BorderRadius.circular(10)
                      //                             ),
                      //                             suggestions: [
    
                      //                             ],
    
                      //                           ),
                      //                       ),
                      //                 ],
                      //               ),
                      //             )
    
                      //         ],
                      //     ),
                      // ),
                      SizedBox(
                        height: 20.0,
                        child: Center(), //Center
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: DropdownButtonFormField<String>(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                              filled: true,
                              labelText: 'Business Type : ',
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
                          hint: Text(
                            'Select',
                          ),
                          onChanged: (value) =>
                              setState(() => _selectedval2 = value),
                          validator: (value) =>
                              value == "Select" ? 'field required' : null,
                          items: _list2
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                        child: Center(), //Center
                      ),
                      SizedBox(
                        width: 400,
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.streetAddress,
                          textAlign: TextAlign.center,
                          controller: _Edt_Address1,
                          onFieldSubmitted: (value) {},
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'Address 1 Cannot be Empty ';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              prefix: Icon(
                                Icons.home,
                                size: 20,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              errorStyle: _focusNode.hasFocus
                                  ? TextStyle(
                                      fontSize: 0, height: 0, color: Colors.black)
                                  : null,
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              iconColor: Color.fromRGBO(17, 24, 66, 100),
                              labelText: 'Address 1 :',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        child: Center(), //Center
                      ),
                      SizedBox(
                        width: 400,
                        child: TextField(
                          keyboardType: TextInputType.streetAddress,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              prefix: Icon(
                                Icons.home,
                                size: 20,
                              ),
                              iconColor: Color.fromRGBO(17, 24, 66, 100),
                              labelText: 'Address 2 :',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        child: TextField(
                          keyboardType: TextInputType.streetAddress,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              prefix: Icon(
                                Icons.map,
                                size: 20,
                              ),
                              iconColor: Color.fromRGBO(17, 24, 66, 100),
                              labelText: 'Landmark :',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          controller: _Edt_pincode,
                          onChanged: (data) async {
                            String pincodedata = _Edt_pincode.text;
    
                            List<PostOffice> api = await getPincode(pincodedata);
    
                            setState(() {
                              _pincodeApi = api as PostOffice;
                            });
                          },
                          onFieldSubmitted: (value) {},
                          validator: (text) {
                            if (text.isEmpty) {
                              return 'Pincode Cannot be Empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              prefix: Icon(
                                Icons.location_city,
                                size: 20,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              errorStyle: _focusNode.hasFocus
                                  ? TextStyle(
                                      fontSize: 0, height: 0, color: Colors.black)
                                  : null,
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              iconColor: Color.fromRGBO(17, 24, 66, 100),
                              labelText: 'Pincode :',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        child: TextField(
                          keyboardType: TextInputType.streetAddress,
                          textAlign: TextAlign.center,
                          controller: _Edt_city = TextEditingController(text: city),
                          decoration: InputDecoration(
                              prefix: Icon(
                                Icons.location_city,
                                size: 20,
                              ),
                              iconColor: Color.fromRGBO(17, 24, 66, 100),
                              labelText: 'City :',
                              hintText: '$city',
                              
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        child: TextField(
                          keyboardType: TextInputType.streetAddress,
                          textAlign: TextAlign.center,
                          controller: _Edt_State = TextEditingController(text: state),
                          decoration: InputDecoration(
                              prefix: Icon(
                                Icons.location_city,
                                size: 20,
                              ),
                              iconColor: Color.fromRGBO(17, 24, 66, 100),
                              labelText: 'State :',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        child: TextField(
                          keyboardType: TextInputType.streetAddress,
                          textAlign: TextAlign.center,
                          controller: _Edt_Country = TextEditingController(text: country),
                          decoration: InputDecoration(
                              labelText: 'Country :',
                              labelStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
    
                      SizedBox(
                        height: 30.0,
                        child: Center(), //Center
                      ),
    
                      ButtonTheme(
                        minWidth: 450.0,
                        height: 50,
                        // child: ElevatedButton(
                        //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        //   child: Text(' Next '),
                        //   textColor: Colors.white,
                        //   color: Color.fromRGBO(17, 24, 66, 40),
                        //   shape: RoundedRectangleBorder(
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(6.0))),
                        //   onPressed: () {
                        //     validator:
                        //     (_selectedval) {
                        //     print("Selected value"+_selectedval);
                        //       if (_selectedval == "Select" ||
                        //           _selectedval == " ") {
                        //             print("_selectedval"+_selectedval);
                        //         ScaffoldMessenger.of(context)
                        //             .showSnackBar(SnackBar(
                        //           content: Text("Please Select Company Type!"),
                        //         ));
                        //       }
                        //       return null;
                        //     };
                        //     validator:
                        //     (_selectedval2) {
                        //       print("Selected value"+_selectedval2);
                        //       if (_selectedval2 == "Select" ||
                        //           _selectedval2 == " ") {
                        //             print("_selectedval"+_selectedval2);
                        //         ScaffoldMessenger.of(context)
                        //             .showSnackBar(SnackBar(
                        //           content: Text("Please Select Business Type!"),
                        //         ));
                        //       }
                        //       return null;
                        //     };
    
                        //      Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: ((context) => ContactDetails())));
    
                        //     _sumbit();
                        //   },
                        // ),
    
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: ElevatedButtonTheme(
                            data: ElevatedButtonThemeData(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(380.0, 45),
                                primary: Color.fromRGBO(17, 24, 66,
                                    40), // Sets color for all the descendent ElevatedButtons
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6.0))),
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                validator:
                                (_selectedval) {
                                  print("Selected value" + _selectedval);
                                  if (_selectedval == "Select" ||
                                      _selectedval == " ") {
                                    print("_selectedval" + _selectedval);
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content:
                                          Text("Please Select Company Type!"),
                                    ));
                                  }
                                  return null;
                                };
                                validator:
                                (_selectedval2) {
                                  print("Selected value" + _selectedval2);
                                  if (_selectedval2 == "Select" ||
                                      _selectedval2 == " ") {
                                    print("_selectedval" + _selectedval2);
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content:
                                          Text("Please Select Business Type!"),
                                    ));
                                  }
                                  return null;
                                };
    
                                _sumbit();
                              },
                              child: Text('Next ',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  
  void moveToLastScreen() {

     Navigator.pop(context);
  }
}