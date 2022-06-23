import 'package:flutter/material.dart';

class RegularAlert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegularAlertState();
}

class _RegularAlertState extends State<RegularAlert>{
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
              "RegularAlert",
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