import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ItemDetailsState();

}

class _ItemDetailsState extends State<ItemDetailsPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0 ,
        backgroundColor: Theme.of(context).primaryColor,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white ,
          ),
        ),
        actions : [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child : Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_rounded,
                color: Colors.white ,
              ),
                 ),
          ),
        ]
      ) ,
      body: SingleChildScrollView(
         child : Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               height: 100,
               decoration: BoxDecoration(
                 color: Theme.of(context).primaryColor,
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(30),
                   bottomRight: Radius.circular(30),
                 ),
               ),

               child: Container(
                 margin: EdgeInsets.only( bottom: 10),
                 child: Row(
                   children: [
                     Container(
                       margin: EdgeInsets.only(left: 15, bottom: 10),
                       child: Image.asset("assets/dr.1.png"),
                     ),
                     Container(
                       //margin: EdgeInsets.only(bottom : 20),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: 10 ,top: 1),
                             child: Text(
                               "Dr. Honey ",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                                 fontFamily: "Roboto",
                                 fontWeight: FontWeight.w700,

                               ),
                             ),

                           ),
                           Container(
                             margin: EdgeInsets.only(left: 10 ,top: 5),
                             child: Text(
                               "Heart Surgeon ",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 13,
                                 fontFamily: "Roboto",
                                 fontWeight: FontWeight.w300,

                               ),
                             ),

                           ),
                           Container(
                             margin: EdgeInsets.only(left: 10 ,top: 5),
                             child: Text(
                               "Rating: 4.1 ",
                               style: TextStyle(
                                 color: Colors.yellow.shade300,
                                 fontSize: 13,
                                 fontFamily: "Roboto",
                                 fontWeight: FontWeight.w500,

                               ),
                             ),

                           ),

                         ],
                       ),

                     )
                   ],
                 ),
               ),
             ),
             Container(
               margin: EdgeInsets.only(left: 10,top: 6),
               child: Text(
                 "April 2020",
                 style: TextStyle(
                     color : Colors.black,
                     fontSize: 18,
                     fontFamily: 'Roboto',
                     fontWeight: FontWeight.w700
                 ) ,
               ),
             ),
             Container(
               height: 80,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                     demoDates("Sat","21",true),
                     demoDates("Sun","22",false),
                     demoDates("Mon","23",false),
                     demoDates("Tue","24",false),
                     demoDates("Wed","25",false),
                     demoDates("Thu","26",false),
                     demoDates("Fri","27",false),
                   ],
                 ),
             ),
             Container(
               margin: EdgeInsets.only(left: 10,top: 5),
               child: Text(
                 "Morning",
                 style: TextStyle(
                     color : Colors.black,
                     fontSize: 18,
                     fontFamily: 'Roboto',
                     fontWeight: FontWeight.w700
                 ) ,
               ),
             ),
             Container(
               margin: EdgeInsets.only(left: 10,top: 1),
               child: GridView.count(
                 shrinkWrap: true ,
                 crossAxisCount: 3,
                 physics: NeverScrollableScrollPhysics(),
                 childAspectRatio: 2.5,
                 children: [
                   doctorTimings("8.30 am", true ),
                   doctorTimings("9.00 am", false ),
                   doctorTimings("9.30 am", false ),
                   doctorTimings("10.00 am", false ),
                   doctorTimings("10.30 am", false ),
                   doctorTimings("11.00 am", false ),
                 ],

               ),
             ),
             Container(
               margin: EdgeInsets.only(left: 10,top: 5),
               child: Text(
                 "Evening",
                 style: TextStyle(
                     color : Colors.black,
                     fontSize: 18,
                     fontFamily: 'Roboto',
                     fontWeight: FontWeight.w700
                 ) ,
               ),
             ),
             Container(
               margin: EdgeInsets.only(left: 10,top: 1),
               child: GridView.count(
                 shrinkWrap: true ,
                 crossAxisCount: 3,
                 physics: NeverScrollableScrollPhysics(),
                 childAspectRatio: 2.5,
                 children: [
                   doctorTimingsE("8.30 pm", true ),
                   doctorTimingsE("9.00 pm", false ),
                   doctorTimingsE("9.30 pm", false ),
                   doctorTimingsE("10.00 pm", false ),
                   doctorTimingsE("10.30 pm", false ),
                   doctorTimingsE("11.00 pm", false ),
                 ],

               ),
             ),
             Container(
               alignment: Alignment.center,
               width: MediaQuery.of(context).size.width,
               margin: EdgeInsets.all(25),
               decoration: BoxDecoration(
                 color: Color(0xFF3F7F43),
                 borderRadius: BorderRadius.circular(5),
               ),
               child: Text(
                 "confirm",
                 style: TextStyle(
                     color : Colors.white,
                     fontSize: 15,
                     fontFamily: 'Roboto',
                     fontWeight: FontWeight.w700
                 ) ,
               ),

             ),
           ],
         )
      ),
    );
  }

  demoDates(String day, String date , bool isSelected ) {
    return isSelected ? Container(
      width: 70,
      margin: EdgeInsets.only(left: 15, top: 5),
      decoration: BoxDecoration(
        color: Color(0xFF3F7F43),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only( top: 10),
            child: Text(
              day,
              style: TextStyle(
                  color : Colors.white,
                  fontSize: 17,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(7),
            child: Text(
              date,
              style: TextStyle(
                  color : Colors.white,
                  fontSize: 13,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500
              ),
            ),
          ),

        ],
      ),
    ) :  Container(
          width: 70,
          margin: EdgeInsets.only(left: 15, top: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only( top: 10),
                child: Text(
                  day,
                  style: TextStyle(
                      color : Colors.black,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(7),
                child: Text(
                  date,
                  style: TextStyle(
                      color : Colors.black,
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),

            ],
          ),
        );
  }


  doctorTimings(String time, bool isSelected) {
    return isSelected ? Container(
      margin: EdgeInsets.only(left: 10,top: 5, right: 10),
      decoration: BoxDecoration(
        color: Color(0xFF3F7F43),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.access_time,
              color: Colors.white,
              size : 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Text(
              time,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Roboto",
              ),
            ),
          )
        ],
      ),

    ) : Container(
      margin: EdgeInsets.only(left: 10,top: 5, right: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.access_time,
              color: Colors.black,
              size : 17,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Text(
              time,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Roboto",
              ),
            ),
          )
        ],
      ),
    );
  }


  doctorTimingsE(String time, bool isSelected) {
    return isSelected ? Container(
      margin: EdgeInsets.only(left: 10,top: 5, right: 10),
      decoration: BoxDecoration(
        color: Color(0xFF3F7F43),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.access_time,
              color: Colors.white,
              size : 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Text(
              time,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Roboto",
              ),
            ),
          )
        ],
      ),

    ) : Container(
      margin: EdgeInsets.only(left: 10,top: 5, right: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.access_time,
              color: Colors.black,
              size : 17,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Text(
              time,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Roboto",
              ),
            ),
          )
        ],
      ),
    );
  }
}


