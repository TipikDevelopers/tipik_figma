import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../model/News.dart';

class NewsList extends StatelessWidget {
  final List<News>? newsList;
  const NewsList({this.newsList});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
        width: MediaQuery.of(context).size.width - 2,
        child: ListView.builder(
          padding: const EdgeInsets.only(left: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: SizedBox(
                width: 152 / 390 * screenWidth,
                height: 213 / 844 * screenHeight,
                child: Stack(
                  children: [
                    Container(
                      //padding: EdgeInsets.only(left: 10),
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      width: 160,
                      height: 210,

                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                        child: ShaderMask(
                          shaderCallback: (bound) {
                            if (index == 0) {
                              return const LinearGradient(
                                  end: FractionalOffset.topRight,
                                  begin: FractionalOffset.bottomLeft,
                                  colors: [
                                    Colors.black,
                                    Colors.black,
                                  ],
                                  stops: [
                                    0.0,
                                    //0.3,
                                    0.45
                                  ]).createShader(bound);
                            } else if (index == 1) {
                              return const LinearGradient(
                                  end: FractionalOffset.topRight,
                                  begin: FractionalOffset.bottomLeft,
                                  colors: [
                                    Color.fromRGBO(168, 255, 120, 0.75),
                                    Color.fromRGBO(120, 255, 214, 0.75),
                                  ],
                                  stops: [
                                    0.0,
                                    //0.3,
                                    0.45
                                  ]).createShader(bound);
                            } else {
                              return const LinearGradient(
                                  end: FractionalOffset.topRight,
                                  begin: FractionalOffset.bottomLeft,
                                  colors: [
                                    Color.fromRGBO(173, 83, 137, 0.75),
                                    Color.fromRGBO(60, 16, 83, 0.75),
                                  ],
                                  stops: [
                                    0.0,
                                    //0.3,
                                    0.45
                                  ]).createShader(bound);
                            }
                          },

                          blendMode: BlendMode.srcOver,

                          // your widget  ------------------------
                          child: SizedBox(
                            height: double.infinity,
                            width: double.infinity,
                            child: CachedNetworkImage(
                              imageUrl: newsList![index].urlImage,
                              fit: BoxFit.cover,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 80, bottom: 5),
                          child: Text(
                            newsList![index].title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Manrope'),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5, bottom: 15),
                          child: Text(
                            newsList![index].description,
                            style: const TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Manrope'),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },

          /*gradient: (index == 0)
                    ? LinearGradient(
                      
                        begin: FractionalOffset.bottomLeft,
                        end: FractionalOffset.topRight,
                        colors: [
                            Color.fromRGBO(0, 0, 0, 1),
                            Color.fromRGBO(0, 0, 0, 1),
                          ])
                    : (index == 1)
                        ? LinearGradient(
                            begin: FractionalOffset.bottomLeft,
                            end: FractionalOffset.topRight,
                            colors: [
                                Color.fromRGBO(168, 255, 120, 0.75),
                                Color.fromRGBO(120, 255, 214, 0.75),
                              ])
                        : LinearGradient(
                            begin: FractionalOffset.bottomLeft,
                            end: FractionalOffset.topRight,
                            colors: [
                                Color.fromRGBO(173, 83, 137, 0.75),
                                Color.fromRGBO(60, 16, 83, 0.75),
                              ]),
              ),
              child: Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 110,
                      ),
                      Text(
                        newsList![index].title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Comfortaa'),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                          child: Text(
                        newsList![index].description,
                        style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: 'Comfortaa'),
                        textAlign: TextAlign.left,
                      ))
                    ],
                  )),*/
          itemCount: newsList?.length,
        ));
  }
}
