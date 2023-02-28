import 'package:flutter/material.dart';
import '../model/News.dart';

class NewsList extends StatelessWidget {
  final List<News>? newsList;
  NewsList({this.newsList});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          width: 170,
        );
      },
      itemCount: newsList?.length,
    ));
  }
}
