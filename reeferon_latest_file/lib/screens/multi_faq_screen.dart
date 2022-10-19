import 'package:flutter/material.dart';
import 'package:referon/models/faqFormDetails.dart';
import 'package:referon/models/login_model.dart';
import 'package:referon/screens/faq_screen.dart';
import 'package:referon/screens/fleet_item_widget.dart';
import 'package:referon/screens/success_screen.dart';

class MultiFaqScreen extends StatefulWidget 
{

LoginScreenModel loginScreenModel;
List<FLeetDetail> forms;

  MultiFaqScreen({Key key, this.loginScreenModel, this.forms}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() {
    return _MultiFaqScreenState();
  }
}

class _MultiFaqScreenState extends State<MultiFaqScreen> {



  List<FaqDetails>  faqdetails = List.empty(growable: true);

  List<String> data = [];
  
  @override
  void initState() {

    
    print("In MultiFaq:$widget.forms");

    super.initState();
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
       appBar: AppBar(
        title: Image.asset('assets/images/loginheader.png', fit: BoxFit.cover),
        backgroundColor: Colors.white,
        elevation: 0,
      ),


      bottomNavigationBar:

       Padding(
        padding: EdgeInsets.all(8.0),
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
                              child: Text(' Next '),
                              onPressed: () {
                                onSave();
                              },
                            ),
                          ),
        
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          onAdd();
        },
        icon: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(180, 211, 67, 50),
        focusColor: Colors.green,
        label: Text(" Add New Faq Form " ),
        elevation: 10,
      ),

      body: faqdetails.isNotEmpty
          ? ListView.builder(
              itemCount: faqdetails.length,
              itemBuilder: (_, index) {
                return faqdetails[index];
              })
          : Center(child: Text("To Add Fleet Form Click on New Fleet Form")),
       );
  }
  onSave()
   {
    
    bool allValid = true;

    faqdetails
        .forEach((element) => allValid = (allValid && element.isValidated()));
    
    if (allValid) {
    
      
      Navigator.push(context, MaterialPageRoute(builder: ((context) => SuccessPage())));
    } 
    else {
      print(" Empty Data ");
      debugPrint("Form is Not Valid");
    }
  }
  onAdd() {
    setState(() {
      FaqFormDetails  _faqformdetails =
          FaqFormDetails(id: faqdetails.length);
      faqdetails.add(FaqDetails(
        index: faqdetails.length,
        faqFormDetails : _faqformdetails,
        // onRemove: () => onRemove(_contactModel),
      ));
    });
  }
}