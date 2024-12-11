class CardPaymentModel {
  final String cardHolder;
  final String cardNumber;
  bool isSelected;

  CardPaymentModel({
    required this.cardHolder,
    required this.cardNumber,
    this.isSelected = false,
  });

  static final  List<CardPaymentModel> cards = [
    CardPaymentModel(
        cardHolder: 'David Jones',
        cardNumber: '**** **** 7845',
        isSelected: true),
    CardPaymentModel(cardHolder: 'Mr. David', cardNumber: '**** **** 8307'),
  ];
}
