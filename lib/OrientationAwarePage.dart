import 'package:flutter/material.dart';

class OrientationAwarePage extends StatefulWidget {
  const OrientationAwarePage({Key? key}) : super(key: key);

  @override
  _OrientationAwarePageState createState() => _OrientationAwarePageState();
}

class _OrientationAwarePageState extends State<OrientationAwarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation Aware Screen"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          print("Orientation = $orientation");
          return (orientation == Orientation.portrait)
              ? _buildPortraitWidget()
              : _buildLandscapeWidget();
        },
      ),
    );
  }

  _buildPortraitWidget() {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Colors.red,
        )),
        Expanded(
            child: Container(
          color: Colors.green,
        )),
        Expanded(
            child: Container(
          color: Colors.blue,
        ))
      ],
    );
  }

  _buildLandscapeWidget() {
    return Row(children: [
      Expanded(
          child: Container(
        color: Colors.blue,
      )),
      Expanded(
          child: Container(
        color: Colors.green,
      )),
      Expanded(
          child: Container(
        color: Colors.red,
      ))
    ]);
  }
}
