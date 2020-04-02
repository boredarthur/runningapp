import 'package:flutter/material.dart';
import 'package:runningapp/icons/main_icons_icons.dart';
import 'package:runningapp/models/global.dart';


class RunsCard extends StatelessWidget {
  final String title;
  RunsCard({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, left: 30, right: 20),
      height: 70,
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          Icon(
            MainIcons.run,
            size: 40,
            color: primaryGreen,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
          ),
          Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Evening Run",
                style: cardTitleStyle,
              ),
              Text(
                "Today",
                style: cardDateStyle,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    MainIcons.time,
                    color: primaryGreen,
                    size: 12,
                  ),
                  Text(
                    "41m 25s",
                    style: cardStatsStyle,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    MainIcons.calories,
                    color: primaryGreen,
                    size: 12,
                  ),
                  Text(
                    "312 kcal",
                    style: cardStatsStyle,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 35),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: cardTitleColor,
                  size: 15,
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                onPressed: () {},
              ),
            ]
          ),
        ],
      ),
    );
  }
  
}