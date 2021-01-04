import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key key,
  }) : super(key: key);
  static const title = 'AboutMe';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: const Color(0xFF0A1D30),
    );
  }
}
