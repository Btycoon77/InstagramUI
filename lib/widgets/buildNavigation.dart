import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/screens/homepage.dart';
import 'package:instagram_ui/widgets/profie_page.dart';
import 'package:instagram_ui/widgets/search_page.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      // color: Colors.lightBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: FaIcon(Icons.home),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
            color: Colors.white,
            iconSize: 40,
          ),
          IconButton(
            icon: FaIcon(Icons.search),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Searchpage()));
            },
            color: Colors.white,
            iconSize: 40,
          ),
          IconButton(
            icon: FaIcon(Icons.add_box),
            onPressed: () {},
            color: Colors.white,
            iconSize: 40,
          ),
          IconButton(
            icon: FaIcon(Icons.shop),
            onPressed: () {},
            color: Colors.white,
            iconSize: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/236x/1c/89/ab/1c89aba9b2e73ad31f2d889590d723db.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
