class Transaction {
  String companyName;
  int amount;
  DateTime date;
  bool isVisa;
  int cardNoDigits;
  String imgURL;
  Transaction({
    required this.companyName,
    required this.amount,
    required this.date,
    this.isVisa = true,
    required this.cardNoDigits,
    required this.imgURL,
  });
}
