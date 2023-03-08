import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../model/Comment.dart';

class CommentList extends StatelessWidget {
  List<Comment> comments;
  CommentList({required this.comments});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: (screenWidth * 169) / 390,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (BuildContext context, index) {
          return Container(
            child: Text(comments[index].companyName),
            decoration: BoxDecoration(
              color: Colors.amber,
              //borderRadius: Radius.circular(40.0),
            ),
          );
        },
        itemCount: comments.length,
      ),
    );
  }
}
