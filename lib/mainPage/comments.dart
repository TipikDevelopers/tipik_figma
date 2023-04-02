import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../model/Comment.dart';

class CommentWidget extends StatelessWidget {
  final List<Comment> comments;
  const CommentWidget(this.comments, {super.key});
  @override
  Widget build(BuildContext context) {
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
                          child: CachedNetworkImage(
                        imageUrl: comments[index].address,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                        ),
                        //stars
                        Align(
                            alignment: const Alignment(-1.4, -0.6),
                            child: Icon(
                              comments[index].rating < 1
                                  ? Icons.star_border_rounded
                                  : Icons.star_rounded,
                              color: const Color.fromRGBO(253, 200, 48, 1),
                            )),
                        Align(
                            alignment: const Alignment(-0.9, -1.2),
                            child: Icon(
                                comments[index].rating < 2
                                    ? Icons.star_border_rounded
                                    : Icons.star_rounded,
                                color: const Color.fromRGBO(253, 200, 48, 1))),
                        Align(
                            alignment: const Alignment(0, -1.6),
                            child: Icon(
                                comments[index].rating < 3
                                    ? Icons.star_border_rounded
                                    : Icons.star_rounded,
                                color: const Color.fromRGBO(253, 200, 48, 1))),
                        Align(
                            alignment: const Alignment(0.9, -1.2),
                            child: Icon(
                                comments[index].rating < 4
                                    ? Icons.star_border_rounded
                                    : Icons.star_rounded,
                                color: const Color.fromRGBO(253, 200, 48, 1))),
                        Align(
                            alignment: const Alignment(1.4, -0.6),
                            child: Icon(
                                comments[index].rating < 5
                                    ? Icons.star_border_rounded
                                    : Icons.star_rounded,
                                color: const Color.fromRGBO(253, 200, 48, 1))),
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
