import 'package:My_Portfolio/common/constant.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({
    Key key,
  }) : super(key: key);
  static const title = 'Portfolio';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
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
                        screenWidth > 950
                            ? Expanded(
                                flex: 1,
                                child: Container(
                                  height: 500,
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
                                                    '04',
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.white60,
                                                    ),
                                                  ),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Portfolio',
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
                                              'My Works',
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
                                                          '04',
                                                          style: TextStyle(
                                                            fontSize: 12.0,
                                                            color:
                                                                Colors.white60,
                                                          ),
                                                        ),
                                                        SizedBox(width: 3),
                                                        Text(
                                                          'Portfolio',
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
                                      "My Works",
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
