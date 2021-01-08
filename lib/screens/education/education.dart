import 'package:My_Portfolio/common/constant.dart';
import 'package:My_Portfolio/screens/education/experience.dart';
import 'package:My_Portfolio/screens/education/organizations.dart';
import 'package:My_Portfolio/screens/education/skills.dart';
import 'package:My_Portfolio/screens/education/softskills_and_language.dart';
import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({
    Key key,
  }) : super(key: key);
  static const title = 'Education';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20),
      height: 2350,
      // height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: const Color(0xFF05182C),
      // color: Colors.blueGrey,
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
                        screenWidth > 950
                            ? Expanded(
                                flex: 1,
                                child: Container(
                                  height: 2350,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        width: 1.0,
                                        color: const Color(0xFF182A3D),
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                  top: 16.0, left: 5),
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  left: BorderSide(
                                                    width: 1.0,
                                                    color:
                                                        const Color(0xFF182A3D),
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
                                                        fontWeight:
                                                            FontWeight.bold),
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
                              )
                            : SizedBox(),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth > 700 ? 30.0 : 15),
                            child: Column(
                              children: [
                                screenWidth < 950
                                    ? Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    screenWidth > 700 ? 10 : 5,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 16.0, left: 5),
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                        left: BorderSide(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xFF182A3D),
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Text(
                                                          '03',
                                                          style: TextStyle(
                                                            fontSize: 12.0,
                                                            color:
                                                                Colors.white60,
                                                          ),
                                                        ),
                                                        SizedBox(width: 3),
                                                        Text(
                                                          'Resume',
                                                          style: TextStyle(
                                                              fontSize: 17.0,
                                                              color: Colors
                                                                  .white60,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    : SizedBox(),
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
                                            "2014 - 2019",
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
                                ContainerDivider(),
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
                                SizedBox(height: 50),
                                Experience(),
                                SizedBox(height: 70),
                                Skills(),
                                SizedBox(height: 20),
                                SoftSkillAndLanguage(),
                                SizedBox(height: 50),
                                Organizations(),
                              ],
                            ),
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
