class TransactionList {
  String transactionName;
  String transactionUssd;
  String bankUssd;
  String inputType;

  TransactionList(
      {required this.transactionName,
      required this.transactionUssd,
      required this.inputType,
      required this.bankUssd});
}
