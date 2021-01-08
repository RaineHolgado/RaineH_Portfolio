import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      color: const Color(0xFF030E1A),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 55,
            width: 190,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: FlatButton(
                color: Colors.blue[600],
                onPressed: () async {
                  const url =
                      'https://firebasestorage.googleapis.com/v0/b/chatapp-82c98.appspot.com/o/Raine%20Dale%20Holgado%20Resume.pdf?alt=media&token=d1efbcfd-e5b5-44d1-a2f7-bf6d4e1b61c2';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  "Download CV",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
