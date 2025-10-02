import 'package:ddeelly/core/imports/imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(AppImages.food),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Courtney Henry',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        _buildStaticRating(4),
                        const SizedBox(width: 8),
                        const Text(
                          '2 mins ago',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.grey,
                size: 24,
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            AppStrings.reviewText,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStaticRating(int fullStars) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < fullStars ? Icons.star : Icons.star_border,
          color: AppColors.yellow,
          size: 16,
        );
      }),
    );
  }
}
