import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/addNewProduct.dart';
import 'package:flutter_login_signup/src/addProductOrOrdrer.dart';
import 'package:flutter_login_signup/src/home.dart';
import 'package:flutter_login_signup/src/orders.dart';
import 'package:flutter_login_signup/src/product.dart';
import 'package:google_fonts/google_fonts.dart';
import 'src/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Market App',
      theme: ThemeData(
         primarySwatch: Colors.blue,

      ),
      debugShowCheckedModeBanner: true,
      home:LoginPage()
    );
}

}
