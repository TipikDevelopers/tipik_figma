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
                shadowColor: Color.fromRGBO(0, 0, 0, 0.247),
                borderRadius: BorderRadius.circular(10),
                elevation: 13,
                child: ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      e.companyName,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  leading: Container(
                    //padding: EdgeInsets.all(0),
                    height: 90 / 844 * screenHeight,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(e.imgURL, scale: 1),
                            fit: BoxFit.cover)),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Text(
                      e.location + "\n" + DateFormat.yMMMMd().format(e.date),
                      style: const TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 10,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  trailing: SizedBox(
                    height: 70,
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Color.fromRGBO(118, 177, 145, 1),
                              width: 30 / 390 * screenWidth,
                              height: 22 / 844 * screenHeight,
                              child: Center(
                                  child: Image.network(
                                      "https://americassbdc.org/wp-content/uploads/2021/05/Visa-logo-white.png")),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 0.1,
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
                ),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
