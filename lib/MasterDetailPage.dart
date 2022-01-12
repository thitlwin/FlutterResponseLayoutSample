import 'package:flutter/material.dart';
import 'package:responsive_layout/DetailPage.dart';
import 'package:responsive_layout/DetailWidget.dart';
import 'package:responsive_layout/ListItemWidget.dart';

class MasterDetailPage extends StatefulWidget {
  const MasterDetailPage({Key? key}) : super(key: key);

  @override
  _MasterDetailPageState createState() => _MasterDetailPageState();
}

class _MasterDetailPageState extends State<MasterDetailPage> {
  var isLargeScreen = true;
  var selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Master-Detail Page")),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (MediaQuery.of(context).size.width > 576) {
            isLargeScreen = true;
          } else
            isLargeScreen = false;
          return Row(
            children: [
              Expanded(
                child: ListitemWidget(
                  count: 100,
                  onItemSelected: (value) {
                    print("item click callback----");
                    if (isLargeScreen) {
                      selectedValue = value;
                      setState(() {});
                    } else {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return DetailPage(data: value);
                        },
                      ));
                    }
                  },
                ),
              ),
              isLargeScreen
                  ? Expanded(child: DetailWidget(data: selectedValue))
                  : Container()
            ],
          );
        },
      ),
    );
  }
}
