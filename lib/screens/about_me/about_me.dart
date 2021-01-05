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
      height: MediaQuery.of(context).size.height + 70,
      width: double.infinity,
      color: const Color(0xFF05182C),
      child: screenWidth > 950 ? _AboutMeDesktop() : _AboutMeMobile(),
    );
  }
}

class _AboutMeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "I discovered my passion for design when I was a sophomore in High School; It was then when it became clear what I wanted to do for a living. I pursued my career at the amazing Valencia College where I started my major in Print Design. A year later I took a begginer’s Web class, where I discovered the love for code. After that, I switched my major to Interactive Design and started the never-ending journey of becoming a web developer along with sharpening my eye for design.",
                style: TextStyle(color: Colors.white, fontSize: 18),
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
                        "Birthdate",
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
                          ": 09/16/1997",
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          ": 09770225257",
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
              border: Border.all(color: const Color(0xFF182A3D), width: 1.0)),
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
                      Text(
                        "Web Developer",
                        style: TextStyle(color: Colors.white),
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
                      Text(
                        "Mobile Developer",
                        style: TextStyle(color: Colors.white),
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
                ),
              ),
              Expanded(
                child: Container(
                  height: 130,
                ),
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
                              // RichText(text: text)
                            ],
                          ),
                          Text(
                            "Hello There!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "I discovered my passion for design when I was a sophomore in High School; It was then when it became clear what I wanted to do for a living. I pursued my career at the amazing Valencia College where I started my major in Print Design. A year later I took a begginer’s Web class, where I discovered the love for code. After that, I switched my major to Interactive Design and started the never-ending journey of becoming a web developer along with sharpening my eye for design.",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
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
                                "Birthdate",
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
                                  ": 09/16/1997",
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  ": 09770225257",
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
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF182A3D), width: 1.0)),
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
                      Text(
                        "Web Developer",
                        style: TextStyle(color: Colors.white),
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
                      Text(
                        "Mobile Developer",
                        style: TextStyle(color: Colors.white),
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
                ),
              ),
              Expanded(
                child: Container(
                  height: 130,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
