import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/modules/payment/domain/payment_model.dart';

class CreditDebitCardSection extends StatelessWidget {
  final List<CardPaymentModel> cards; // List of cards
  final Function(CardPaymentModel selectedCard) onCardSelected; // Callback for card selection

  const CreditDebitCardSection({
    required this.cards,
    required this.onCardSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Credit/Debit Cards',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        ...cards.map(
          (card) => GestureDetector(
            onTap: () => onCardSelected(card), // Select the card when tapped
            child: CardItem(
              cardHolder: card.cardHolder,
              cardNumber: card.cardNumber,
              isSelected: card.isSelected,
            ),
          ),
        ),
      ],
    );
  }
}

class CardItem extends StatelessWidget {
  final String cardHolder;
  final String cardNumber;
  final bool isSelected;

  const CardItem({
    required this.cardHolder,
    required this.cardNumber,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.grey.shade300,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(Icons.credit_card, size: 36),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardHolder,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                cardNumber,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          if (isSelected)
            const Icon(Icons.radio_button_checked, color: Colors.blue)
          else
            const Icon(Icons.radio_button_unchecked),
        ],
      ),
    );
  }
}
