import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tipik_figma/haberler/haberList.dart';
import '../model/News.dart';

class Habers extends StatefulWidget {
  final List<News> newsList;
  const Habers({required this.newsList});

  @override
  State<Habers> createState() => _HabersState();
}

class _HabersState extends State<Habers> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          color: Colors.white,
          icon: SvgPicture.asset('assets/images/geri.svg'),
        ),
        title: const Text(
          'Haberler ve Kampanyalar',
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
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: 280,
            child: TabBar(
                controller: _controller,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(183, 94, 51, 1)),
                tabs: [
                  Tab(
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      alignment: Alignment.center,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: const Center(child: Text("Tümü")),
                    ),
                  ),
                  Tab(
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      alignment: Alignment.center,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: const Center(child: Text("Kampanyalar")),
                    ),
                  ),
                  Tab(
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      alignment: Alignment.center,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: const Center(child: Text("Haberler")),
                    ),
                  )
                ]),
          ),
          SizedBox(
            height: 450,
            child: TabBarView(
              controller: _controller,
              children: [
              SizedBox(width: MediaQuery.of(context).size.width,child: HaberList(newsList: widget.newsList),),
              const Center(child: Text("TODO"),),
              const Center(child: Text("TODO"),)
            ]),
          )
        ],
      ),
    );
  }
}
