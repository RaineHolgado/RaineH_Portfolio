import 'package:My_Portfolio/screens/portfolio/portfolio_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: 70.0,
      color: const Color(0xFF05182C),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Logo(),
          Row(
            children: [
              for (var item in navigationItems)
                NavigationBarItem(
                  onPressed: () {
                    print(item.position);
                    scrollController.animateTo(
                      item.position * screenHeight,
                      duration: Duration(milliseconds: 700),
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
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: InkWell(
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white60,
                    size: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Icon(
                  FontAwesomeIcons.github,
                  color: Colors.white60,
                  size: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Icon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.white60,
                  size: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
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

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    Key key,
    @required this.onPressed,
    @required this.text,
  }) : super(key: key);

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 650;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white60,
              // fontSize: isSmall ? 17 : 24,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
