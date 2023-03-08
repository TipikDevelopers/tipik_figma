import 'package:flutter/material.dart';

class Comment {
  int rating;
  String companyName;
  String address;
  DateTime time;
  bool responded;
  String location;
  Comment(
      {
      this.responded = false,
      required this.location,
      required this.time,
      required this.rating,
      required this.companyName,
      required this.address});
}
