import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BackToTopButton extends StatelessWidget {
  const BackToTopButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final scrollController = context.watch<ScrollController>();
    if (scrollController.isOffsetZero) return SizedBox();
    return FloatingActionButton(
      mini: screenWidth > 950 ? false : true,
      backgroundColor: Colors.blueGrey[700],
      child: Icon(Icons.arrow_upward),
      onPressed: () {
        scrollController.animateTo(
          0,
          duration: Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}

extension on ScrollController {
  bool get isOffsetZero {
    return this.offset == 0;
  }
}
