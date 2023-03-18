import 'package:flutter/material.dart';

class StoryBuilder extends StatelessWidget {
  final String name;
  final String img;
  final int id;
  StoryBuilder({Key key, this.img, this.id, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(4.0),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0, 5),
                )
              ],
              border: Border.all(color: Colors.black, width: 1.0),
              gradient: LinearGradient(colors: [
                Color(0xFF9B2282),
                Color(0xFFEEA863),
               
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          "$name",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10.0,
            color: Colors.white,
            
          ),
        ),
      ],
    );
  }
}
