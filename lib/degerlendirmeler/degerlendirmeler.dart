import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tipik_figma/degerlendirmeler/commentList.dart';
import 'package:tipik_figma/model/Comment.dart';

class degerlendirmeler extends StatelessWidget {
  List<Comment> commentList;
  final controller = TextEditingController();
  degerlendirmeler({required this.commentList});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight((screenHeight * 123) / 844),
        child: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            color: Colors.white,
            icon: SvgPicture.asset('assets/images/geri.svg'),
          ),
          toolbarHeight: (screenHeight * 123) / 844,
          title: const Text(
            'Değerlendirmeleriniz',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Comfortaa',
              fontSize: 24,
            ),
          ),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(253, 200, 48, 1),
                  Color.fromRGBO(234, 115, 53, 1)
                ]),
          )),
          elevation: 0, //shadow
          centerTitle: true,
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 25,
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Ara",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: searchComment,
            ),
          ),
          Container(
            height: 200,
            child: CommentList(comments: commentList),
          ),
        ],
      ),
    );
  }

  void searchComment(String query) {
    final suggestions = commentList.where((Comment) {
      final title = Comment.companyName.toLowerCase();
      final input = query.toLowerCase();
      return title.contains(input);
    }).toList();

    //setState(())
  }
}
