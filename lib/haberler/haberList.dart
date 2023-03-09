import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import '../model/News.dart';

class HaberList extends StatelessWidget {
  List<News> newsList;
  HaberList({required this.newsList});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: newsList.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: NetworkImage(newsList[index].urlImage,scale: 1),
                    colorFilter: ColorFilter.mode(Colors.green.shade300.withOpacity(0.75),BlendMode.srcOver),
                    fit: BoxFit.cover
                  ),
                  ),
              child: Column(
                children: [
                  Text(newsList[index].title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800,color:Colors.white,fontFamily: "Manrope"),),
                  Text(newsList[index].description, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w800,color:Colors.white,fontFamily: "Manrope"))
                ],
              ),
            );
          }),
    );
  }
}
