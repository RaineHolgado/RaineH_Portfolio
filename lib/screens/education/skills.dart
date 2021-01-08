import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Skills",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Divider(
                height: 1,
                color: const Color(0xFF182A3D),
                // color: Colors.white,
              ),
            )
          ],
        ),
        SizedBox(height: 40),
        Container(
          width: double.infinity,
          child: Wrap(
            children: [
              SkillPercentage(
                backgroundColor: const Color(0xFF182A3D),
                percentageText: "90%",
                stepPercentage: 90,
                labelText: "Flutter/Dart",
              ),
              SkillPercentage(
                percentageText: "80%",
                stepPercentage: 80,
                labelText: "Firebase",
              ),
              SkillPercentage(
                backgroundColor: const Color(0xFF182A3D),
                percentageText: "70%",
                stepPercentage: 70,
                labelText: "Javascript",
              ),
              SkillPercentage(
                percentageText: "90%",
                stepPercentage: 90,
                labelText: "Git",
              ),
              SkillPercentage(
                percentageText: "70%",
                stepPercentage: 70,
                labelText: "Android",
              ),
              SkillPercentage(
                backgroundColor: const Color(0xFF182A3D),
                percentageText: "75%",
                stepPercentage: 75,
                labelText: "Rest API",
              ),
              SkillPercentage(
                percentageText: "80%",
                stepPercentage: 80,
                labelText: "Agile",
              ),
              SkillPercentage(
                backgroundColor: const Color(0xFF182A3D),
                percentageText: "75%",
                stepPercentage: 75,
                labelText: "Html",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SkillPercentage extends StatelessWidget {
  final String percentageText;
  final String labelText;
  final int stepPercentage;
  final Color backgroundColor;

  const SkillPercentage({
    Key key,
    this.percentageText,
    this.labelText,
    this.stepPercentage,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: backgroundColor,
      padding: EdgeInsets.symmetric(
          vertical: screenWidth > 415 ? 25.0 : 20,
          horizontal: screenWidth > 415 ? 40 : 25),
      child: Column(
        children: [
          CircularStepProgressIndicator(
            totalSteps: 100,
            currentStep: stepPercentage,
            stepSize: 8,
            selectedColor: Colors.tealAccent[200],
            // gradientColor: LinearGradient(
            //   colors: [Colors.greenAccent, Colors.amberAccent],
            // ),
            unselectedColor: Colors.blue,
            padding: 0,
            width: 100,
            height: 100,
            selectedStepSize: 8,
            child: Center(
              child: Text(
                percentageText,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white54),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            width: 110,
            child: Text(
              labelText,
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
