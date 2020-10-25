import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio_flutter_web/utils/hover_extensions.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return HeaderMobileView();
        return Container(
          height: 864, // 1080 * 0.8 -> https://www.udemy.com/course/flutter-web-create-a-responsive-sleek-developer-portfolio/learn/lecture/19909580?start=264#notes
          width: 1507, // 1980 * 0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: HeaderBody(),
                ),
                FlutterLogo(size: 300)
              ],
            ),
          ),
        );
      },
    );
  }
}

class HeaderBody extends StatelessWidget {
  final bool isMobile;
  const HeaderBody({
    Key key,
    this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'I\'m a Mobile',
              style: GoogleFonts.montserrat(fontSize: 60),
            )),
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Developer < / >',
              style: GoogleFonts.montserrat(fontSize: 60),
            )),
        SizedBox(height: isMobile ?? false ? 20 : 37),
        AutoSizeText(
          'I have 2 years of experience in mobile development in building beautiful apps in Android and iOS',
          style: TextStyle(fontSize: 24),
          maxLines: 3,
        ),
        SizedBox(height: isMobile ?? false ? 20 : 40),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          color: Colors.redAccent,
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: isMobile ?? false ? 10 : 17,
              horizontal: isMobile ?? false ? 8 : 15,
            ),
            child: Text(
              'Contact me',
              style: TextStyle(fontSize: isMobile ?? false ? 20 : 24, color: Colors.white),
            ),
          ),
        ).showCursorOnHover,
      ],
    );
  }
}

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.9,
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            FlutterLogo(size: height * 0.3),
            Spacer(),
            HeaderBody(
              isMobile: true,
            ),
          ],
        ),
      ),
    );
  }
}
