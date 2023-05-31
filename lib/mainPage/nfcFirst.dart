import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tipik_figma/mainPage/NewsList.dart';
import 'package:tipik_figma/mainPage/comments.dart';
import '../creditCard/cardScreen.dart';
import '../creditCard/myCards.dart';
import '../model/Comment.dart';
import '../model/News.dart';
import '../model/Transactions.dart';
import '../nfcTagPage/CircularSlider.dart';
import './TransactionList.dart';
import '../haberler/haberler.dart';
import 'NavBar.dart';
import 'Stars.dart';

class nfcFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
     showModalBottomSheet<void>(
                                          backgroundColor:
                                              Color.fromRGBO(245, 245, 245, 1),
                                          context: context,
                                          isScrollControlled: true,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(40.0),
                                            ),
                                          ),
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.90,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Stack(
                                                      //clipBehavior: Clip.none,

                                                      children: <Widget>[
                                                        Positioned(
                                                            child: ClipRRect(
                                                          borderRadius: const BorderRadius
                                                                  .only(
                                                              topLeft: Radius
                                                                  .circular(40),
                                                              topRight: Radius
                                                                  .circular(40),
                                                              bottomLeft: Radius
                                                                  .circular(90),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          90)),
                                                          child: Stack(
                                                            //clipBehavior:
                                                            //  Clip.none,
                                                            children: [
                                                              Container(
                                                                height:
                                                                    screenHeight *
                                                                        380 /
                                                                        844,
                                                                child:
                                                                    Container(
                                                                  height:
                                                                      screenHeight *
                                                                          340 /
                                                                          844,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image: NetworkImage(
                                                                          'https://lh3.googleusercontent.com/p/AF1QipP8TXQ7fbGd5fzpDUmgCs0JM1ML3Q3x5xjQFc8Z=s1360-w1360-h1020'),
                                                                    ),
                                                                    borderRadius: BorderRadius.only(
                                                                        bottomLeft:
                                                                            Radius.circular(
                                                                                90),
                                                                        bottomRight:
                                                                            Radius.circular(90)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                height:
                                                                    screenHeight *
                                                                        380 /
                                                                        844,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius: BorderRadius.only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              90),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              90)),
                                                                  gradient:
                                                                      LinearGradient(
                                                                    begin: Alignment
                                                                        .topCenter,
                                                                    end: Alignment
                                                                        .bottomCenter,
                                                                    colors: [
                                                                      Colors
                                                                          .transparent,
                                                                      Colors
                                                                          .black
                                                                          .withOpacity(
                                                                              1),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )),
                                                        Positioned(
                                                          left: 80,
                                                          top: 30,
                                                          child: Column(
                                                            children: <Widget>[
                                                              const CircleAvatar(
                                                                radius:
                                                                    50, // set the radius of the circle
                                                                backgroundImage:
                                                                    NetworkImage(
                                                                        'https://pbs.twimg.com/media/FRM4vdsWYAQojQq?format=png&name=900x900'), // replace with the URL of your image
                                                              ),
                                                              Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                        .only(
                                                                  left: 40,
                                                                  right: 40,
                                                                ),
                                                                child:
                                                                    const Text(
                                                                  'Bilkent \nYork',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Quicksand',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          45,
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                        .only(
                                                                  left: 40,
                                                                  right: 40,
                                                                ),
                                                                child:
                                                                    const Text(
                                                                  'Ankara/Çankaya',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Quicksand',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          16,
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Positioned(
                                                            top: 280,
                                                            left: 100,
                                                            child:
                                                                CircularSlider()),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 440),
                                                          child: Center(
                                                            child: Stack(
                                                              children: [
                                                                Column(
                                                                  children: [
                                                                    Stars(),
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {},
                                                                      child:
                                                                          Text(
                                                                        "Yorum yapmak için dokunun",
                                                                        style:
                                                                            TextStyle(
                                                                          color: Color.fromRGBO(
                                                                              118,
                                                                              118,
                                                                              118,
                                                                              1),
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w800,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),
                                                                    GestureDetector(
                                                                      child:
                                                                          Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        height: 80 /
                                                                            844 *
                                                                            screenHeight,
                                                                        width: 300 /
                                                                            344 *
                                                                            screenWidth,
                                                                        decoration: BoxDecoration(
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                offset: Offset(0, 4),
                                                                                blurRadius: 2,
                                                                                color: Colors.black.withOpacity(0.3),
                                                                              )
                                                                            ],
                                                                            borderRadius: BorderRadius.circular(20),
                                                                            gradient: LinearGradient(
                                                                              colors: [
                                                                                Colors.white,
                                                                                Color.fromRGBO(86, 194, 95, 2)
                                                                              ],
                                                                              stops: [
                                                                                0.2,
                                                                                0.2
                                                                              ],
                                                                            )),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Container(
                                                                              color: Colors.white,
                                                                              child: SizedBox(
                                                                                width: 20,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              color: Colors.white,
                                                                              child: Column(
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Container(
                                                                                    // margin: EdgeInsets.all(4),
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(5),
                                                                                      color: const Color.fromRGBO(118, 177, 145, 1),
                                                                                    ),
                                                                                    //color: const Color.fromRGBO(118, 177, 145, 1),
                                                                                    width: 37 / 390 * screenWidth,
                                                                                    height: 33 / 844 * screenHeight,
                                                                                    child: SizedBox(
                                                                                      height: 11 / 844 * screenHeight,
                                                                                      width: 28 / 390 * screenWidth,
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsets.all(4.0),
                                                                                        child: Center(child: Image.network("https://americassbdc.org/wp-content/uploads/2021/05/Visa-logo-white.png")),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    "**40",
                                                                                    style: const TextStyle(
                                                                                      fontFamily: 'Manrope',
                                                                                      fontSize: 11,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 30,
                                                                            ),
                                                                            Container(
                                                                              child: Text(
                                                                                "Onaylıyorum",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                  fontFamily: 'Comfortaa',
                                                                                  fontSize: 24,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 20,
                                                                            ),
                                                                            SvgPicture.asset('assets/images/Arrow 1ok.svg')
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 5,
                                                                    ),
                                                                    Text(
                                                                      "Onayladığınızda 5,00₺ seçili kartınızdan ödeme alınacaktır.",
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Quicksand',
                                                                          fontSize:
                                                                              10,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color: Color.fromRGBO(
                                                                              153,
                                                                              153,
                                                                              153,
                                                                              1)),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 20),
                                                      ]),
                                                ],
                                              ),
                                            );
                                          })
                                    }, 
  }
}