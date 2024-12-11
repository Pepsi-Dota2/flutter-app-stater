import 'package:bloc/bloc.dart';
import 'package:flutter_app_stater/src/core/constant/enum.dart';
import 'package:flutter_app_stater/src/modules/payment/domain/payment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(const PaymentState());

void selectCard(CardPaymentModel selectedCard) {
  print("Selected Card: ${selectedCard.cardNumber}");
  final updatedCards = state.paymentData.map((card) {
    final isSelected = card == selectedCard;
    print("Card ${card.cardNumber} is selected: $isSelected");
    return CardPaymentModel(
      cardHolder: card.cardHolder,
      cardNumber: card.cardNumber,
      isSelected: isSelected,
    );
  }).toList();
  emit(state.copyWith(paymentData: updatedCards));
}


}
