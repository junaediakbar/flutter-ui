import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/color_constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Juned',
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: kGreyColor,
                    ),
                  ),
                  Text(
                    'Discover Latest Book',
                    style: GoogleFonts.openSans(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: kBlackColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 39,
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 18,
              ),
              decoration: BoxDecoration(
                color: kLightGreyColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: <Widget>[
                  TextField(
                    maxLengthEnforced: true,
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: kBlackColor,
                    ),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 19, right: 50, bottom: 8),
                      border: InputBorder.none,
                      hintText: 'Search Book...',
                      hintStyle: GoogleFonts.openSans(
                        fontSize: 12,
                        color: kGreyColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: SvgPicture.asset('assets/svg/background_search.svg'),
                  ),
                  Positioned(
                    right: 9,
                    top: 8,
                    child:
                        SvgPicture.asset('assets/icons/icon_search_white.svg'),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 25),
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                  labelPadding: EdgeInsets.all(0),
                  indicatorPadding: EdgeInsets.all(0),
                  isScrollable: true,
                  labelColor: kBlackColor,
                  unselectedLabelColor: kGreyColor,
                  labelStyle: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelStyle:  GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  indicator: RoundedRectangleTabIndicator(),
                  tabs: [
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('New'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('New'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('New'),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
