import 'package:ddeelly/core/imports/imports.dart';



class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const Gap(50.0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  AppText(
                    text: AppStrings.uae,
                    color: Color(0xff101928),
                    fontWeight: FontWeight.w800,
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
              SvgPicture.asset(
                AppImages.appLogo,
                height: 30,
              ),
              SvgPicture.asset(
                AppImages.cartbadge,
                height: 30,
              )
            ],
          ),
        ),
        const Gap(10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: width * 0.75,
                child: HomePageTextfield(
                  prefixIcon: Icons.search,
                  hintText: AppStrings.search,
                )),
            const FilterWidget(),
          ],
        ),
      ],
    );
  }
}
