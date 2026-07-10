import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class ReviewCardItem extends StatelessWidget {
  final String name;
  final String date;
  final double rating;
  final String comment;
  final String? profileImage;
  final double? starSize;

  const ReviewCardItem({
    super.key,
    required this.name,
    required this.date,
    required this.rating,
    required this.comment,
    required this.profileImage,
    this.starSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color(0xFFF5F6F8),
                    child: const Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 22,
                    ),
                  ),
                  const Gap(10),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const Gap(4),

                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 14,
                              color: Colors.grey,
                            ),

                            const Gap(4),

                            Text(
                              date,
                              style: const TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Gap(12),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: rating.toStringAsFixed(1),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(
                        text: ' Rating',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                const Gap(4),

                RatingBarIndicator(
                  rating: rating,
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

        const Gap(12),

        Text(
          comment,
          style: const TextStyle(fontSize: 14, color: Colors.grey, height: 1.5),
        ),
      ],
    );
  }
}
