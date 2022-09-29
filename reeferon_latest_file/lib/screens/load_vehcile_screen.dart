// ignore_for_file: prefer_const_constructors
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:blinking_text/blinking_text.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:flutter/src/widgets/basic.dart';

class LoadVehcile extends StatefulWidget {
  const LoadVehcile({Key key}) : super(key: key);

  @override
  State<LoadVehcile> createState() => _LoadVehcileState();
}

class _LoadVehcileState extends State<LoadVehcile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: LoadVehicleDtlForm(),
    );
  }
}

class LoadVehicleDtlForm extends StatefulWidget {
  const LoadVehicleDtlForm({Key key}) : super(key: key);

  @override
  State<LoadVehicleDtlForm> createState() => _LoadVehicleDtlFormState();
}

class _LoadVehicleDtlFormState extends State<LoadVehicleDtlForm> {
  _LoadVehicleDtlFormState() {}
  String _bid_date = "10-08-2022";
  String _placement_date = "12-08-2022";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, Constraints) {
        if (Constraints.maxWidth < 768) {
          return Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20.0,
                                child: Center(), //Center
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 6),
                                          child: Container(
                                            color: Colors.white,
                                            child: Center(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timer,
                                                  color: Colors.black,
                                                  size: 15,
                                                ),
                                                label: BlinkText(
                                                    "Bid Closure Time : 10min : 59sec",
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    duration:
                                                        Duration(seconds: 1)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,000'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,000'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,000'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,000'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,000'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 79,000'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,000'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,000'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Sion , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              " Madhapur, Hyderabad",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Frozen (18- to 25-)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 120,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("Cartons",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("Bolero_1MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Sholapur",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 80,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),
                                            Spacer(),
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
                                                      ' Place BID : 79,000'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 10min : 59sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                width: 440,
                                height: 330,
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 11, 22),
                                          width: 1,
                                        )),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "BID Date :" + _bid_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Text(
                                                  "Placement Date :" +
                                                      _placement_date,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 11, 11, 22),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 0),
                                              child: Expanded(
                                                // optional flex property if flex is 1 because the default flex is 1
                                                flex: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      // Container(
                                                      //   padding: EdgeInsets.all(5.0),
                                                      //   // child: TextButton.icon(
                                                      //   //     onPressed: () {},
                                                      //   //     icon: Icon(
                                                      //   //       Icons.add_location,
                                                      //   //       color: Colors.red,
                                                      //   //     ),
                                                      //   //     label: Text(
                                                      //   //       " Sion, Mumbai ",
                                                      //   //       style: TextStyle(
                                                      //   //           color: Color.fromARGB(
                                                      //   //               255, 11, 11, 22),
                                                      //   //           fontSize: 15,),
                                                      //   //     )
                                                      //   //     ),

                                                      // ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 150,
                                                              child: TextButton
                                                                  .icon(
                                                                      onPressed:
                                                                          () {},
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .add_location,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                      label:
                                                                          Text(
                                                                        " Mumbra , Mumbai",
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                11,
                                                                                11,
                                                                                22),
                                                                            fontSize:
                                                                                18),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 110),
                                                        child: Dash(
                                                            direction:
                                                                Axis.vertical,
                                                            length: 10,
                                                            dashLength: 3,
                                                            dashColor:
                                                                Colors.black),
                                                      ),

                                                      Container(
                                                        width: 150,
                                                        child: TextButton.icon(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.pin_drop,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            label: Text(
                                                              "Biharsharif, Bihar",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          11,
                                                                          11,
                                                                          22),
                                                                  fontSize: 18),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.device_thermostat,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text(
                                                        "Chillers (0 - 10)",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.category,
                                                      color: Colors.black,
                                                      size: 25,
                                                    ),
                                                    label: Text("HDPE Bags",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.fire_truck,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                label: Text("TATA 407_MT",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
                                            ),

                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 0),
                                              child: SizedBox(
                                                child: Expanded(
                                                  // optional flex property if flex is 1 because the default flex is 1
                                                  flex: 1,
                                                  child: Container(
                                                    child: TextButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.pin_drop,
                                                        color: Colors.black,
                                                        size: 28,
                                                      ),
                                                      label: Text(
                                                          "Touch Point : Patna",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //  Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.device_thermostat,color: Colors.black,size: 25,), label: Text("Frozen ( 18 - to 25 - )",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                            //   Spacer(),
                                            //    Container(

                                            //            child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.production_quantity_limits_sharp,color: Colors.black,size: 25,), label: Text("Cartons",style: TextStyle(color: Colors.black,fontSize: 15)),style:  TextButton.styleFrom(backgroundColor:Colors.white),
                                            //            ),
                                            //   ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.timeline_sharp,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                label: Text(
                                                    "Live Bid Amount : 1,00,000",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18)),
                                                style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.white),
                                              ),
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
                                                      ' Place BID : 99,999'),
                                                  onPressed: () {
                                                    openDialog();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Divider(
                                          height: 2,
                                          color: Colors.black,
                                        )),
                                        Container(
                                          color: Colors.white,
                                          child: Center(
                                            child: TextButton.icon(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.timer,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              label: BlinkText(
                                                  "Bid Closure Time : 1min : 30sec",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  duration:
                                                      Duration(seconds: 1)),
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return Scaffold(
          backgroundColor: Colors.white,
        );
      }),
    );
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Enter Bid Amount:"),
          content: TextField(
            decoration: InputDecoration(hintText: 'Bid Amount:'),
          ),
          actions: [
            TextButton(onPressed: cancelfunc, child: Text('Cancel')),
            TextButton(onPressed: submitfunc, child: Text('Submit'))
          ],
        ),
      );
  void submitfunc() {
    // Navigator.pop(context);
  }
  void cancelfunc() {
    // Navigator.pop(context);
  }
}
