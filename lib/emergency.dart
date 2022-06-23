import 'package:flutter/material.dart';

import 'ambulance.dart';
import 'doctors.dart';
import 'nearby_hospitals.dart';

class Emergency extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
         //backgroundColor: Theme.of(context).primaryColor ,
          appBar: AppBar(
           toolbarHeight: 100.0,
            title: Text(" Emergency ", textAlign: TextAlign.left,),
            elevation: 0.0,
            backgroundColor: Theme.of(context).primaryColor ,
            centerTitle: true,
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white ,
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.person_search_sharp
                ) ,
                ),

                Tab(
                  icon: Icon(
                    Icons.directions_car_outlined
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home_work_outlined
                  ),
                )
              ],
            ),
          ),

          body: TabBarView(
            children: [
              Doctors(),
              Ambulance(),
              NearbyHospitals(),
            ],
          ),




        ) ,
      ) ,
    );

  }

}
