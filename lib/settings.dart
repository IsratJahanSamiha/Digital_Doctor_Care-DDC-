import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends State<Settings>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Theme.of(context).primaryColor ,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        title: Center(
          child: Text(
              "Settings",
              style: TextStyle(
                color: Colors.white,
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
            color: Colors.white ,
          ),
        ),
      ),
      body: Container(
        //color: Colors.green,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Israt Jahan Samiha"),
              subtitle: Text("patient"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.security_outlined),
              title: Text("Password"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("jahansamiha3@gmail.com "),
              subtitle: Text("mail"),
              trailing: Icon(Icons.edit),
            ),

          ],
        ),
      ),
    );
  }

}