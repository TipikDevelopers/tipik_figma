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
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: (screenHeight * 230) / 844,
        ),
        itemBuilder: (BuildContext context, index) {
          final Comment = comments[index];
          return GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(12.0),
                //borderRadius: Radius.circular(40.0),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(comments[index].address),
                          fit: BoxFit.fill),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Text(
                        comments[index].companyName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'QuickSand',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        comments[index].location,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Quicksand',
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        child: Container(
                          padding: EdgeInsets.only(top: 10.0),
                          alignment: Alignment.bottomCenter,
                          color: comments[index].responded
                              ? Colors.orange
                              : Colors.white,
                          child: comments[index].responded
                              ? const Text("İşletme Cevabı İçin Dokunun")
                              : Text(
                                  comments[index].time.toString(),
                                  style: const TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: comments.length,
      ),
    );
  }
}
