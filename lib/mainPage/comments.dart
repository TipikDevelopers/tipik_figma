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
            margin: EdgeInsets.all(5),
            height: 120,
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Container(
                width: 70,
                height:70,
                child: Stack(
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
                    //stars
                    Align(
                      alignment: Alignment(-1.4, -0.6),
                      child:Icon(
                        comments[index].rating <1 ? Icons.star_border: Icons.star,
                       color: Color.fromRGBO(253, 200, 48, 1),)
                    ),
                    Align(
                      alignment: Alignment(-0.8, -1.4),
                      child:Icon(
                        comments[index].rating <2 ? Icons.star_border: Icons.star,
                       color: Color.fromRGBO(253, 200, 48, 1))
                    ),
                    Align(
                      alignment: Alignment(0,-1.8),
                      child:Icon(
                        comments[index].rating <3 ? Icons.star_border: Icons.star,
                       color: Color.fromRGBO(253, 200, 48, 1))
                    ),
                    Align(
                      alignment: Alignment(0.8, -1.4),
                      child:Icon(
                        comments[index].rating <4 ? Icons.star_border: Icons.star,
                       color: Color.fromRGBO(253, 200, 48, 1))
                    ),
                    Align(
                      alignment: Alignment(1.4, -0.6),
                      child: Icon(
                        comments[index].rating <5 ? Icons.star_border: Icons.star,
                       color: Color.fromRGBO(253, 200, 48, 1))
                    ),
                  ],
                ),
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
