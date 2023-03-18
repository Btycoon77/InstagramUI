import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/model/searchjson.dart';

class Searchpage extends StatelessWidget {
  final TextEditingController textEditingController;
  Searchpage({Key key, this.textEditingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          reverse: true,
          addAutomaticKeepAlives: true,
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 14.0),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 25,
                          ),
                          onPressed: () {
                            showSearch(
                                context: context, delegate: SearchPage());
                          }),
                      SizedBox(width: 7.0),
                      Container(
                        height: 50,
                        width: 200,
                        child: TextFormField(
                          scrollPhysics: ClampingScrollPhysics(),
                          controller: textEditingController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GridView.count(
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
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ))
                        .toList())
              ],
            ),
          ],
        ));
  }
}

class SearchPage extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            return buildResults(context);
          })
    ];
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        });
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != null) {}
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    throw UnimplementedError();
  }
}
