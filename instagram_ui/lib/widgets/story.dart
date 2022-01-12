import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/models/hex_color.dart';

class Story extends StatelessWidget {
  final String name;
  final String profileImage;

  Story(this.name, this.profileImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, right: 8, bottom: 4),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 34,
            child: Stack(alignment: Alignment.center, children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: name == 'mystory'
                      ? LinearGradient(
                          colors: [Colors.white, Colors.white],
                        )
                      : LinearGradient(
                          colors: [
                            HexColor('5B00C4'),
                            HexColor('D00049'),
                          ],
                        ),
                ),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  profileImage,
                ),
                radius: 30.0,
              ),
            ]),
          ),
          SizedBox(height: 4),
          Text(
            name.length > 8 ? name.substring(0, 8) + '...' : name,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
