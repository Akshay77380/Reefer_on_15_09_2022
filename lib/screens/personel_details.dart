import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:referon/screens/contact_screen.dart';

class PersonelDetails extends StatefulWidget {
  const PersonelDetails({Key key}) : super(key: key);

  @override
  State<PersonelDetails> createState() => _PersonelDetailsState();
}

class _PersonelDetailsState extends State<PersonelDetails> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: PersonelForm(),      
    );
  }
}
class PersonelForm extends StatefulWidget {
  const PersonelForm({Key key}) : super(key: key);

  @override
  State<PersonelForm> createState() => _PersonelFormState();
}

class _PersonelFormState extends State<PersonelForm> {

  final _formKey = GlobalKey<FormState>();  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(

        title: Image.asset('assets/images/loginheader.png',fit: BoxFit.cover),
                backgroundColor: Colors.white,
                elevation: 0,
                
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration :BoxDecoration(
            
            image: DecorationImage(image: AssetImage("assets/images/logo.png"),fit: BoxFit.contain,opacity: 500),
        ),
        child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
      
                        children: [
                   
                       Text("Personal Details",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          
                          color: Color.fromARGB(255, 11, 11, 22),
                          
                                    fontStyle: FontStyle.normal,  
                        ),),
                      SizedBox(
                      
                      height: 20.0,
                        child: Center(
                        ), //Center
                             
                      ), 
      
                  SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    prefix: Icon(Icons.person,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100),
                                  labelText: 'First Name :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                      
                       SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    prefix: Icon(Icons.person,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100),
                                  labelText: 'Last Name :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                          SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    prefix: Icon(Icons.phone,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100),
                                  labelText: 'Contact Number :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                              SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    prefix: Icon(Icons.phone,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100),
                                  labelText: 'Alternate Number :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                              SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    prefix: Icon(Icons.email,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100),
                                  labelText: 'Email-Id :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                      SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.streetAddress,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    prefix: Icon(Icons.home,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100),
                                  labelText: 'Address 1 :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                              SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.streetAddress,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    prefix: Icon(Icons.home,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100),
                                  labelText: 'Address 2 :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                              SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.streetAddress,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                  prefix: Icon(Icons.map,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100), 
                                  labelText: 'Landmark :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                              SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    prefix: Icon(Icons.location_city,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100),
                                  labelText: 'Pincode :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                              SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.streetAddress,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    prefix: Icon(Icons.location_city,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100),
                                  labelText: 'City :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                              SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.streetAddress,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    prefix: Icon(Icons.location_city,size: 20,),
                                    iconColor:  Color.fromRGBO(17,24,66,100),
                                  labelText: 'State :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                              SizedBox(height: 10,),
                       SizedBox(
                              width: 400,
                              height: 55,
                               child: TextField(
                                  
                                keyboardType: TextInputType.streetAddress,
                                textAlign: TextAlign.center,
                                
                                  decoration: InputDecoration(
                                    
                                  labelText: 'Country :',
                                  labelStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  
                                  
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  
                                                 ),
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0, color: Color.fromARGB(255, 5, 10, 22)),
                                borderRadius: BorderRadius.circular(15),
                                                 )),
                                                 style: TextStyle(fontSize: 15),
                                             ),
                             ),
                          
                        SizedBox(
                        
                        height: 30.0,
                          child: Center(
                          ), //Center
                               
                        ),
                   
                       ButtonTheme(
                      minWidth: 200.0,
                      height: 45,
                       child:
                               Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: ElevatedButtonTheme(
                            data: ElevatedButtonThemeData(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(17, 24, 66,
                                    40), // Sets color for all the descendent ElevatedButtons
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6.0))),
                              ),
                            ),
                            child: ElevatedButton(
                              child: Text(' Next '),
                              onPressed: () =>
                                ContactDetails()
                              
                            ),
                          ),
                        ),
                     ),
                        ],
      
                      ),
                    ),
                  ),
                ),
      )
    );  
  }
}
