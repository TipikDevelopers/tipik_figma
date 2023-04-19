class Transaction {
  String companyName;
  String location;
  int amount;
  DateTime date;
  bool isVisa;
  int cardNoDigits;
  String imgURL;
  String location;
  Transaction({
    required this.location,
    required this.companyName,
    required this.amount,
    required this.date,
    this.isVisa = true,
    required this.cardNoDigits,
    required this.imgURL,
    required this.location,
  });
}
