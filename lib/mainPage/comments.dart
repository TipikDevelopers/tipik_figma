import 'package:flutter/material.dart';
import '../model/Comment.dart';

class CommentWidget extends StatelessWidget {
  final List<Comment> comments;
  CommentWidget(this.comments) {
    print("built and the size of comments is " + comments.length.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-2,
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(comments[index].address,scale: 1),
                        fit: BoxFit.fill)),
              ),
              Container(
                width: 70,
                height: 30,
                child: Center(child: Text(comments[index].companyName)),
              )
            ]),
          );
        },
        itemCount: comments.length,
      ),
    );
  }
}
