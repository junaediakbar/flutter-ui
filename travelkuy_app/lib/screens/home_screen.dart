import 'package:cobaflut/constants/color_constants.dart';
import 'package:cobaflut/constants/style_constants.dart';
import 'package:cobaflut/models/carousel_model.dart';
import 'package:cobaflut/models/popular_destination_model.dart';
import 'package:cobaflut/models/travlog_model.dart';
import 'package:cobaflut/widgets/bottom_navigation_travelkuy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        backgroundColor: mBackgroundColor,
        elevation: 0,
      ),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: BottomNavigationTravelkuy(),
      body: Container(
          child: ListView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          //Promos Section
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 24),
            child: Text(
              'Hi, Josep This is promo special for You!',
              style: mTitleStyle,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  child: Swiper(
                    onIndexChanged: (index) {
                      setState(() {
                        _current = index;
                      });
                    },
                    autoplay: true,
                    layout: SwiperLayout.DEFAULT,
                    itemCount: carousels.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage(carousels[index].image),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: map<Widget>(carousels, (index, image) {
                        return Container(
                          alignment: Alignment.centerLeft,
                          height: 6,
                          width: 6,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index ? mBlueColor : mGreyColor,
                          ),
                        );
                      }),
                    ),
                    Text(
                      'More...',
                      style: mMoreDiscountStyle,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
            child: Text(
              'Let\'s Booking!',
              style: mTitleStyle,
            ),
          ),
          Container(
            height: 144,
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1),
                        ),
                        child: Row(children: <Widget>[
                          SvgPicture.asset(
                            'assets/svg/service_flight_icon.svg',
                            fit: BoxFit.contain,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Flight',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Feel Freedom',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1),
                        ),
                        child: Row(children: <Widget>[
                          SvgPicture.asset(
                            'assets/svg/service_train_icon.svg',
                            fit: BoxFit.contain,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Train',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Inter City',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1),
                        ),
                        child: Row(children: <Widget>[
                          SvgPicture.asset(
                            'assets/svg/service_hotel_icon.svg',
                            fit: BoxFit.contain,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Hotel',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Let\'s take a break',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1),
                        ),
                        child: Row(children: <Widget>[
                          SvgPicture.asset(
                            'assets/svg/service_rental_icon.svg',
                            fit: BoxFit.contain,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Car Rental',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Around the city',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
            child: Text(
              'Popular Destionation',
              style: mTitleStyle,
            ),
          ),
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16, right: 16),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    height: 144,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: mBorderColor, width: 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 16),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            populars[index].image,
                            height: 74,
                          ),
                          Text(
                            populars[index].name,
                            style: mPopularDestinationTitleStyle,
                          ),
                          Text(
                            populars[index].country,
                            style: mPopularDestinationSubtitleStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: populars.length,
            ),
          ),
          //Travlog Section
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 24),
            child: Text(
              'Travlog',
              style: mTitleStyle,
            ),
          ),
          Container(
            height: 181,
            padding: EdgeInsets.only(left: 16),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 220,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            Container(
                              height: 104,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage(travlogs[index].image))),
                            ),
                            Positioned(
                              child: SvgPicture.asset(
                                  'assets/svg/travlog_top_corner.svg'),
                              right: 0,
                            ),
                            Positioned(
                              child: SvgPicture.asset(
                                  'assets/svg/travelkuy_logo_white.svg'),
                              top: 8,
                              right: 8,
                            ),
                            Positioned(
                              child: SvgPicture.asset(
                                  'assets/svg/travlog_bottom_gradient.svg'),
                              bottom: 0,
                            ),
                            Positioned(
                              child: Text(travlogs[index].name,
                                  style: mTravlogTitleStyle),
                              bottom: 8,
                              left: 2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          travlogs[index].content,
                          maxLines: 3,
                          style: mTravlogContentStyle,
                        )
                      ],
                    ),
                  );
                },
                itemCount: travlogs.length,
                scrollDirection: Axis.horizontal),
          )
        ],
      )),
    );
  }
}
