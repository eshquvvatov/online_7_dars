import 'package:flutter/material.dart';
import 'package:online_7_dars/pages/container_gradient.dart';
import 'package:online_7_dars/pages/text_from_field.dart';

import 'container_decoration.dart';
import 'gesture_detector.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContainerDecaration()));
              },
              minWidth: 250,
              height: 50,
              splashColor: Colors.red,
              child: const Text(
                "Container Decaration",
                style: TextStyle(fontSize: 20, color: Colors.white,),
              ),
              color: Colors.blue,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.red, width: 2)),
            ),
            SizedBox(
              height: 20,),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TextFromField()));
              },
              minWidth: 250,
              height: 50,
              splashColor: Colors.red,
              child: const Text(
                "Text Form Field",
                style: TextStyle(fontSize: 20, color: Colors.white,),
              ),
              color: Colors.blue,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.red, width: 2)),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContainerGradient()));
              },
              minWidth: 250,
              height: 50,
              splashColor: Colors.red,
              child: const Text(
                "Container Gradient",
                style: TextStyle(fontSize: 20, color: Colors.white,),
              ),
              color: Colors.blue,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.red, width: 2)),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Buttons()));
              },
              minWidth: 250,
              height: 50,
              splashColor: Colors.red,
              child: const Text(
                "Buttons",
                style: TextStyle(fontSize: 20, color: Colors.white,),
              ),
              color: Colors.blue,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.red, width: 2)),
            ),

          ],
        ),
      ),
    );
  }
}
