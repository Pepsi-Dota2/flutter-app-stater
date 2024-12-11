import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/modules/payment/domain/payment_model.dart';
import 'package:flutter_app_stater/src/modules/payment/presentation/cubit/payment_cubit.dart';
import 'package:flutter_app_stater/src/modules/payment/presentation/widget/payment_detail.dart';
import 'package:flutter_app_stater/src/modules/payment/presentation/widget/promo_code_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:qr_flutter/qr_flutter.dart';

@RoutePage()
class PaymentPage extends StatelessWidget implements AutoRouteWrapper {
  const PaymentPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PaymentCubit>();
     final List<CardPaymentModel> paymentData = CardPaymentModel.cards;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
        notificationPredicate: (notification) {
          return notification.depth == 1;
        },
      ),
      body: BlocBuilder<PaymentCubit, PaymentState>(
        builder: (context, state) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CreditDebitCardSection(
                      cards: paymentData,
                      onCardSelected: cubit.selectCard
                    ),
                    const Gap(20),
                    PaymentDetailsSection(),
                    SizedBox(height: 16),
                    // QrImageView(
                    //   data: 'This QR code has an embedded image as well',
                    //   version: QrVersions.auto,
                    //   size: 320,
                    //   gapless: false,
                    //   embeddedImage:
                    //       AssetImage('assets/images/Comet Digital Agency 3.png'),
                    //   embeddedImageStyle: QrEmbeddedImageStyle(
                    //     size: Size(80, 80),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
