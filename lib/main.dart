import 'package:flutter/material.dart';
import 'package:online_7_dars/pages/container_decoration.dart';
import 'package:online_7_dars/pages/fancy_bottom_bar_page.dart';
import 'package:online_7_dars/pages/home_page.dart';
import 'package:online_7_dars/pages/navigatior_rail_page.dart';
import 'package:online_7_dars/pages/speed_deal_page.dart';
import 'package:online_7_dars/pages/text_from_field.dart';
void main(){
  runApp(MyApp());
}class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      home: TextFromField(),
    );
  }
}
