import 'package:flutter/material.dart';

class Primary_treatment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Primary_treatmentState();
}

class _Primary_treatmentState extends State<Primary_treatment>{
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
              "Primary_treatment",
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