import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/modules/home/domain/models/category_model.dart';
import 'package:flutter_app_stater/src/modules/home/domain/models/doctor_model.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/widgets/carousel.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/widgets/search_widget.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/widgets/card_doctor_widget.dart';
import 'package:flutter_app_stater/src/widgets/custom_category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: this,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 20),
                child: Column(
                  children: [
                    _buildHeader(),
                    const Gap(10),
                    SearchWidget(
                      onPress: () {
                        context.read<HomeCubit>().refreshData();
                      },
                      onChange: (value) {
                        debugPrint(value);
                      },
                    ),
                    const Gap(20),
                    const CustomCarouselWidget(),
                    //Category widget
                    const Gap(10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Department",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                         constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.09,
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          final category = CategoryModel.defaultCategories[index];
                          return CustomCategory(name:category.name, icon: category.icon, onTap: () {  }, iconColor: category.color,);
                        },
                      ),
                    ),

                    //card Doctor
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.42,
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          final doctor  = DoctorModel.defaultCategories[index];
                          return Flexible(
                            child: CardDoctorWidget(
                              rating: "rating :",
                              imageUrl: doctor.images,
                              name: doctor.name,
                              specialization: doctor.desc,
                              ratingScore: doctor.rating,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sevongsa Invongthep',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              'Keep Healthy!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        _buildProfileImage(),
      ],
    );
  }

  Widget _buildProfileImage() {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: CachedNetworkImage(
            imageUrl:
                "https://imgv3.fotor.com/images/slider-image/A-blurry-image-of-a-woman-wearing-red.jpg",
            fit: BoxFit.cover,
            placeholder: (context, url) => Skeletonizer(
              enabled: true,
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ));
  }
}
