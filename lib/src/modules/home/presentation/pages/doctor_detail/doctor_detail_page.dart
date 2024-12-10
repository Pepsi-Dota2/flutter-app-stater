import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/core/constant/constant_colors.dart';
import 'package:flutter_app_stater/src/modules/home/domain/models/doctor_detail.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/widgets/doctor_detail/detail_card.dart';

@RoutePage()
class DoctorDetailPage extends StatelessWidget {
  const DoctorDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctor's Detail"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.notification_add_outlined,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                final detailCard = DetailCardModel.getMockDetails[index];
                return DetailCard(icon: detailCard.icon, title: detailCard.title, subtitle: detailCard.subtitle);
              },
            ),
          ),
        ],
      ),
    );
  }
}