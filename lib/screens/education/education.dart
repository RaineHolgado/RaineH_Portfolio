import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Education extends StatelessWidget {
  const Education({
    Key key,
  }) : super(key: key);
  static const title = 'Education';

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20),
      height: 1400,
      // height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: const Color(0xFF05182C),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: 1200,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 1400,
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 1.0,
                                  color: const Color(0xFF182A3D),
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 16.0, left: 5),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            left: BorderSide(
                                              width: 1.0,
                                              color: const Color(0xFF182A3D),
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              '03',
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.white60,
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'Resume',
                                              style: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Colors.white60,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Education',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Experience',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Skills',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Organizations',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white60,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Column(children: [
                              SizedBox(height: 50),
                              Row(
                                children: [
                                  Text(
                                    "Education",
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
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.blue[700],
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          "2014 - 2018",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white54),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Bachelor of Science in Computer Engineering",
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Silliman University",
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
                              Divider(
                                height: 1,
                                color: const Color(0xFF182A3D),
                                // color: Colors.white,
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.blue[700],
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          "2010 - 2014",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white54),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Secondary",
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Negros Oriental High School",
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
                              SizedBox(height: 40),
                              Row(
                                children: [
                                  Text(
                                    "Experience",
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
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.blue[700],
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          "2018 - Present",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white54),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Software Flutter Developer",
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "OutSource Coders (September 2018 - Present)",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white54,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 5),
                                        // Text(
                                        //   "• Developed Contract Tracer",
                                        //   style: TextStyle(
                                        //     fontSize: 14,
                                        //     color: Colors.white54,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Divider(
                                height: 1,
                                color: const Color(0xFF182A3D),
                                // color: Colors.white,
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.blue[700],
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          "2016 - 2017",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white54),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "Instrumentation Assistant",
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "On the Job Training - Energy Developement Corporation",
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
                              SizedBox(height: 70),
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
                                  // crossAxisAlignment: WrapCrossAlignment.end,
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
                                      labelText: "Html 5",
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ],
      ),
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
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
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
          Text(
            labelText,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
