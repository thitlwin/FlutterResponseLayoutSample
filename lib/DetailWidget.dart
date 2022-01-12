import 'package:flutter/material.dart';

class DetailWidget extends StatefulWidget {
  final int data;
  const DetailWidget({Key? key, required this.data}) : super(key: key);

  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.data.toString(),
              style: TextStyle(fontSize: 36.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
