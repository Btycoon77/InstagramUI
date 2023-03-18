import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/widgets/customized_tab.dart';

class ProfilePage extends StatelessWidget {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
          shrinkWrap: true,
          reverse: true,
          physics: ClampingScrollPhysics(),
          addAutomaticKeepAlives: true,
          scrollDirection: Axis.vertical,
          children: [
            Column(
      children: [
        _buildAppbar(context),
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(
              horizontal: 10.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 5.0),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: "_Katherine",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          )),
                    ]),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              _buildSocialfollowings("Posts", 10),
              _buildSocialfollowings("Followers", 1500),
              _buildSocialfollowings("Following", 199),
            ],
          ),
        ),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(
              horizontal: 10.0, vertical: 15.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.grey)),
          child: Center(
            child: Text(
              "Edit Profile",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.all(10.0),
            height: 700,
            width: MediaQuery.of(context).size.width,
            child: CustomizedTabBar()),
      ],
            ),
          ],
        ),
    );
  }

  Container _buildSocialfollowings(String text, int number) {
    return Container(
      height: 85,
      width: 85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$number",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 1.0),
          Text(
            "$text",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  _buildAppbar(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {},
              ),
              Text(
                "_katherine",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              FaIcon(
                Icons.arrow_drop_down,
                size: 20,
                color: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  icon: FaIcon(Icons.add_box, size: 25, color: Colors.white),
                  onPressed: null),
              IconButton(
                  icon: FaIcon(Icons.more_vert, size: 25, color: Colors.white),
                  onPressed: null),
            ],
          ),
        ],
      ),
    );
  }
}
