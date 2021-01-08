import 'package:My_Portfolio/common/constant.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key key,
  }) : super(key: key);
  static const title = 'AboutMe';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    print("screenWidth: $screenWidth");
    return Container(
      padding: EdgeInsets.only(top: 2),
      height: screenWidth > 950 ? 695 : 1213,
      width: double.infinity,
      color: const Color(0xFF05182C),
      child: screenWidth > 950 ? _AboutMeDesktop() : _AboutMeMobile(),
    );
  }
}

class _AboutMeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Column(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/profile_pic.jpg"),
                  fit: BoxFit.cover //https://picsum.photos/id/433/1000/1000
                  )),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 16.0, right: 5),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          width: 1.0,
                          color: const Color(0xFF182A3D),
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '02',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white60,
                          ),
                        ),
                        SizedBox(width: 3),
                        Text(
                          'About',
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "Hello There!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 267,
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "I became aware of my passion for programming for at a young age I have been engaging myself with computers. It was at those moments that I have decided what I aspired to do for a living. I pursued a degree of Computer Engineering at Silliman University to where I was able to expand my knowledge and capabilities about coding and programming. I have been taking up online classes and lessons of the said topics accordingly as well. I was hired as a junior software developer upon graduating and I am currently holding a mid-level software developer position specializing in Flutter.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth > 415 ? 17.5 : 16),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFF0A1D30),
                border: Border(
                  left: BorderSide(
                    width: 10.0,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fullname",
                        style: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Phone",
                        style: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Email",
                        style: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Address",
                        style: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ": Raine Dale B. Holgado",
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          ": 09770225707",
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          ": rainebayawa@gmail.com",
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          ": Dumaguete City, Negros Oriental, Philippines",
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            // border: Border.all(color: const Color(0xFF182A3D), width: 1.0),
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: const Color(0xFF182A3D),
              ),
              bottom: BorderSide(
                width: 1.0,
                color: const Color(0xFF182A3D),
              ),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: const Color(0xFF182A3D),
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.computer_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Web Developer",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Mobile Developer",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: const Color(0xFF182A3D),
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.insights,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(height: 15),
                          Text(
                            "UI/UX Designer",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.tune,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(height: 15),
                          Text(
                            "QA Tester",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AboutMeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 560,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 560,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/profile_pic.jpg"),
                          fit: BoxFit
                              .cover //https://picsum.photos/id/433/1000/1000
                          )),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 600,
                      // color: Colors.amber,
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 16.0, right: 5),
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      width: 1.0,
                                      color: const Color(0xFF182A3D),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '02',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white60,
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      'About',
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
                          SizedBox(height: 10),
                          Text(
                            "Hello There!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "I became aware of my passion for programming for at a young age I have been engaging myself with computers. It was at those moments that I have decided what I aspired to do for a living. I pursued a degree of Computer Engineering at Silliman University to where I was able to expand my knowledge and capabilities about coding and programming. I have been taking up online classes and lessons of the said topics accordingly as well. I was hired as a junior software developer upon graduating and I am currently holding a mid-level software developer position specializing in Flutter.",
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.5),
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
                    Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF0A1D30),
                        border: Border(
                          left: BorderSide(
                            width: 10.0,
                            color: Colors.indigo[800],
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fullname",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Phone",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Email",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Address",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ": Raine Dale B. Holgado",
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  ": 09770225707",
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  ": rainebayawa@gmail.com",
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  ": Dumaguete City, Negros Oriental, Philippines",
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        ContainerDivider(),
        Container(
          width: 1200,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 1.0,
                        color: const Color(0xFF182A3D),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.computer_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Web Developer",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 1.0,
                        color: const Color(0xFF182A3D),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Mobile Developer",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 1.0,
                        color: const Color(0xFF182A3D),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.insights,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "UI/UX Designer",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "QA Tester",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
              ContainerDivider(),

      ],
    );
  }
}
