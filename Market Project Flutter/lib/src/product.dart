import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widget/bezierContainer.dart';


class ProductPage extends StatefulWidget {
  ProductPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  _showPhoto() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 150.0,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.redAccent.shade100,

      ),

    );
  }

  Widget tiltePhoto() {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(

          children: [
            TextSpan(
              text: 'Muslim Form',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),

          ]),
    );
  }

  Widget price() {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(

          children: [
            TextSpan(
              text: '25\$',
              style: TextStyle(color: Colors.lightBlue, fontSize: 30),
            ),

          ]),
    );
  }

  Widget description() {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(

          children: [
            TextSpan(
              text: 'A wonderful serenity has taken',
              style: TextStyle(color: Colors.lightBlue, fontSize: 20),
            ),

          ]),
    );
  }


  Widget _submitButton() {

    return InkWell(
        onTap: () {


        },
        child:Container(

          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xfff79c4f), Color(0xfff79c4f)])),
          child: Text(
            'Buy Now',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        )
    );
  }





  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -MediaQuery
                  .of(context)
                  .size
                  .height * .15,
              right: -MediaQuery
                  .of(context)
                  .size
                  .width * .4,
              child: BezierContainer(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 70),
                    _showPhoto(),
                    SizedBox(height: 10),
                    tiltePhoto(),
                    SizedBox(height: 10),
                    price(),
                    SizedBox(height: 30),
                    description(),
                    SizedBox(height:250),
                    _submitButton()
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),

          ],
        ),
      ),
    );
  }


}