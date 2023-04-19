import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../model/Transactions.dart';

class TransactionInfo extends StatelessWidget {
  final List<Transaction> transactionList;
  const TransactionInfo({required this.transactionList});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    //print("transactionList have size of ${transactionList.length}");
    return SizedBox(
      child: Column(
        children: [
          ...transactionList.map((e) {
            return Container(
              height: 90 / 844 * screenHeight,
              width: 382 / 390 * screenWidth,
              padding: const EdgeInsets.only(right: 15, left: 15),
              margin: const EdgeInsets.only(
                bottom: 15,
              ),
              child: Material(
                shadowColor: const Color.fromRGBO(0, 0, 0, 0.247),
                borderRadius: BorderRadius.circular(10),
                elevation: 13,
                child: Row(
                  children: [
                    Container(
                      //padding: EdgeInsets.all(0),
                      height: 90 / 844 * screenHeight,
                      width: 77 / 358 * screenWidth,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          image: DecorationImage(
                              image: NetworkImage(e.imgURL, scale: 1),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              e.companyName,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              e.location +
                                  "\n" +
                                  DateFormat.yMMMMd().format(e.date),
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
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
                                    child: Center(
                                        child: Image.network(
                                            "https://americassbdc.org/wp-content/uploads/2021/05/Visa-logo-white.png")),
                                  ),
                                ),
                              ),
                              Text(
                                "**${e.cardNoDigits}",
                                style: const TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "${e.amount}₺",
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins Medium'),
                    )
                  ],
                ),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
