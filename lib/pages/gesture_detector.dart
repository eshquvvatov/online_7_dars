import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.center,
              child: MaterialButton(
                onPressed: () {},
                child: Text("Sign In"),
                textColor: Colors.white,
                color: Colors.blueAccent,
                minWidth: 200,
                height: 50,
                shape: StadiumBorder(),
              ),
            ),
          ),

          Container(color: Colors.red,child: GestureDetector(
            onTap: () {},
            child: Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                "Click Me",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          ),),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(color:Colors.red,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  print("ok");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child: Text("click"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
