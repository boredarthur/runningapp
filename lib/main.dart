import 'package:flutter/material.dart';
import 'package:runningapp/icons/circles_icons.dart';
import 'package:runningapp/models/global.dart';

import 'UI/My Runs/my_runs_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Running App',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Running App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      color: grayColor,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
        child: new Scaffold(
          body: Stack(
            children: <Widget>[
              TabBarView(
                children: [
                  MyRunsPage(),
                  new Container(
                    color: grayColor,
                    ),
                  new Container(
                    color: Colors.lightGreen,
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(
                  Circles.circle,
                  size: 18.0,
                  ),
              ),
              Tab(
                icon: new Icon(
                  Circles.circle,
                  size: 18.0,
                  ),
              ),
              Tab(
                icon: new Icon(
                  Circles.circle,
                  size: 18.0,
                  ),
              )
            ],
            labelColor: primaryGreen,
            unselectedLabelColor: unselectedColor,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.transparent,
          ),
          backgroundColor: darkGrayColor,
        ),
        ),
        
      ),
    );
  }
}
