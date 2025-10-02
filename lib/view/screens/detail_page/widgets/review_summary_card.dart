import 'package:ddeelly/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class StaticReviewSummaryCard extends StatelessWidget {
  const StaticReviewSummaryCard({super.key});

 
  static const double averageRating = 4.5;
  static const int totalReviews = 52;
  

  static const Map<int, double> ratingPercentages = {
    5: 0.9, 
    4: 0.7, 
    3: 0.4,
    2: 0.2,
    1: 0.1, 
  };


  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity, 
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.backgroundColorHome,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
      
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
    
              Expanded(
                flex: 4,
                child: Column(
                  children: List.generate(5, (index) {
                    final rating = 5 - index;
                    final percentage = ratingPercentages[rating] ?? 0.0;
                    return _buildRatingBar(rating, percentage);
                  }).toList(),
                ),
              ),

              const SizedBox(width: 20),

             
              Expanded(
                flex: 3,
                child: _buildSummaryRating(averageRating, totalReviews),
              ),
            ],
          ),
        ],
      ),
    );
  }




  Widget _buildRatingBar(int rating, double percentage) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
  
          Text(
            '$rating',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.star, color: AppColors.yellow, size: 14),
          const SizedBox(width: 8),

      
          Expanded(
            child: SizedBox(
              height: 8,
              child: LinearProgressIndicator(
                value: percentage, 
                backgroundColor: AppColors.primary.withOpacity(0.2),
                valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
                minHeight: 8,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildSummaryRating(double rating, int totalReviews) {

    int fullStars = rating.floor(); 
    bool hasHalfStar = true; 

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
     
        Text(
          rating.toStringAsFixed(1), 
          style:  const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
            height: 1.0, 
          ),
        ),
        const SizedBox(height: 4),

        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            IconData icon;
            Color color = AppColors.yellow.withOpacity(0.8);

            if (index < fullStars) {
              icon = Icons.star; 
            } else if (index == fullStars && hasHalfStar) {
              icon = Icons.star_half; 
            } else {
              icon = Icons.star_border;
              color = Colors.grey.shade400; 
            }
            return Icon(icon, color: color, size: 24);
          }),
        ),
        const SizedBox(height: 4),


        Text(
          '$totalReviews Reviews',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class ReviewHeader extends StatelessWidget {
  const ReviewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Reviews',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
       
        Container(
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
     
            gradient: AppColors.primaryGradient
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add, color: Colors.white, size: 16),
                SizedBox(width: 4),
                Text(
                  'Write Review',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  
  }
}