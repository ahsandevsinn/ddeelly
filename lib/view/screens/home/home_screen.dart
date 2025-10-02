

import 'package:ddeelly/view/screens/detail_page/detail_page.dart';

import '../../../core/imports/imports.dart';
import 'widgets/catagory_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.backgroundColorHome,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HomePageHeader(),
              const Gap(10.0),
              Container(
                // height: height * 0.80,
                width: width,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(10.0),
                      const AppText(
                        text: AppStrings.filterCatagory,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      const Gap(10.0),
                      Center(
                        child: SizedBox(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: catagoryList.length,
                            itemBuilder: (context, index) {
                              final item = catagoryList[index];
                              return CatagorySection(
                                imagePath: item.imagePath,
                                text: item.text,
                                color: item.color,
                              );
                            },
                          ),
                        ),
                      ),
                      const Gap(10.0),
                      const Divider(
                        color: AppColors.dividerColor,
                      ),
                      const Gap(10.0),
                      const AppText(
                        text: AppStrings.filterDiscount,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: discountList.length,
                          itemBuilder: (context, index) {
                            final item = discountList[index];
                            return DiscountWidget(text: item.text);
                          },
                        ),
                      ),
                      const Gap(10.0),
                      const Divider(
                        color: AppColors.dividerColor,
                      ),
                      const Gap(10.0),
                      const AppText(
                        text: AppStrings.upcomingDeal,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      HorizontalCalendar(
                        startDate:
                            DateTime.now().subtract(const Duration(days: 30)),
                        endDate: DateTime.now().add(const Duration(days: 30)),
                      ),
                      const Gap(10.0),
                      const PromoCarousel(),
                      const Gap(10.0),
                      const AppText(
                        text: AppStrings.dealDay,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      const Gap(10.0),
                      GestureDetector(
                        onTap: (){
                          push(context, const DetailPage());
                        },
                        child: const DealOfTheDay()),
                                const AppText(
                        text: AppStrings.ourPartners,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      const Gap(10.0),
                      const PartnersGrid(),
                  
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
