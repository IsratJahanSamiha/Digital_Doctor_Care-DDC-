import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'eyes.dart';
import 'medicine_dr.dart';

class Doctors extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     // backgroundColor: Theme.of(context).primaryColor ,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Center(
          child: Text(
              "Doctors",
            style: TextStyle(
              color: Colors.green,
              //backgroundColor: Colors.white,
            )
          ),
        ),
      ),
     // backgroundColor: Theme.of(context).primaryColor ,
      body: Container(
        color: Colors.white,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Container(
              child: Container(
                height: 50.00,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget> [
                    Container(
                      width: 80.00 ,
                      color: Colors.green ,
                      child: new Stack(
                        children: <Widget> [
                          ListTile(
                            leading: GestureDetector(
                              onTap: () {
                                Navigator.push( context , MaterialPageRoute(builder: (context) => Eyes()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 15.00) ,
                                child: Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.white,
                                ),
                              ),
                            ) ,
                          )
                        ],
                      ),
                    ),

                    Container(
                      width: 80.00 ,
                      color: Colors.green ,
                      child: new Stack(
                        children: <Widget> [
                          ListTile(
                            leading:  GestureDetector(
                              onTap: () {
                                Navigator.push( context , MaterialPageRoute(builder: (context) => Medi_Dr()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 15.00) ,
                                child: Icon(
                                  Icons.assistant,
                                  color: Colors.white,
                                ),
                              ),
                            ) ,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 80.00 ,
                      color: Colors.green ,
                      child: new Stack(
                        children: <Widget> [
                          ListTile(
                            leading: Icon(
                                Icons.pregnant_woman_outlined,
                                color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 80.00 ,
                      color: Colors.green ,
                      child: new Stack(
                        children: <Widget> [
                          ListTile(
                            leading: Icon(
                                Icons.wheelchair_pickup,
                                color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 80.00 ,
                      color: Colors.green ,
                      child: new Stack(
                        children: <Widget> [
                          ListTile(
                            leading: Icon(
                                Icons.child_friendly,
                                color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 10,right: 20 ),
              decoration: BoxDecoration(
                  color: Colors.green[300],
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
              margin: EdgeInsets.only(left: 15 ,top: 10),
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
                    margin: EdgeInsets.only(top: 2 ,right: 15),
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

            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  padding: const EdgeInsets.all(10.00),
                  children: <Widget> [
                    TopDr(
                      name: "Dr. Haney",
                      category: "Heart Surgeon",
                      rating: "4.2",
                      image: "dr.1.png",
                    ),
                    TopDr(
                      name: "Dr. Zerin",
                      category: "Bone Surgeon",
                      rating: "4.4",
                      image: "dr2.png",
                    ),
                    TopDr(
                      name: "Dr. Mou",
                      category: "Child Specialist",
                      rating: "4.9",
                      image: "dr.1.png",
                    ),
                    TopDr(
                      name: "Dr. Sam",
                      category: "Eye Surgeon",
                      rating: "4.7",
                      image: "dr4.png",
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

class TopDr extends StatelessWidget {
  TopDr({Key key, this.name, this.category, this.rating,this.image}):super(key:key);

    final String name;
    final String category;
    final String rating;
    final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 110,
      child: Card(
        color: Color(0xFF7AC67D),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Image.asset("assets/" + image),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    this.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    this.category,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text("Rating:" +
                    this.rating.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              )
            )
          ],
        ),
      ),
    );
  }


}