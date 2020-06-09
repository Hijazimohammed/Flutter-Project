import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup/main.dart';
import 'package:flutter_login_signup/src/Widget/bezierContainer.dart';
import 'Widget/bezierContainer.dart';
import 'orderDetails.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  Widget _showDetail(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(

          children: [
            TextSpan(
              text: 'Orders',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),

          ]),
    );
  }







  Widget productDetailsWidget() {
    return  Column(
      children: <Widget>[
        _showDetail("Product Name"),
        _showDetail("Product Price "),
        _showDetail("Product Category"),
        _showDetail("Client Name"),
        _showDetail("City"),
      ],
    );
  }
  Widget cardd(Widget details() ){
    return Card(
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height:.1),
          details(),
          ButtonBar(
            children: <Widget>[

              FlatButton(
                child: const Text('Details'),
                onPressed: () { Navigator.push(
    context, MaterialPageRoute(builder: (context) => OrderDetailsPage()));
    },
              ),
            ],
          ),
        ],
      ),
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

                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: height * .1),
                    _title(),
                    SizedBox(
                      height: 30,
                    ),
                    cardd(productDetailsWidget),
                    SizedBox(
                      height: 10,
                    ),
                    cardd(productDetailsWidget),
                    SizedBox(height:10),
                    cardd(productDetailsWidget),
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
