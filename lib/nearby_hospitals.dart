import 'package:flutter/material.dart';

class NearbyHospitals extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NearbyHospitalsState();
}

class _NearbyHospitalsState extends State<NearbyHospitals>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Center(
          child: Text(
              "NearBy Hospital ",
              style: TextStyle(
                color: Colors.green,
                //backgroundColor: Colors.white,
              )
          ),
        ),
      ),
     // backgroundColor: Theme.of(context).primaryColor ,

    );
  }

}