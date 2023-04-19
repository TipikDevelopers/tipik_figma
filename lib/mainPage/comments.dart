import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../model/Comment.dart';

class CommentWidget extends StatelessWidget {
  final List<Comment> comments;
  const CommentWidget(this.comments, {super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: MediaQuery.of(context).size.width - 2,
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
                    height: 70,
                    child: Stack(
                      children: [
                        Container(
                            width: 70,
                            height: 70,
                            /*child: CachedNetworkImage(
                        imageUrl: comments[index].address,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),*/
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        NetworkImage(comments[index].address),
                                    fit: BoxFit.cover),
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                            )),
                        //stars
                        Align(
                            alignment: const Alignment(-1.42, -0.75),
                            child: Icon(
                              comments[index].rating < 1
                                  ? Icons.star_border_rounded
                                  : Icons.star_rounded,
                              color: const Color.fromRGBO(253, 200, 48, 1),
                            )),
                        Align(
                            alignment: const Alignment(-0.9, -1.3),
                            child: Icon(
                                comments[index].rating < 2
                                    ? Icons.star_border_rounded
                                    : Icons.star_rounded,
                                color: const Color.fromRGBO(253, 200, 48, 1))),
                        Align(
                            alignment: const Alignment(0, -1.58),
                            child: Icon(
                                comments[index].rating < 3
                                    ? Icons.star_border_rounded
                                    : Icons.star_rounded,
                                color: const Color.fromRGBO(253, 200, 48, 1))),
                        Align(
                            alignment: const Alignment(0.9, -1.3),
                            child: Icon(
                                comments[index].rating < 4
                                    ? Icons.star_border_rounded
                                    : Icons.star_rounded,
                                color: const Color.fromRGBO(253, 200, 48, 1))),
                        Align(
                            alignment: const Alignment(1.42, -0.75),
                            child: Icon(
                                comments[index].rating < 5
                                    ? Icons.star_border_rounded
                                    : Icons.star_rounded,
                                color: const Color.fromRGBO(253, 200, 48, 1))),
                        Align(
                          alignment: const Alignment(1.15, 1),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color.fromRGBO(243, 115, 53, 1),
                            ),
                            width: 25 / 390 * screenWidth,
                            height: 35 / 844 * screenHeight,
                            child: Text(
                              "1",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Quicksand',
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    height: 30,
                    child: Center(
                        child: Text(
                      comments[index].companyName,
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                    child: Center(
                        child: Text(
                      comments[index].location,
                      style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 10,
                          color: Color.fromRGBO(85, 85, 85, 1)),
                    )),
                  )
                ]),
          );
        },
        itemCount: comments.length,
      ),
    );
  }
}
