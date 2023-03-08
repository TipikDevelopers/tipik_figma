import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tipik_figma/haberler/haberList.dart';
import '../model/News.dart';

class Habers extends StatelessWidget {
  List<News> newsList;
  Habers({required this.newsList});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Haberler")),
      body: Column(
        children: [HaberList(newsList: newsList)],
      ),
    );
  }
}
