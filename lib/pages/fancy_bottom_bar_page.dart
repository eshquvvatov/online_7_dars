import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class FansyBottomBarPage extends StatefulWidget {
  const FansyBottomBarPage({Key? key}) : super(key: key);

  @override
  _FansyBottomBarPageState createState() => _FansyBottomBarPageState();
}

class _FansyBottomBarPageState extends State<FansyBottomBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom navigation"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Home"),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.purpleAccent,
        textColor: Colors.red,
         activeIconColor: Colors.white,
        inactiveIconColor: Colors.purple,
        barBackgroundColor: Colors.grey,
        onTabChangedListener: (int position) {
          print(position);
        },
        tabs: [
          TabData(iconData:Icons.home_outlined, title:"Home"),
          TabData(iconData:Icons.home_outlined, title:"Home"),
          TabData(iconData:Icons.home_outlined, title:"Home"),
        ],
      ),
    );
  }
}
