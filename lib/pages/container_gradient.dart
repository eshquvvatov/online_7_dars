import 'package:flutter/material.dart';

class ContainerGradient extends StatefulWidget {
  const ContainerGradient({Key? key}) : super(key: key);

  @override
  _ContainerGradientState createState() => _ContainerGradientState();
}

class _ContainerGradientState extends State<ContainerGradient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("Container Decoration"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(fit: BoxFit.cover,alignment: Alignment.center,
                image:AssetImage("assets/images/Image_Cover.jpg"
                ),
              ),
            ),
            child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                end: Alignment.bottomCenter,

                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.2),
              ],

              )
            ),
            ),
          ),
        )
    );
  }
}
