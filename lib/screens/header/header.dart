import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:My_Portfolio/screens/portfolio/portfolio_view.dart';

class Header extends StatefulWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 70.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: const Color(0xFF05182C),
        border: Border(
          bottom: BorderSide(
            width: 2.0,
            color: const Color(0xFF182A3D),
          ),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: screenWidth > 950
                    ? [
                        Logo(),
                        Row(
                          children: [
                            for (var item in navigationItems)
                              NavigationBarItem(
                                position: item.position,
                                scrollController: scrollController,
                                onPressed: () {
                                  print(item.position);
                                  scrollController.animateTo(
                                    positionToanimateTo(
                                        position: item.position,
                                        context: context,
                                        controller: scrollController),
                                    duration: Duration(milliseconds: 800),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                text: item.text,
                              ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13),
                              child: InkWell(
                                mouseCursor: MaterialStateMouseCursor.clickable,
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: () async {
                                  if (await canLaunch(
                                      "https://www.facebook.com/DM.kennkoki/")) {
                                    await launch(
                                        "https://www.facebook.com/DM.kennkoki/");
                                  } else {
                                    print("Could not launch Facebook");
                                  }
                                },
                                child: Icon(
                                  FontAwesomeIcons.facebookF,
                                  color: Colors.white60,
                                  size: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13),
                              child: InkWell(
                                mouseCursor: MaterialStateMouseCursor.clickable,
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: () async {
                                  if (await canLaunch(
                                      "http://stackoverflow.com/users/12789200/reign")) {
                                    await launch(
                                        "http://stackoverflow.com/users/12789200/reign");
                                  } else {
                                    print("Could not launch StackOverflow");
                                  }
                                },
                                child: Icon(
                                  FontAwesomeIcons.stackOverflow,
                                  color: Colors.white60,
                                  size: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13),
                              child: InkWell(
                                mouseCursor: MaterialStateMouseCursor.clickable,
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: () async {
                                  if (await canLaunch(
                                      "https://www.linkedin.com/in/raine-dale-holgado-54b1431a3/")) {
                                    await launch(
                                        "https://www.linkedin.com/in/raine-dale-holgado-54b1431a3/");
                                  } else {
                                    print("Could not launch LinkedIn");
                                  }
                                },
                                child: Icon(
                                  FontAwesomeIcons.linkedin,
                                  color: Colors.white60,
                                  size: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]
                    : [
                        Logo(),
                        Icon(
                          Icons.menu,
                          color: Colors.white60,
                          size: 25,
                        )
                      ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double positionToanimateTo(
      {int position, BuildContext context, ScrollController controller}) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    switch (position) {
      case 0:
        return 0;
        break;
      case 1:
        return 1 * screenHeight - 70;
        break;
      case 2:
        if (screenWidth > 950) {
          return 695 + screenHeight - 70; //desktop
        } else
          return 1213 + screenHeight; //mobile
        break;
      case 3:
        return controller.position.maxScrollExtent;
        break;
      default:
        return position * screenHeight;
    }
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: const Color(0xFF1E87F0), shape: BoxShape.circle),
          ),
        ),
        RichText(
          text: TextSpan(
              text: " R",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "aine",
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                )
              ]),
        ),
      ],
    );
  }
}

class NavigationBarItem extends StatefulWidget {
  const NavigationBarItem({
    Key key,
    @required this.onPressed,
    @required this.text,
    @required this.scrollController,
    this.position,
  }) : super(key: key);

  final void Function() onPressed;
  final String text;
  final ScrollController scrollController;
  final int position;

  @override
  _NavigationBarItemState createState() => _NavigationBarItemState();
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  Color _color;
  // double _scrollController;

  // @override
  // void initState() {
  //   _scrollController = widget.scrollController;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    _getColorNavigate() {
      print("CAlled ${widget.scrollController}");
      switch (widget.position) {
        case 0:
          if (widget.scrollController.position.pixels >= 0 &&
              widget.scrollController.position.pixels <= (screenHeight - 70.99))
            return Colors.white;
          return Colors.white60;
          break;
        case 1:
          if (widget.scrollController.position.pixels >= (screenHeight - 70) &&
              widget.scrollController.position.pixels <=
                  (screenHeight + 695 - 70.99)) return Colors.white;
          return Colors.white60;
          break;
        case 2:
          if (widget.scrollController.position.pixels >=
                  (screenHeight + 695 - 70) &&
              widget.scrollController.position.pixels <= (screenHeight + 2495))
            return Colors.white;
          return Colors.white60;
          break;
        case 3:
          if (widget.scrollController.position.pixels >=
                  (screenHeight + 2495) &&
              widget.scrollController.position.pixels <=
                  widget.scrollController.position.maxScrollExtent)
            return Colors.white;

          return Colors.white60;

          break;
        default:
          return Colors.white60;
      }

      // if (widget.scrollController >= (screenHeight - 70) &&
      //     widget.scrollController <= (screenHeight + 695)) return Colors.white;
      // // if (_scrollController >= 0 && _scrollController <= (screenHeight - 70))
      // //   return Colors.white;
      // // if (_scrollController >= 0 && _scrollController <= (screenHeight - 70))
      // // return Colors.white;
      // return Colors.white60;
      // //  if (controllerHeight >= startPosition &&
      // //     controllerHeight <= endPostion) {
      // //   return Colors.white;
      // // } else {
      // //   return Colors.white60;
      // // }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: widget.onPressed,
        child: Text(
          widget.text,
          style: TextStyle(
              color: _getColorNavigate(),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
