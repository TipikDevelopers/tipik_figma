import 'package:flutter/material.dart';
import '../model/Comment.dart';

class CommentWidget extends StatelessWidget {
  final List<Comment> comments;
  const CommentWidget(this.comments, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width-2,
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(5),
            height: 120,
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              SizedBox(
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
                      alignment: const Alignment(-1.4, -0.6),
                      child:Icon(
                        comments[index].rating <1 ? Icons.star_border: Icons.star,
                       color: Colors.yellow,)
                    ),
                    Align(
                      alignment: const Alignment(-0.8, -1.4),
                      child:Icon(
                        comments[index].rating <2 ? Icons.star_border: Icons.star,
                       color: Colors.yellow)
                    ),
                    Align(
                      alignment: const Alignment(0,-1.8),
                      child:Icon(
                        comments[index].rating <3 ? Icons.star_border: Icons.star,
                       color: Colors.yellow)
                    ),
                    Align(
                      alignment: const Alignment(0.8, -1.4),
                      child:Icon(
                        comments[index].rating <4 ? Icons.star_border: Icons.star,
                       color: Colors. yellow)
                    ),
                    Align(
                      alignment: const Alignment(1.4, -0.6),
                      child: Icon(
                        comments[index].rating <5 ? Icons.star_border: Icons.star,
                       color: Colors.yellow)
                    ),
                  ],
                ),
              ),
              SizedBox(
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
