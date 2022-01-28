import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class Speed_Deal extends StatefulWidget {
  const Speed_Deal({Key? key}) : super(key: key);
static String id ="speed_deal";
  @override
  _Speed_DealState createState() => _Speed_DealState();
}

class _Speed_DealState extends State<Speed_Deal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body :Center(
         child: Text("Spedd Dial"),
       ),
      floatingActionButton: SpeedDial(
        animatedIcon:AnimatedIcons.menu_close ,
        animatedIconTheme: IconThemeData(size: 20),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: ()=>print("opening dial"),
        onClose: ()=>print("dial close"),
      ),

    );
  }
}
