import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience({
    Key key,
  }) : super(key: key);
  static const title = 'Experience';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: Colors.purple,
    );
  }
}
