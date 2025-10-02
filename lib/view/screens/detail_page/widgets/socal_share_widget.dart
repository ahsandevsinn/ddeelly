import 'package:ddeelly/core/imports/imports.dart';

class SocalShareWidget extends StatelessWidget {
  const SocalShareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppText(text: AppStrings.share,fontSize: 14,fontWeight: FontWeight.w500,),
        Row(
          children: [
            SvgPicture.asset(AppImages.facebook,height: 30,width: 30,),
            const Gap(5.0),
            SvgPicture.asset(AppImages.twitter,height: 30,width: 30,),
            const Gap(5.0),

            SvgPicture.asset(AppImages.whatsapp,height: 30,width: 30,),
            const Gap(5.0),

            SvgPicture.asset(AppImages.copy,height: 30,width: 30,),
          ],
        ),
      ],
    );
  }
}