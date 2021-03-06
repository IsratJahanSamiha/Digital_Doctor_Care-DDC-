import 'package:ddcare_flutter_app/signUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home_page1.dart';

class LogIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LogInState();
}

class _LogInState extends State<LogIn>{
  var email;
  var password;
  /*
  register()async{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance ;
  final FirebaseUser user = (await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password)) ;
  }
  */
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white ,

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0.00, 90.0,0.0, 0.0),
                width: 60,
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/l2.PNG",
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Container(
                width: w,
                margin: const EdgeInsets.only(left: 20,top: 20,right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Assalamualaikum",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green[800]
                      ),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.lightGreen
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      //margin: EdgeInsets.only(left: 10,top: 10,right: 10 ),
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
                      width: w ,
                      child: Expanded(
                        flex : 10,
                        child: Container(
                          margin: EdgeInsets.only(left: 10 ,right: 10, top: 14),
                          child: TextField(
                           /* onChanged: (value){
                              setState(() {
                                email = value;
                              });
                            },*/
                           // maxLines: 1,
                            //autofocus: false ,
                            style: TextStyle(
                              color: Color(0xFF3F7F43),
                              fontSize: 15,
                            ) ,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Id/mail"
                            ),
                          ) ,
                        ),
                      ) ,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      //margin: EdgeInsets.only(left: 10,right: 10 ),
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
                      width: w ,
                      child: Expanded(
                        flex : 10,
                        child: Container(
                          margin: EdgeInsets.only(left: 10 ,right: 10, top: 14),
                          child: TextField(
                         /*   onChanged: (value){
                              setState(() {
                                password = value;
                              });
                            },*/
                            // maxLines: 1,
                            //autofocus: false ,
                            style: TextStyle(
                              color: Color(0xFF3F7F43),
                              fontSize: 15,
                            ) ,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password"
                            ),
                          ) ,
                        ),
                      ) ,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Text(
                          "Foreget Password",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.green[800]
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                   /* Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.5)
                          )
                        ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              //color: Colors.blue ,
                              width: 1.0 ,
                            ),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                               // color: Colors.blue ,
                                width: 1.0 ,
                              ),
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                      ),
                    )*/
                  ],
                ),

              ),
              Container(
               // margin: EdgeInsets.fromLTRB(0.00, 100.0,0.0, 0.0),
                width: w*.2,
                height: h*.04,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/signIn.jpg",
                        ),
                        fit: BoxFit.cover
                    )
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Center(
                  child: Container(
                    //color: Colors.green,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push( context , MaterialPageRoute(builder: (context) => HomePage1()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10.00) ,
                          child: Icon(
                            Icons.login_rounded,
                            semanticLabel: "login",
                            color: Colors.black ,
                          ),
                        ) ,
                      ),
                    ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push( context , MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Create New Account",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.lightGreen
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text(
                "Digital Doctor Care",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.green
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}