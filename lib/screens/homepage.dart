import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/model/postjson.dart';
import 'package:instagram_ui/model/storyjson.dart';
import 'package:instagram_ui/widgets/activityfeed.dart';
import 'package:instagram_ui/widgets/buildNavigation.dart';
import 'package:instagram_ui/widgets/storybuilder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: NavigationBar(),
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        reverse: true,
        scrollDirection: Axis.vertical,
        children:[
           Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              height: 70,
              color: Colors.black,
              width: double.infinity,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Instagram",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Billabong',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              size: 25,
                              color: Colors.white,
                            ),
                            onPressed: null),
                        SizedBox(
                          width: 12,
                        ),
                        IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.facebookMessenger,
                              size: 25,
                              color: Colors.white,
                            ),
                            onPressed: null)
                      ],
                    ),
                  ]),
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        8,
                        (index) => StoryBuilder(
                              name: stories[index]['name'],
                              img: stories[index]['img'],
                            ))),
              ),
            ),
            SizedBox(height:8.0),
            ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              addAutomaticKeepAlives: true,
              scrollDirection: Axis.vertical,
              itemCount: post.length,
              itemBuilder: (context, int index) {
                return ActivityFeed(
                  name: post[index]["name"],
                  isLiked: post[index]["isLiked"],
                  caption: post[index]["caption"],
                  commentCount: post[index]["commmentCount"],
                  postImg: post[index]["postImg"],
                  profileImg: post[index]["profileImg"],
                  lovedBy: post[index]["likedBy"],
                  timeAgo: post[index]["timeAgo"],
                );
              },
            ),
          ],
        ),
        ],
      ),
    );
  }
}
