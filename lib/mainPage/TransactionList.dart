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
                shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
                borderRadius: BorderRadius.circular(10),
                elevation: 13,
                child: Row(
                  
                  children: [
                    Container(
                    height: 70,
                    width: 70,
                    margin: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(e.imgURL, scale: 1),
                          fit: BoxFit.cover))),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(e.companyName, 
                        style: const TextStyle(fontFamily: "Quicksand",fontSize: 15, fontWeight:FontWeight.w600),),
                        Text(
                        DateFormat.yMMMMd().format(e.date),
                        style: const TextStyle(
                            fontFamily: 'Quicksand', fontWeight: FontWeight.w900,fontSize: 10),
                        ),
                        
                        ],
                        
                        ),
                     ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.342,),
                      SizedBox(
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
                        const SizedBox(
                          width: 0.4,
                        ),
                        Text(
                          "${e.amount}₺",
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins Medium'),
                        )
                      ],
                    ),
                  ),
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
