import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({
    Key key,
  }) : super(key: key);
  static const title = 'Education';


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: Colors.orange,
    );
  }
}