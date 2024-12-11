part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(false) bool isPaymentSuccess,
    @Default(0) int statusCode,
    @Default([]) List<CardPaymentModel> paymentData,
    @Default(false) bool isSelected
  })= _PaymentState;
}
