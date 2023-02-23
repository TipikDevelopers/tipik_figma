import 'package:flutter/material.dart';
import '../model/Comment.dart';

class CommentWidget extends StatelessWidget {
  List<Comment> comments;
  CommentWidget(this.comments);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: 80,
            child: Column(children: [
              CircleAvatar(
                radius: 33,
                //child: comments[index].img == null ? Icon(Icons.person): Image(image: comments[index].img)
              )
            ]),
          );
        },
        itemCount: comments.length,
      ),
    );
  }
}
