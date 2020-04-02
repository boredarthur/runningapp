import 'package:flutter/material.dart';
import 'package:runningapp/models/global.dart';
import 'package:runningapp/models/widgets/runsCard.dart';

class MyRunsPage extends StatefulWidget {
  MyRunsPage({Key key, this.title}) : super(key: key);

  
  final String title;

  @override
  _MyRunsPageState createState() => _MyRunsPageState();
}

class _MyRunsPageState extends State<MyRunsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 70),
      color: grayColor,
      child: ListView(
        children: getList(),
      ),
    );
  }

  List<Widget> getList() {
      List<RunsCard> list = [];
      for(int i = 0; i < 10; i++){
        list.add(RunsCard());
      }
      return list;
  }
}