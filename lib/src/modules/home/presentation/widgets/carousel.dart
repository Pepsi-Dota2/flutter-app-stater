import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/core/constant/carousel_const.dart';
import 'package:flutter_app_stater/src/modules/home/domain/models/promotion_card.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomCarouselWidget extends StatelessWidget {
  const CustomCarouselWidget({super.key});

  static const _promotions = [
    PromotionModel(
      title: "SPECIAL OFFER",
      description: "Get a 35% discount on the first video consultation from now",
      buttonText: "Book Now",
      imageUrl: "https://rblwebstorageprd.blob.core.windows.net/productfiles/product_image_large/hib-365.jpg",
    ),
    PromotionModel(
      title: "HEALTH CHECKUP",
      description: "Complete body checkup starting ",
      buttonText: "Learn More",
      imageUrl: "https://lh4.googleusercontent.com/proxy/8eAWFNCMhgGNWRx5epQosKvZUHhqfYGGg1di-xpyv9rP3I_1dXAreXkqEczWdVhznOVc4X8xLDkqYM0inOzedrc9Cct0qoeQ7f1ziXTj-T0HEi0r5V63BnCXn2inXgFU7zarAEr_IUUo9oCs5MBdT6IapsjEgtmooPU1zPW4pGcs1AbazCot8C3blFHEdWz0oI-42_k1H3uT6n3ci8Lg7oOX-Xp1RJGhbmaZ8C5KuV-ZPCaDPgJegHTlleRM6y6CdyrkGM1Fm_-UlQ2UwlkmTR-Dbvn2teRIW7l4Q_l4qq4vslOJzh_bGiSYTie7PyK6PN4pvH-yWiCeI56zY2peWFv4aIrIuCB0qgttyeKXJ_RQt-DnkZw4Elz0K9lfm64wgGNRV08UoDDZyyDiHIzdR0liOLghRmjy0J8qVA3-8YhQ0n6q8QmkAG7UMKPl2c7yD-xdnaS1E5I0Eonh_AnY1J80chpFjmq-gG0g78eUTjLqY2AZDvK2WLRnXroGcm0m6Z-rv1wTJI1rW4tJy9BhE-5Ltj3c_ayIJzBInGWzkgzHgmCfVVloIPNcTdbuTDHDL8lvYwdH2gWTRZbt7NLRNtz3P1M7NLF3Qqt9uZ-i_Bm-Jp272cARc1FUiRn9x4Q0mmFu_q1u9If8PmlFidYKkuN8hv5V5vpIgoQFzuiLjlnXNLj1jvf-Xd1qmaYCLBKCzsrc0IFWRF0zCqiYJKVGxlMef52V6fJXFCM0kYYLHOvu4w",
    ),
    PromotionModel(
      title: "FAMILY CARE",
      description: "Special family healthcare packages available",
      buttonText: "View Plans",
      imageUrl: "https://images.sbs.com.au/dims4/default/0bbc1e7/2147483647/strip/true/crop/704x396+0+0/resize/1280x720!/quality/90/?url=http%3A%2F%2Fsbs-au-brightspot.s3.amazonaws.com%2Fdrupal%2Fyourlanguage%2Fpublic%2Fpodcasts%2Fsite_197_Russian_632213.JPG&imwidth=1280",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return CarouselSlider(
          items: _promotions.map((promo) => 
            _PromotionalCard(
              promotion: promo,
              isLoading: state.isLoading,
            ),
          ).toList(),
          options: CarouselOptions(
            height: CarouselConstants.cardHeight,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            autoPlay: !state.isLoading,
            autoPlayInterval: CarouselConstants.autoPlayInterval,
            autoPlayAnimationDuration: CarouselConstants.animationDuration,
            autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
            scrollPhysics: const BouncingScrollPhysics(),
            pageSnapping: true,
            pauseAutoPlayOnTouch: true,
            pauseAutoPlayOnManualNavigate: true,
            pauseAutoPlayInFiniteScroll: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            disableCenter: true,
            clipBehavior: Clip.antiAlias,
          ),
        );
      },
    );
  }
}

class _PromotionalCard extends StatelessWidget {
  final PromotionModel promotion;
  final bool isLoading;

  const _PromotionalCard({
    required this.promotion,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(CarouselConstants.cardBorderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(CarouselConstants.cardBorderRadius),
        child: Row(
          children: [
            _buildContent(),
            _buildImage(),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: CarouselConstants.contentPadding,
        vertical: CarouselConstants.verticalPadding,
      ),
      child: SizedBox(
        width: CarouselConstants.textWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTitle(),
            const SizedBox(height: 10),
            _buildDescription(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      promotion.title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildDescription() {
    return Text(
      promotion.description,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildImage() {
    return Expanded(
      child: CachedNetworkImage(
        imageUrl: promotion.imageUrl,
        fit: BoxFit.cover,
        height: double.infinity,
        placeholder: (context, url) => Skeletonizer(
          enabled: isLoading,
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        errorWidget: (context, url, error) => const Center(
          child: Icon(Icons.error),
        ),
      ),
    );
  }
}