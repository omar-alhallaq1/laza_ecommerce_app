import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class ReviewsHeaderRow extends StatelessWidget {
  final int totalReviews;
  final double averageRating;
  final VoidCallback onAddReviewTap;
  final double? starSize;

  const ReviewsHeaderRow({
    super.key,
    required this.totalReviews,
    required this.averageRating,
    required this.onAddReviewTap,
    this.starSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$totalReviews Reviews',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const Gap(6),

            Row(
              children: [
                Text(
                  averageRating.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const Gap(6),

                RatingBarIndicator(
                  rating: averageRating,
                  itemCount: 5,
                  itemSize: starSize ?? 5,
                  itemBuilder: (_, __) =>
                      const Icon(Icons.star, color: Colors.orange),
                  unratedColor: const Color(0xFFE0E0E0),
                ),
              ],
            ),
          ],
        ),

        SizedBox(
          height: 36,
          child: ElevatedButton(
            onPressed: onAddReviewTap,
            child: const Text('Add Review'),
          ),
        ),
      ],
    );
  }
}
