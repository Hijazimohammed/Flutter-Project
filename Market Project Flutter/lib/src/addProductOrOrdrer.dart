import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/addNewProduct.dart';
import 'package:flutter_login_signup/src/orders.dart';

import 'Widget/bezierContainer.dart';


class Screen1Page extends StatefulWidget {
  Screen1Page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Screen1PageState createState() => _Screen1PageState();
}

class _Screen1PageState extends State<Screen1Page> {




  Widget _submitButtonProduct() {

    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddProductPage())
          );

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
            'New Product',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        )
    );
  }

  Widget _submitButtonOrder() {

    return InkWell(
        onTap: () {
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => OrderPage())
          );

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
            'Orders',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        )
    );
  }



  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          children: [
            TextSpan(
              text: 'Market App',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),

          ]),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(height: height * .2),
                    _title(),
                    SizedBox(
                      height: 80,
                    ),
                    _submitButtonProduct(),
                    SizedBox(
                      height: 80,
                    ),
                    _submitButtonOrder(),
                    SizedBox(height: height * .14),
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
