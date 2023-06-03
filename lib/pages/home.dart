// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ui_instagram_clone/util/bubble_stories.dart';
import 'package:ui_instagram_clone/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);

  final List<String> people = [
    "Jane",
    "John",
    "Steven",
    "Deny",
    "Michael",
    "Vincent",
  ];
  final List<String> caption = [
    " Life is not about waiting for the storm to pass, but learning to dance in the rain and finding beauty in every drop that touches your soul.",
    " Living my best",
    " Finding inner strength",
    " Creating happy memories",
    " Embrace the journey",
    " Chasing sunsets",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  size: 20.0,
                ),
                Padding(padding: EdgeInsets.all(15)),
                Icon(
                  Icons.message,
                  size: 20.0,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (BuildContext context, int index) {
                  return UserPosts(
                    name: people[index],
                    nameCaption: people[index],
                    caption: caption[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
