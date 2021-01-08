import 'package:My_Portfolio/common/constant.dart';
import 'package:flutter/material.dart';

class Organizations extends StatelessWidget {
  const Organizations({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Text(
            "Organizations",
            style: TextStyle(
                fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10),
          Expanded(
            child: ContainerDivider(),
          )
        ],
      ),
      SizedBox(height: 20),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration:
                BoxDecoration(color: Colors.blue[700], shape: BoxShape.circle),
            child: Icon(
              Icons.calendar_today,
              color: Colors.white,
              size: 20,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  "2019 - Present",
                  style: TextStyle(fontSize: 16, color: Colors.white54),
                ),
                SizedBox(height: 10),
                Text(
                  "Google Developer Group Philippines",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "GDG Droids - Member",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
      SizedBox(height: 20),
      ContainerDivider(),
      SizedBox(height: 20),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration:
                BoxDecoration(color: Colors.blue[700], shape: BoxShape.circle),
            child: Icon(
              Icons.calendar_today,
              color: Colors.white,
              size: 20,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  "2014 - 2019",
                  style: TextStyle(fontSize: 16, color: Colors.white54),
                ),
                SizedBox(height: 10),
                Text(
                  "Philippine Institute of Computer Engineering Students",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "PHICES - Representative",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    ]);
  }
}
