import 'package:flutter/material.dart';

class Eyes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EyesState();
}

class _EyesState extends State<Eyes>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white ,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Eyes Doctor'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  padding: const EdgeInsets.all(10.00),
                  children: <Widget> [
                    TopDr(
                      name: "Dr. Haney",
                      category: "MBBS from XYZ",
                      rating: "4.2",
                      image: "dr.1.png",
                    ),
                    TopDr(
                      name: "Dr. Zerin",
                      category: "Phd frrom XYZ",
                      rating: "4.4",
                      image: "dr2.png",
                    ),
                    TopDr(
                      name: "Dr. Mou",
                      category: "CXYZ",
                      rating: "4.9",
                      image: "dr.1.png",
                    ),
                    TopDr(
                      name: "Dr. Sam",
                      category: "XYZ",
                      rating: "4.7",
                      image: "dr4.png",
                    ),
                    TopDr(
                      name: "Dr. Sam",
                      category: "XYZ",
                      rating: "4.7",
                      image: "dr4.png",
                    ),
                    TopDr(
                      name: "Dr. Zerin",
                      category: "Phd frrom XYZ",
                      rating: "4.4",
                      image: "dr2.png",
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