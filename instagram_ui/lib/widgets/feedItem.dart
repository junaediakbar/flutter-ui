import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedItem extends StatelessWidget {
  final String name;
  final String avatar;
  final String image;
  final String location;
  final String description;
  final List<String> likedBy;
  final bool isFavorite;

  FeedItem({
    @required this.name,
    @required this.avatar,
    @required this.image,
    @required this.location,
    @required this.description,
    @required this.likedBy,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    print(likedBy);
    String stringLiked = likedBy.map((val) => val.trim()).join(', ');
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        avatar,
                      ),
                      radius: 18.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 17,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  icon: Icon(
                    Icons.more_vert,
                    size: 20.0,
                    color: Colors.brown[900],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.fill,
              ),
            ),
            constraints: BoxConstraints(maxHeight: 476),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.only(right: 12),
                  constraints: BoxConstraints(),
                  icon: SvgPicture.asset(
                    'assets/icons/heart_icon.svg',
                    height: 36,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  padding: EdgeInsets.only(right: 12),
                  constraints: BoxConstraints(),
                  icon: SvgPicture.asset(
                    'assets/icons/comment_icon.svg',
                    height: 36,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  padding: EdgeInsets.only(right: 12),
                  constraints: BoxConstraints(),
                  icon: SvgPicture.asset(
                    'assets/icons/send_icon.svg',
                    height: 36,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 12, bottom: 4),
            child: Text(
              'liked by $stringLiked',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: RichText(
              text: TextSpan(
                text: '$name  ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: description,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
