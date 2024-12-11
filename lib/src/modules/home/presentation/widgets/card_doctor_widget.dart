import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stater/src/modules/home/presentation/widgets/rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CardDoctorWidget extends StatelessWidget {
  const CardDoctorWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.specialization,
    this.onFavoritePressed,
    this.isFavorite = false,
    this.isLoading,
    this.ratingScore,
    this.rating,
    this.onRatingUpdate,
    required this.selectedRating,
  });

  final String imageUrl;
  final String name;
  final String specialization;
  final Function()? onFavoritePressed;
  final bool isFavorite;
  final bool? isLoading;
  final double? ratingScore;
  final String? rating;
  final Function(double)? onRatingUpdate;
  final double selectedRating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 3,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Image
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Skeletonizer(
                    enabled: isLoading ?? false,
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => Image.asset(
                        "assets/images/Comet Digital Agency 3.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                // Doctor's Info
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        specialization,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Gap(10),
                      CustomRatingBarWidget(
                        rating: "Doctor Rating",
                        onRatingUpdate: onRatingUpdate,
                        selectedRating: selectedRating,
                        )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
            // Heart Icon
            Positioned(
              top: 16,
              right: 16,
              child: GestureDetector(
                onTap: onFavoritePressed,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: Icon(
                      isFavorite
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      color: isFavorite ? Colors.redAccent : Colors.grey,
                      size: 25,
                      key: ValueKey<bool>(isFavorite),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
