import 'package:ddeelly/core/imports/imports.dart';
import 'package:ddeelly/utils/custom_button.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/custom_title_des_widget.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/location_date_time_widget.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/location_widget.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/percent_off_widget.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/review_card.dart';

import 'package:ddeelly/view/screens/detail_page/widgets/review_summary_card.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/socal_share_widget.dart';

class DetailPageBodyWidget extends StatelessWidget {
  const DetailPageBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      // height: height * 95,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PercentOffWidget(),
              const AppText(
                  text: AppStrings.ristorante,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black),
              const LocationWidget(),
              const Gap(10.0),
              const LocationDateTimeWidget(),
              const Gap(10.0),
              const SocalShareWidget(),
              const Divider(
                color: AppColors.dividerColor,
              ),
              const Gap(10.0),
              const AppText(
                  text: AppStrings.description,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black),
              const CustomTitleDesWidget(
                  text: AppStrings.highlights, description: AppStrings.patrons),
              const AppText(
                  text: AppStrings.aboutTheseDeals,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black),
              const CustomTitleDesWidget(
                  text: AppStrings.highlights, description: AppStrings.patrons),
              const Gap(10.0),
              const Divider(
                color: AppColors.dividerColor,
              ),
              const Gap(10.0),
              const AppText(
                  text: AppStrings.terms,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black),
              const CustomTitleDesWidget(
                  text: AppStrings.finePrint, description: AppStrings.patrons),
              const CustomTitleDesWidget(
                  text: AppStrings.validDay,
                  description: AppStrings.validDayDes),
              const Gap(10.0),
              const Divider(
                color: AppColors.dividerColor,
              ),
              const Gap(10.0),
              const AppText(
                  text: AppStrings.storeDetails,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black),
              const AppText(
                text: AppStrings.tjFoods,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const LocationWidget(),
              const Gap(10.0),
              const Divider(
                color: AppColors.dividerColor,
              ),
              const Gap(10.0),
              const ReviewHeader(),
              const Gap(10.0),
              const StaticReviewSummaryCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const AppText(
                text: AppStrings.suggestedDeals,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              const Gap(10.0),
              const DealOfTheDay(),
              const Gap(20.0),

              Row(
                children: [
                  const Expanded(
                    child: StaticGradientButton(
                      text: AppStrings.addToCart,
                      width: double
                          .infinity, 
                    ),
                  ),
                  const Gap(10.0),
                  Expanded(
                    child: CustomButton(
                      text: AppStrings.buyNow,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
