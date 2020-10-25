import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        var onPressed = () => print('click');

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 100,
          width: 1507,
          child: Row(
            children: [
              FlutterLogo(),
              Spacer(),
              for (var item in kNavigationItems) NavigationBarItem(text: item.text, onPressed: onPressed),

//              NavigationBarItem(text: text, onPressed: onPressed),
            ],
          ),
        );
      },
    );
  }
}

class NavigationItem {
  final String text;
  final Icon icon;

  NavigationItem(this.text, {this.icon});
}

final kNavigationItems = [
  NavigationItem('Projects'),
  NavigationItem('Skills'),
  NavigationItem('About Me'),
  NavigationItem('Blog'),
];

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 64),
      child: InkWell(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
        mouseCursor: MaterialStateMouseCursor.clickable,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onPressed,
      ),
    );
  }
}
