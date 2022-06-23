import 'package:flutter/material.dart';

class Ambulance extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AmbulanceState();
}

class _AmbulanceState extends State<Ambulance>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Theme.of(context).primaryColor ,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Center(
          child: Text(
              "Ambulance",
              style: TextStyle(
                color: Colors.green,
                //backgroundColor: Colors.white,
              )
          ),
        ),
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }

}