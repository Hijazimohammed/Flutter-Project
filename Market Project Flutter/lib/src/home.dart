import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/product.dart';
import 'Widget/bezierContainer.dart';


class homePage extends StatefulWidget {
  homePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

_showCategory(){
  return  Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 120.0,

      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 20),
            width: 250.0,
            height: 150,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.blueAccent.shade100,
                
                ),
              child:Text("Woman",
                style: TextStyle(fontSize: 20, color: Colors.white),),
          ),
          Container(
            alignment: Alignment.center,
            width: 250.0,
            height: 150,

            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.redAccent.shade100,

            ),
            child:Text("Man",
              style: TextStyle(fontSize: 20, color: Colors.white),),
          ),
          Container(
            alignment: Alignment.center,
            width: 250.0,
            height: 150,

            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.greenAccent.shade100,

            ),
            child:Text("Kids",
              style: TextStyle(fontSize: 20, color: Colors.white),),
          ),

        ],
      ),
    );

}
Widget _titleCatg() {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(

        children: [
          TextSpan(
            text: 'Categories',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),

        ]),
  );
}
Widget _titleFetured() {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(

        children: [
          TextSpan(
            text: 'Featured',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),

        ]),
  );
}

  showFetured(){
  return  GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,

    crossAxisCount: 2,
    children: List.generate(100, (index) {
      return Center(
        child:Container(
          alignment: Alignment.center,
          width: 250.0,
          height: 150,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.redAccent.shade100,

          ),
          child:InkWell(
          onTap: () {
            Navigator.push(
                context,MaterialPageRoute(builder: (context) => ProductPage())
            );
      },



          child:Text("Man",
            style: TextStyle(fontSize: 20, color: Colors.white),),
        ),
        ),
      );
    }),
  );

}










  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -MediaQuery.of(context).size.height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 60),
                    _titleCatg(),
                    SizedBox(height: 20),
                    _showCategory(),
                    SizedBox(height: 20),
                    _titleFetured(),
                    SizedBox(height: 5),
                    showFetured()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
