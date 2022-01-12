import 'package:flutter/material.dart';
import 'package:instagram_ui/models/story_model.dart';
import 'package:instagram_ui/widgets/story.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, i) {
        return Story(stories[i].name, stories[i].image);
      },
      itemCount: stories.length,
    );
  }
}
