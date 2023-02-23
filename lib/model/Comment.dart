import 'package:flutter/material.dart';

class Comment {
  int rating;
  String companyName;
  Image? img;
  Comment({required this.rating, required this.companyName, this.img});
}
