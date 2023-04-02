import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../model/Transactions.dart';

class TransactionInfo extends StatelessWidget {
  final List<Transaction> transactionList;
  const TransactionInfo({required this.transactionList});
  @override
  Widget build(BuildContext context) {
    //print("transactionList have size of ${transactionList.length}");
    return SizedBox(
      child: Column(
        children: [
          ...transactionList.map((e) {
            return Container(
              height: 70,
              width: 360,
              margin: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: Material(
                shadowColor: Color.fromRGBO(0, 0, 0, 0.25),
                borderRadius: BorderRadius.circular(10),
                elevation: 13,
                child: ListTile(
                  title: Text(e.companyName),
                  leading: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(e.imgURL, scale: 1),
                            fit: BoxFit.cover)),
                  ),
                  subtitle: Text(
                    DateFormat.yMMMMd().format(e.date),
                    style: const TextStyle(
                        fontFamily: 'Quicksand', fontWeight: FontWeight.w900),
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
                            const FaIcon(FontAwesomeIcons.ccVisa),
                            Text("**${e.cardNoDigits}",
                                style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins Medium'))
                          ],
                        ),
                        SizedBox(
                          width: 0.4,
                        ),
                        Text(
                          "${e.amount}₺",
                          style: const TextStyle(
                              fontSize: 21,
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
