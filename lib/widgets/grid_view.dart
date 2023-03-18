import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/model/searchjson.dart';

class GridProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 3.0,
        physics: ClampingScrollPhysics(),
        children: searchImages
            .asMap()
            .entries
            .map((MapEntry mapEntry) => Container(
                  height: 60,
                  width: 20,
                  child: CachedNetworkImage(
                    imageUrl: mapEntry.value,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ))
            .toList());
  }
}
