import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityFeed extends StatelessWidget {
  final String name;
  final String postImg;
  final String profileImg;
  final bool isLiked;
  final String lovedBy;
  final int commentCount;
  final String caption;
  final String timeAgo;

  ActivityFeed(
      {Key key,
      this.name,
      this.caption,
      this.postImg,
      this.profileImg,
      this.timeAgo,
      this.commentCount,
      this.isLiked,
      this.lovedBy})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 15),
      height: 560,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0), topRight: Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [Color(0xFF9B2282), Color(0xFFEEA863)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Container(
                margin: const EdgeInsets.all(4.0),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 2.0),
                    image: DecorationImage(
                        image: NetworkImage("$profileImg"), fit: BoxFit.cover)),
              ),
            ),
            title: Text(
              "$name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(
                  "$postImg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.heart,
                      size: 30,
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Icon(Icons.favorite_border, color: Colors.red);
                    },
                  ),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.solidComment,
                          size: 30, color: Colors.white),
                      onPressed: null),
                  IconButton(
                      icon: Icon(Icons.send, size: 30, color: Colors.white),
                      onPressed: null),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.ribbon,
                        size: 25,
                        color: Colors.white,
                      ),
                      onPressed: null)
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Liked by $lovedBy and 47,363 others",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "$caption",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "View all $commentCount comments",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          ListTile(
            leading: Container(
              margin: const EdgeInsets.all(4.0),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF9B2282), Color(0xFFEEA863)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                  //border: Border.all(color: Colors.black, width: 2.0),
                  image: DecorationImage(
                      image: NetworkImage("$profileImg"), fit: BoxFit.cover)),
            ),
            title: Text(
              "Add a comment................",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            trailing: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: null),
          ),
        ],
      ),
    );
  }
}
