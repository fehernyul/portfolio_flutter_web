import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderView(),
            Container(
              color: Colors.blue,
              height: height,
              width: width,
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 864, // 1080 * 0.8 -> https://www.udemy.com/course/flutter-web-create-a-responsive-sleek-developer-portfolio/learn/lecture/19909580?start=264#notes
      width: 1507, // 1980 * 0.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I\'m a Mobile',
                    style: GoogleFonts.montserrat(fontSize: 60),
                  ),
                  Text(
                    'Developer < / >',
                    style: GoogleFonts.montserrat(fontSize: 60),
                  ),
                  SizedBox(height: 37),
                  Text(
                    'I have 2 years of experience in mobile development in building beautiful apps in Android and iOS',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 40),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    color: Colors.redAccent,
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
                      child: Text('Contact me', style: TextStyle(fontSize: 24, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            FlutterLogo(size: 300)
          ],
        ),
      ),
    );
  }
}
