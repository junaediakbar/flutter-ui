import 'package:flutter/material.dart';
import '../models/feed_model.dart';
import 'feedItem.dart';

class Feeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.80,
        child: ListView.builder(
          itemBuilder: (ctx, i) {
            return FeedItem(
              name: feeds[i].name,
              avatar: feeds[i].avatar,
              image: feeds[i].image,
              description: feeds[i].description,
              location: feeds[i].location,
              likedBy: feeds[i].likedBy,
            );
          },
          itemCount: feeds.length,
        ));
  }
}
