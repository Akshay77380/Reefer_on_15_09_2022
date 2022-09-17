import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:referon/menu.dart';
import 'package:referon/screens/load_vehcile_screen.dart';
import 'package:referon/screens/vehicle_post_screen.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';  

class DashBoard extends StatefulWidget {
  const DashBoard({Key key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}
class _DashBoardState extends State<DashBoard> {
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: DefaultBottomBarController(child: DashBoardForm(),),
    );   
  }
}
class DashBoardForm extends StatefulWidget {
  const DashBoardForm({Key key}) : super(key: key);

  @override
  State<DashBoardForm> createState() => _DashBoardFormState();
}

class _DashBoardFormState extends State<DashBoardForm> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
   int _page = 0;
   
     get bbc => null;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.white,
              appBar: AppBar(
                
                title: Text("Partner Name",style: TextStyle(color: Colors.white),),
                
                bottom: PreferredSize(
                      preferredSize: Size.fromHeight(10),
                  child: Container(

                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 1.0,
                          color:  Color.fromRGBO(180,211,67, 50),
                            
                        ),

                        
                        ColoredBox(
                          color:Color.fromRGBO(17,24,66,80),
                          child: TabBar(
                        
                             
                                 
                                  indicator: BoxDecoration(color:  Color.fromRGBO(180,211,67, 50),),
                               
                                 
                                 
                            tabs: [
                        
                             Container(
                              height:60,
                              child: Tab(text: 'Load In Hands',),
                              
                             ),
                              Tab(text: 'Find Loads'),
                            ],
                            
                                              ),
                        ),
                      ],
                      
                    ),
                  ),
                ),
                iconTheme: IconThemeData(
                  color: Colors.white,
                  size: 30,  
                ),
              
                 centerTitle: true,
                 toolbarHeight: 120,
                 backgroundColor:Color.fromRGBO(17,24,66,80),
                 
                 elevation: 2,
                
              actions: [
                
                // IconButton(
                // onPressed: () => Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => SearchPage())),
                // icon: const Icon(Icons.search,color: Colors.white,size: 35,))
                Image.asset('assets/images/logocircle.png',width: 50,),


              ],
        ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: GestureDetector(
          onVerticalDragUpdate: DefaultBottomBarController.of(context).onDrag,
          onVerticalDragEnd: DefaultBottomBarController.of(context).onDragEnd,

          child: FloatingActionButton.extended(
            
            backgroundColor:  Color.fromRGBO(180,211,67, 50),
            onPressed: ()=>DefaultBottomBarController.of(context).swap(),label: AnimatedBuilder(
              animation: DefaultBottomBarController.of(context).state,
              builder: ((context, child) => Row(children: [
                Text(DefaultBottomBarController.of(context).isOpen ? 'Less': 'More'),
                const SizedBox(width: 10.0,),
                AnimatedBuilder(animation: DefaultBottomBarController.of(context).state, builder:((context, child) => Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.diagonal3Values(
                    1,
                    DefaultBottomBarController.of(context)
                    .state
                    .value *
                    2-1,
                    1),
                    child: child,
                )
                
                ),
                
                child: RotatedBox(quarterTurns: 1, child: Icon(Icons.chevron_right,size: 20,color: Colors.white,),),
                
                ),
                
              ],)),
            ),),
          
        ),
        bottomNavigationBar: BottomExpandableAppBar(
          appBarHeight: 80,
          horizontalMargin: 2,
          
          expandedBackColor: Color.fromRGBO(17,24,66,80),
          expandedBody: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/logo.png"),fit: BoxFit.contain,opacity: 500)
            ),
          ),
          bottomAppBarBody: Row(children: [


            //   InkWell(
            //       onTap: (){

            //       },
            //       child:Container(
            //         height: 50,
            //          width: MediaQuery.of(context).size.width / 1.2,
            //          decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(20.0),
            //   color: Color.fromRGBO(17,24,66,50),
            // ),
            // child: Center(
            //   child: Text(
            //      "Food Poisoning Symptoms",
            //      style: TextStyle(
            //       fontSize: 10,
            //       fontWeight: FontWeight.w100,
            //       color: Colors.amber 
            //      ),
            //   ),
            // ),
            // )
            //   ),

             Container(
               height: 100,
                     width:450,
                     decoration: BoxDecoration(
                     
                    color: Color.fromRGBO(17,24,66,80),),
               child: NavigationBarTheme(
                data: NavigationBarThemeData(
                   labelTextStyle: MaterialStateProperty.all(TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold))
                ),
                 child: NavigationBar(
                  
                  backgroundColor: Color.fromRGBO(17,24,66,150),
                  
                  destinations: [
                            
                             
                  NavigationDestination(icon: Icon(Icons.person,color:Colors.white,), label: 'My Profile'),
                  NavigationDestination(icon: Icon(Icons.summarize,color:Colors.white,), label: 'Summary'),
                  NavigationDestination(icon: Icon(Icons.approval,color:Colors.white,), label: 'Live Trips'),
                  NavigationDestination(icon: Icon(Icons.details,color:Colors.white,), label: 'Fleet'),
                  NavigationDestination(icon: Icon(Icons.help_center,color:Colors.white,), label: 'Help')
                           
                  ]
                           ),
               ),
             ),
          ],)
        ),
        body: TabBarView(
          children: [

          LoadVehcile(),
          VehiclePostScreen(),

        ]),
        
         // bottomNavigationBar: CurvedNavigationBar(
        //     key: _bottomNavigationKey,
        //     index: 0,
        //     height: 70.0,
        //     items: <Widget>[
        //       Icon(Icons.add, size: 30),
        //       Icon(Icons.list, size: 30),
        //       Icon(Icons.compare_arrows, size: 30),
        //       Icon(Icons.call_split, size: 30),
        //       Icon(Icons.perm_identity, size: 30),
        //     ],
        //     color: Colors.white,
        //     buttonBackgroundColor: Colors.white,
        //     backgroundColor: Colors.blueAccent,
        //     animationCurve: Curves.easeInOut,
        //     animationDuration: Duration(milliseconds: 600),
        //     onTap: (index) {
        //       setState(() {
        //         _page = index;
        //       });
        //     },
        //     letIndexChange: (index) => true,
        //   ),
        drawer: Drawer(
          child: ListView(
      
            padding: EdgeInsets.zero,
            children: [
            UserAccountsDrawerHeader(
                  accountName : Text('ReeferOn'),
                  accountEmail: Text('RefeerOn@helpdesk.com'),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                       child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                    width: 75,
                    height: 75,
                    ),
                  
                  ),
                    
                ),
                decoration: BoxDecoration(
                  color:Color.fromRGBO(17,24,66,50),
                ),
                  
                ),
                ListTile(
              leading: Icon(Icons.pages),
              title: Text('Load Available'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) =>VehiclePostDtlForm())))

            ),
            ListTile(
              leading: Icon(Icons.pages),
              title: Text('Vehicle Post'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Request'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => null,
            ),
             ListTile(
              leading: Icon(Icons.description),
              title: Text('Policies'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              title: Text('Exit'),
              leading: Icon(Icons.exit_to_app),
              onTap: () => null,
            ),
                
          ],
          ),
        ),

        
        ),
      );  
     
     
  }
}
class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17,24,66,150),
          // The search area here
          title: Container(
        width: double.infinity,
        height: 50,
        
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    /* Clear the search field */
                  },
                ),
                hintText: 'Search Vehicle Tracking...',
                border: InputBorder.none),
          ),
        ),
        
      ),
      
      toolbarHeight: 100,
      ),



    );
    
  }
}