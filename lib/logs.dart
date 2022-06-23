import 'package:flutter/material.dart';

class Logs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LogsState();
}

class _LogsState extends State<Logs>{
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
              "Logs",
              style: TextStyle(
                color: Colors.green,
                //backgroundColor: Colors.white,
              )
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.green ,
          ),
        ),
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }

}