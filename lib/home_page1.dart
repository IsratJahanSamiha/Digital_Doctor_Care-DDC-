import 'package:ddcare_flutter_app/home_page.dart';
import 'package:ddcare_flutter_app/primary_treatment.dart';
import 'package:ddcare_flutter_app/regularAlert.dart';
import 'package:ddcare_flutter_app/regularTips.dart';
import 'package:ddcare_flutter_app/settings.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'causesofDiseases.dart';
import 'emergency.dart';
import 'login.dart';
import 'logs.dart';


class HomePage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState1();
}

class _HomeState1 extends State<HomePage1>{
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
         // backgroundColor: Theme.of(context).primaryColor ,
          key: _globalKey ,

          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor ,
              actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push( context , MaterialPageRoute(builder: (context) => HomePage1()));
                },
                child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                       margin: EdgeInsets.fromLTRB(0.00, 0.0,2.0, 0.0),
                        child: CircleAvatar(
                          radius: 14.00,
                         backgroundImage: AssetImage("assets/l1.png",
                            //width : 30.0,
                            //height : 40,
                            //fit: BoxFit.cover ,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.00, 0.0,195.0, 0.0),
                        child: Text("DDCare",style: TextStyle( fontWeight: FontWeight.bold ),),
                      )
                    ],

                  ),
              ) ,

              GestureDetector(
                onTap: () {
                 Navigator.push( context , MaterialPageRoute(builder: (context) => Emergency()));
                  },
                child: Container(

                  margin: EdgeInsets.only(right: 10.00) ,
                  child: Icon(
                    Icons.local_fire_department_outlined,
                    color: Colors.yellow[400] ,
                  ),
                ) ,
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.today_sharp,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.medical_services_sharp,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.add_alert,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.highlight_rounded,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),

                ),
              ],
            ),

          ),
             body: TabBarView(
                 children: [
                   RegularTips(),
                   Primary_treatment(),
                   RegularAlert(),
                   CausesofDiseases(),
                   Drawer(
                          child: ListView(
                              padding: EdgeInsets.zero ,
                                children: <Widget> [
                                 // imageProfile(),
                            Container(
                              color: Theme.of(context).primaryColor ,
                              //color: Colors.green,
                              child: UserAccountsDrawerHeader(
                                  accountName: Text("Israt Jahan Samiha"),
                                  accountEmail: Text("jahansamiha3@gmail.com"),
                   //imageProfile(),
                                  currentAccountPicture: CircleAvatar(
                                   child: imageProfile()
                    //radius: 40.00 ,
                    // backgroundImage: AssetImage("assets/dr2.png",) ,
                  ),
                ),
                            ),

                              ListTile(
                                leading: GestureDetector(
                                  onTap: (){
                                    Navigator.push( context , MaterialPageRoute(builder: (context) => Settings()));
                                  },
                                  child: Icon(
                                    Icons.settings ,
                                    color: Colors.grey,
                    ),
                                ),
                                title: Text(" Settings "),
                ),
                                  ListTile(
                                    leading: GestureDetector(
                                      onTap: (){
                                        Navigator.push( context , MaterialPageRoute(builder: (context) => Logs()));
                                      },
                                      child: Icon(
                                        Icons.call ,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    title: Text(" Logs "),
                                  ),
                                 ListTile(
                                    leading: GestureDetector(
                                    onTap: (){
                                       Navigator.push( context , MaterialPageRoute(builder: (context) => LogIn()));
                         },
                                      child: Icon(
                                         Icons.logout ,
                                         color: Colors.grey,
                                   ),
                               ),
                                   title: Text(" LogOut "),
                     ),
              ],
            ),
          ),
         ],
       ),

       /*   body: Container(
            child: Column(
              children: <Widget> [
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child:
                          IconButton(
                            icon: Icon(
                              Icons.today_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child:
                          IconButton(
                            icon: Icon(
                              Icons.medical_services_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child:
                          IconButton(
                            icon: Icon(
                              Icons.add_alert,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child:
                          IconButton(
                            icon: Icon(
                              Icons.highlight_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                              icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 25.00,
                          ),
                              alignment: Alignment.bottomLeft,
                              onPressed: ()=> _globalKey.currentState.openDrawer()
                          ),
                        ),
                      ],

                      ),
                  ),
                Container(

                ),
                 ] ),
                ), */
         /* drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero ,
              children: <Widget> [
                // imageProfile(),
                UserAccountsDrawerHeader(
                  accountName: Text("Israt Jahan Samiha"),
                  accountEmail: Text("jahansamiha3@gmail.com"),
                  // imageProfile(),
                  currentAccountPicture: CircleAvatar(
                      child: imageProfile()
                    //radius: 40.00 ,
                    // backgroundImage: AssetImage("assets/dr2.png",) ,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(" Israt Jahan "),
                  subtitle: Text("patient"),
                  trailing: Icon(Icons.edit),
                ),
                ListTile(
                  leading: Icon(Icons.mail),
                  title: Text(" jahansamiha3@gmail.com "),
                  subtitle: Text("mail"),
                  trailing: Icon(Icons.send),
                ),
                ListTile(
                  leading: Icon(Icons.login),
                  title: Text(" LogOut "),

                ),
                ListTile(
                  leading: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),*/

            ),
      ),
    );

  }
  }

  