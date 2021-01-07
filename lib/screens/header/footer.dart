import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class FooterWaveWidget extends StatefulWidget {
  @override
  _FooterWaveWidgetState createState() => _FooterWaveWidgetState();
}

class _FooterWaveWidgetState extends State<FooterWaveWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      color: const Color(0xFF05182C),
      child: Stack(
        children: [
          Container(
            height: 140,
            width: double.infinity,
            child: WaveWidget(
              config: CustomConfig(
                colors: [
                  // Color(0xFF254990),
                  // Color(0xFF2D55A7),
                  // Color(0xFF0B549E),
                  // Colors.lightBlue[600],

                  // Color(0xFF2D55A7),
                  Colors.lightBlue[600],
                  Colors.lightBlue[800],
                  Colors.lightBlue[700],
                  Color(0xFF0B549E),
                ],
                durations: [35000, 19440, 10800, 8000],
                heightPercentages: [0.20, 0.23, 0.25, 0.30],
              ),
              // backgroundColor: Colors.transparent,
              backgroundColor: const Color(0xFF05182C),
              // backgroundImage: backgroundImage,
              size: Size(double.infinity, double.infinity),
              waveAmplitude: 0,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 140,
              width: 1200,
              padding: EdgeInsets.only(top: 40, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "© Raine 2021",
                    style: TextStyle(color: Colors.white54),
                  ),
                  Row(
                    children: [
                      Text(
                        "Facebook",
                        style: TextStyle(color: Colors.white54),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "StackOverflow",
                        style: TextStyle(color: Colors.white54),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Linkedin",
                        style: TextStyle(color: Colors.white54),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
