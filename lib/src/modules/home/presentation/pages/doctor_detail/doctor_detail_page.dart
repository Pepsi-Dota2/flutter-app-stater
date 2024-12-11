import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/core/constant/constant_colors.dart';
import 'package:flutter_app_stater/src/core/constant/enum.dart';
import 'package:flutter_app_stater/src/core/routers/router.dart';
import 'package:flutter_app_stater/src/modules/home/domain/models/doctor_detail.dart';
import 'package:flutter_app_stater/src/modules/home/domain/models/doctor_model.dart';
import 'package:flutter_app_stater/src/modules/home/domain/models/tab_item_model.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/cubit/doctor_detail/doctor_detail_cubit.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/widgets/doctor_detail/detail_card.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/widgets/doctor_detail/header_detail.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/widgets/doctor_detail/tab_detail.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage()
class DoctorDetailPage extends StatelessWidget implements AutoRouteWrapper {
  const DoctorDetailPage({super.key, required this.doctor});
  final DoctorModel doctor;
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorDetailCubit(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<DetailCardModel> doctorDetail = DetailCardModel.getMockDetails;
    final List<TabItem> tabItems = TabItem.tabItems;
    return DefaultTabController(
      length: tabItems.length,
      child: Scaffold(
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
        body: BlocBuilder<DoctorDetailCubit, DoctorDetailState>(
          builder: (context, state) {
            if (state.status == DataStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        DoctorDetail(
                          doctor: doctor,
                          selectedRating: state.rating,
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 10,
                            ),
                            itemCount: doctorDetail.length,
                            itemBuilder: (BuildContext context, int index) {
                              final detailCard =
                                  DetailCardModel.getMockDetails[index];
                              return DetailCard(
                                  icon: detailCard.icon,
                                  title: detailCard.title,
                                  subtitle: detailCard.subtitle);
                            },
                          ),
                        ),
                        const Gap(20),
                        const TabDetail(),
                        SizedBox(
                          height: 300,
                          child: TabBarView(
                            children:
                                tabItems.map((item) => item.content).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$25 USD',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Appointment Fee',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.router.push(const PaymentRoute());

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 20),
                        ),
                        child: const Text(
                          'Get Appointment',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
