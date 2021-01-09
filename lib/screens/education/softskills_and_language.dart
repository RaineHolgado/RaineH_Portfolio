import 'package:flutter/material.dart';

class SoftSkillAndLanguage extends StatelessWidget {
  const SoftSkillAndLanguage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 345,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Soft Skills",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  LinearPercentage(
                    labelTExt: "Problem Solving",
                    labelPercent: "100%",
                    startPercent: 10,
                    endPercent: 0,
                  ),
                  SizedBox(height: 35),
                  LinearPercentage(
                    labelTExt: "Creativity",
                    labelPercent: "90%",
                    startPercent: 9,
                    endPercent: 1,
                  ),
                  SizedBox(height: 35),
                  LinearPercentage(
                    labelTExt: "Time Management",
                    labelPercent: "80%",
                    startPercent: 8,
                    endPercent: 2,
                  ),
                  SizedBox(height: 35),
                  LinearPercentage(
                    labelTExt: "Team Work",
                    labelPercent: "90%",
                    startPercent: 9,
                    endPercent: 1,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Language",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 25),
                  LinearPercentage(
                    labelTExt: "English",
                    labelPercent: "100%",
                    startPercent: 10,
                    endPercent: 0,
                  ),
                  SizedBox(height: 35),
                  LinearPercentage(
                    labelTExt: "Tagalog",
                    labelPercent: "100%",
                    startPercent: 10,
                    endPercent: 0,
                  ),
                  // SizedBox(height: 35),
                  // LinearPercentage(
                  //   labelTExt: "Korean",
                  //   labelPercent: "70%",
                  //   startPercent: 7,
                  //   endPercent: 3,
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LinearPercentage extends StatelessWidget {
  final String labelTExt;
  final String labelPercent;
  final int startPercent;
  final int endPercent;

  const LinearPercentage(
      {Key key,
      this.labelTExt,
      this.labelPercent,
      this.startPercent,
      this.endPercent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              labelTExt,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            screenWidth > 415
                ? Text(
                    labelPercent,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                : SizedBox()
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 6,
          child: Row(
            children: [
              Expanded(
                flex: startPercent,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: endPercent,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
