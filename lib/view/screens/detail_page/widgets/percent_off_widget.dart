import 'package:ddeelly/core/imports/imports.dart';

class PercentOffWidget extends StatelessWidget {
  const PercentOffWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [AppColors.primary, AppColors.blue],
          ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: AppStrings.thirtyOff,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: AppStrings.off,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppImages.fire,
                  height: 20,
                  width: 20,
                ),
                const Gap(5.0),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: AppStrings.sold,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey),
                      ),
                      TextSpan(
                        text: AppStrings.fiveSixFour,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                AppText(
                    text: AppStrings.fiveZero,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey),
                Icon(Icons.star, color: AppColors.primary, size: 16),
                AppText(
                  text: AppStrings.sevenReviews,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
