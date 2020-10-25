import 'package:flutter/material.dart';

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 864, // 1080 * 0.8 -> https://www.udemy.com/course/flutter-web-create-a-responsive-sleek-developer-portfolio/learn/lecture/19909580?start=264#notes
              width: 1507, // 1980 * 0.8,
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('I\'m a Mobile '),
                      Text('Developer < / > '),
                      Text('I have 2 years of experience in mobile development in building beautiful apps in Androis and iOS\'m a Mobile '),
                      FlatButton(
                        onPressed: () {},
                        child: Text('Contact me'),
                      ),
                    ],
                  ),
                  FlutterLogo(size: 300)
                ],
              ),
            ),
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
