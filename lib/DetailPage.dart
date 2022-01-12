import 'package:flutter/material.dart';
import 'package:responsive_layout/DetailWidget.dart';

class DetailPage extends StatefulWidget {
  final int data;
  const DetailPage({Key? key, required this.data}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DetailWidget(data: widget.data),
    );
  }
}
