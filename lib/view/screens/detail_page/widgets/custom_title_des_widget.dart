import 'package:ddeelly/core/imports/imports.dart';

class CustomTitleDesWidget extends StatelessWidget {
  final String text;
  final String description;
  const CustomTitleDesWidget({super.key , required this.text, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: text,fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.black,),
        Gap(5.0),
        AppText(text: description,fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.mediumGrey,),
      ],
    );
  }
}