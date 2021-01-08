import 'package:My_Portfolio/common/scroll_behavior.dart';
import 'package:My_Portfolio/screens/about_me/about_me.dart';
import 'package:My_Portfolio/screens/download/download_cv.dart';
import 'package:My_Portfolio/screens/education/education.dart';
import 'package:My_Portfolio/screens/header/footer.dart';
import 'package:My_Portfolio/screens/header/header.dart';
import 'package:My_Portfolio/screens/portfolio/back_to_top_button.dart';
import 'package:My_Portfolio/screens/portfolio_view/portfolio.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:after_layout/after_layout.dart';

class PortfolioView extends StatefulWidget {
  @override
  _PortfolioViewState createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> with AfterLayoutMixin {
  double offset = 0;
  final homeKey = GlobalKey();
  final aboutMeKey = GlobalKey();
  final educationKey = GlobalKey();
  final skillsKey = GlobalKey();
  final experienceKey = GlobalKey();
  final blogKey = GlobalKey();
  List<NavigationItem> navigationItems = [];

  final ScrollController scrollController1 = ScrollController(
    initialScrollOffset: 0,
  );

  @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      navigationItems = [
        NavigationItem('Home', key: homeKey, position: 0),
        NavigationItem('About', key: aboutMeKey, position: 1),
        NavigationItem('Resume', key: educationKey, position: 2),
        NavigationItem('Portfolio', key: experienceKey, position: 3),
        // NavigationItem('Portfolio', key: experienceKey, position: 3),
        // NavigationItem('Contact', key: experienceKey, position: 3),

        // NavigationItem('AboutMe', key: aboutMeKey, position: 1),
        // NavigationItem('Education', key: educationKey, position: 2),
        // NavigationItem('Experience', key: experienceKey, position: 3),
        // NavigationItem('Blog', key: blogKey),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    print(screenHeight);

    return MultiProvider(
      providers: [
        ProxyProvider0<List<NavigationItem>>(update: (_, __) {
          return navigationItems;
        }),
        ChangeNotifierProvider<ScrollController>(create: (_) {
          return scrollController1;
        }),
      ],
      child: Scaffold(
        body: NotificationListener<ScrollNotification>(
          onNotification: updateOffsetAccordingToScroll,
          child: ScrollConfiguration(
            behavior: CustomScrollBehavior(),
            child: Stack(
              children: [
                Positioned(
                  top: -.25 * offset,
                  child: Stack(
                    children: [
                      FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: 'https://j.gifs.com/jZolGR.gif',
                        height: screenHeight,
                        width: screenWidth,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: screenHeight,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -.25 * offset,
                  child: SizedBox(
                    height: screenHeight,
                    width: screenWidth,
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Raine Dale Holgado',
                            textAlign: TextAlign.center,
                            // style: GoogleFonts.vastShadow(
                            // style: GoogleFonts.rokkitt(
                            // style: GoogleFonts.carterOne(
                            style: GoogleFonts.vastShadow(
                                fontSize: screenWidth > 950 ? 70 : 42,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          // SizedBox(height: 20),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              // SizedBox(width: 20.0, height: 100.0),
                              Text(
                                "I'm a",
                                style: GoogleFonts.secularOne(
                                  fontSize: 30,
                                  color: Colors.white70,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              SizedBox(
                                child: TypewriterAnimatedTextKit(
                                  speed: Duration(milliseconds: 100),
                                  onTap: () {
                                    print("Tap Event");
                                  },
                                  text: [
                                    "Developer",
                                    "Designer",
                                    "Contributor",
                                  ],
                                  textStyle: GoogleFonts.secularOne(
                                    color: Colors.blue[600],
                                    fontSize: 30,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              )
                            ],
                          ),
                          // Text(
                          //   'Im a Developer',
                          //   style: TextStyle(backgroundColor: Colors.white),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  controller: scrollController1,
                  child: Column(
                    children: [
                      SizedBox(
                        key: homeKey,
                        height: screenHeight - 70,
                      ),
                      StickyHeader(
                          header: Header(),
                          content: Column(
                            children: [
                              AboutMe(key: aboutMeKey),
                              Education(key: educationKey),
                              DownloadCV(),
                              Portfolio(key: experienceKey),
                              FooterWaveWidget()
                            ],
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: BackToTopButton(),
      ),
    );
  }

  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    print("Got Called = " + scrollNotification.metrics.pixels.toString());
    setState(() {
      offset = scrollNotification.metrics.pixels;
    });
    return true;
  }
}

class NavigationItem {
  final String text;
  final GlobalKey key;
  final int position;
  NavigationItem(
    this.text, {
    @required this.key,
    @required this.position,
  });

  // double get offsetPos => _getPosition(key, position);
}

// double _getPosition(GlobalKey key, double positionOff) {
//   final RenderBox renderBox = key.currentContext.findRenderObject();
//   final position = renderBox.localToGlobal(Offset.zero);
//   final scrollOffset = position.dy + positionOff;
//   return scrollOffset;
// }
