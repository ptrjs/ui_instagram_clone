// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ui_instagram_clone/util/bubble_stories.dart';

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
        ],
      ),
    );
  }
}
