import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBarWidget extends StatelessWidget {
  const CustomRatingBarWidget({
    super.key, 
    required this.rating,
    this.onRatingUpdate,
    this.selectedRating = 0,
  });
  
  final String rating;
  final double selectedRating;
  final void Function(double)? onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RatingBar.builder(
          initialRating: selectedRating > 0 ? selectedRating : (double.tryParse(rating) ?? 0),
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemSize: 20,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          unratedColor: Colors.amber.withAlpha(50),
          updateOnDrag: true,
          glowColor: Colors.amber,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: onRatingUpdate ?? (_) {},
        ),
          const SizedBox(height: 8),
          Text('Rating: ${selectedRating.toStringAsFixed(1)}',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
            ),
          ),
      ],
    );
  }
}