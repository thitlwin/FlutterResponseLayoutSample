import 'package:flutter/material.dart';

typedef Null ItemSelectedCallback(int value);

class ListitemWidget extends StatefulWidget {
  final int count;
  final ItemSelectedCallback onItemSelected;

  const ListitemWidget(
      {Key? key, required this.count, required this.onItemSelected})
      : super(key: key);

  @override
  _ListitemWidgetState createState() => _ListitemWidgetState();
}

class _ListitemWidgetState extends State<ListitemWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: InkWell(
              onTap: () => widget.onItemSelected(index),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      index.toString(),
                      style: TextStyle(fontSize: 22.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
