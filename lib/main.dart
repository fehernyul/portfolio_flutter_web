import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/desktop/desktop_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gabor Szabo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: DesktopView(),
    );
  }
}
