import 'package:flutter/material.dart';

class ContainerDecaration extends StatefulWidget {
  const ContainerDecaration({Key? key}) : super(key: key);

  @override
  _ContainerDecarationState createState() => _ContainerDecarationState();
}

class _ContainerDecarationState extends State<ContainerDecaration> {
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
      ),
    )
    );
  }
}
