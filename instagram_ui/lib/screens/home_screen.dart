import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/widgets/feeds.dart';
import 'package:instagram_ui/widgets/stories.dart';
import '../constants/color_constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar(
      title: Container(
        child: SvgPicture.asset(
          'assets/logos/instagram_handwrite_logo.svg',
          height: 38,
        ),
      ),
      backgroundColor: mBackgroundColor,
      elevation: 0,
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/plus_icon.svg',
            height: 24,
          ),
          onPressed: () {
            // do something
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/heart_icon.svg',
            height: 24,
          ),
          onPressed: () {
            // do something
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/send_icon.svg',
            height: 24,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
      actionsIconTheme: IconThemeData(),
    );
    var mediaQuery = MediaQuery.of(context);

    var mediaQueryHeight = MediaQuery.of(context).size.height -
        appbar.preferredSize.height -
        mediaQuery.padding.top;

    return Scaffold(
      appBar: appbar,
      body: Container(
        color: mBackgroundColor,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: mediaQueryHeight * 0.15,
                child: Stories(),
              ),
              Divider(
                height: 0.1,
                thickness: 0.1,
                // indent: 20,
                // endIndent: 0,
                color: Colors.grey,
              ),
              Container(
                height: mediaQueryHeight * 0.85,
                child: Feeds(),
                margin: EdgeInsets.only(bottom: 24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
