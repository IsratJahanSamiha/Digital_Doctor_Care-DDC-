// ignore: avoid_web_libraries_in_flutter
//import 'dart:js';

//import 'package:js/js.dart';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/painting.dart';

import 'item_details_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
  }


  class _HomeState extends State<HomePage>{
  @override
    Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
     return Scaffold(
       backgroundColor: Theme.of(context).primaryColor ,
       appBar: AppBar(
         toolbarHeight: 35.0,
        title: Text("Dr. Info ", textAlign: TextAlign.center,),
         elevation: 0.0,
         //backgroundColor: Theme.of(context).primaryColor ,
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
        // leading: Icon(
           //Icons.menu ,
          // color: Colors.white ,
        // ) ,

       ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
                 topRight: Radius.circular(25),
                 topLeft: Radius.circular(25),
      )
      ) ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            mainAxisAlignment: MainAxisAlignment.start ,

          children: [
            Container(
              width: size.width,
              margin: EdgeInsets.only(left: 20 ,top: 10),
              child: Stack(
                fit: StackFit.loose ,
                children: [
                  Container(
                    child: Text(
                      "Category",
                      style: TextStyle(
                        color : Color(0xff363636),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700
                      ) ,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 1 ,right: 20),
                    child : Align(
                      alignment: Alignment.centerRight ,
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color : Color(0xff363636),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                        ) ,
                      ),
                    ),

                  ),

                  Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30,left: 20) ,
                    child: ListView(
                      scrollDirection: Axis.horizontal ,
                      children: [
                        demoCategories("assets/tooth1.png" , "Tooth" , "10 Doctors"),
                        demoCategories("assets/brain.png" , "Brain" , "8 Doctors"),
                        demoCategories("assets/heart.png" , "Heart" , "15 Doctors"),
                        demoCategories("assets/bone.png" , "Bone" , "20 Doctors"),
                      ],
                    ) ,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 20,top: 160,right: 20 ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x14000000),
                            offset: Offset(0,10),
                            blurRadius: 15,
                            spreadRadius: 7,

                          )
                        ]
                    ) ,
                    height: 30 ,
                    width: size.width ,
                    child: Row(
                      children: [
                        Expanded(
                          flex : 7,
                          child: Container(
                            margin: EdgeInsets.only(left: 10 ,right: 10, top: 14),
                            child: TextField(
                              maxLines: 1,
                              autofocus: false ,
                              style: TextStyle(
                                color: Color(0xFF3F7F43),
                                fontSize: 15,
                              ) ,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search"
                              ),
                            ) ,
                          ),
                        ),
                        Expanded(
                          flex : 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF3F7F43),
                                borderRadius: BorderRadius.circular(5)
                            ) ,
                            child: Center(
                              child: Icon(
                                Icons.search ,
                                color: Colors.white ,
                                size: 25,
                              ),
                            ) ,
                          ),
                        )
                      ],

                    ) ,
                  ),

                  Container(
                    width: size.width,
                    margin: EdgeInsets.only(left: 4 ,top: 200),
                    child: Stack(
                      fit: StackFit.loose ,
                      children: [
                        Container(
                          child: Text(
                            "Top Rated",
                            style: TextStyle(
                                color : Color(0xff363636),
                                fontSize: 19,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700
                            ) ,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 2 ,right: 10),
                          child : Align(
                            alignment: Alignment.centerRight ,
                            child: Text(
                              "See all",
                              style: TextStyle(
                                color : Color(0xff363636),
                                fontSize: 15,
                                fontFamily: 'Roboto',
                              ) ,
                            ),
                          ),

                        ),
                      ],
                    ) ,
                  ),
                ],
              ) ,
            ),
            
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: ListView(
                    children: [
                      demoTopRatedDr(
                        "assets/dr.1.png",
                        "Dr. Haney",
                        "Heart Surgeon",
                        "4.1"
                      ),
                      demoTopRatedDr(
                          "assets/dr2.png",
                          "Dr. Abu Syed",
                          "Bone Surgeon",
                          "4.5"
                      ),
                      demoTopRatedDr(
                          "assets/dr4.png",
                          "Dr. Sam",
                          "Eye Surgeon",
                          "4.6"
                      ),
                    ],
                  ),
                )
                )
            
      ],
      ),
      ),
     );
    }

    Widget demoCategories(String image , String name , String drQuatity ){
      return Container(
        margin: EdgeInsets.only(right: 15),
        width: 80,
        decoration: BoxDecoration(
          color: Color(0xFF3F7F43),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(image) ,
              width : 50.0,
              height : 60,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white ,
                  fontSize: 13,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500
                ) ,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Color(0xFF3F7F43).withOpacity(.07)
              ) ,
              child: Text(
                drQuatity,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 8,
                    fontFamily: 'Roboto',
                ) ,
              ),
            ),
          ],
        ),
      );

    }

    Widget demoTopRatedDr(String image , String name , String speciality , String rating) {
      Size size = MediaQuery.of(context).size;

      return GestureDetector(
        onTap: () {
          Navigator.push( context , MaterialPageRoute(builder: (context) => ItemDetailsPage()));
        },
        child: Container(
          height: 70,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 1),
                height: 40,
                width: 40,
                child: Image.asset(image),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,top: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 3),
                          child: Text(
                            name,
                            style: TextStyle(
                              color: Color(0xFF3F7F43),
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                                     ),
                                   ),
                               ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                speciality,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w300,
                                ) ,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3, left: 70  ),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "Rating ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      rating,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                          ]
                   )
               ),
              ]
          ),
        ) ,
      );

    }

  }

imageProfile() {
  return Stack(
    children:<Widget> [
      CircleAvatar(
        radius: 40.00,
        backgroundImage: AssetImage("assets/dr2.png"),
      ),
      Positioned(
          top: 50.00 ,
          //bottom: 0.5,
          left: 50.00,
          child: InkWell(
            onTap: () {
              var context;
              showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet() ));
            } ,
            child: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ))
    ],
  );
}
  bottomSheet(){
  BuildContext context;
  return Container(
    height: 20.00,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(
      horizontal: 20.00,
      vertical: 20.00,
    ),
    child: Column(
      children: <Widget>[
        Text(
          "Choose profile photo",
          style: TextStyle(
            fontSize: 20.00,
          ),
        ),
        SizedBox(
          height: 20.00,
        ),
        Row(
          children:<Widget>[
            FlatButton.icon(
                icon: Icon(Icons.camera),
                onPressed: (){},
                label: Text("Camera")
            ),
            FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: (){},
                label: Text("Gallery")),
          ],
        )
      ]
    ),
  );
  }



