import 'package:flutter/material.dart';
import '../model/News.dart';

class NewsList extends StatelessWidget {
  final List<News>? newsList;
  NewsList({this.newsList});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: 160,
              height: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(newsList![index].urlImage, scale: 1),
                      fit: BoxFit.fill)),
              child: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 110,
                      ),
                      Text(
                        newsList![index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Comfortaa'),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                          child: Text(
                        newsList![index].description,
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: 'Comfortaa'),
                        textAlign: TextAlign.left,
                      ))
                    ],
                  )),
            );
          },
          itemCount: newsList?.length,
        ));
  }
}
