import 'package:flutter/material.dart';

class Medi_Dr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Medi_DrState();
}

class _Medi_DrState extends State<Medi_Dr>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white ,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Medicine Doctor'),
        )
    );
  }

}