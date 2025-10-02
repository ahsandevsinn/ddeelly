import 'package:ddeelly/core/imports/imports.dart';

class DiscountWidget extends StatelessWidget {
  final String text;
  const DiscountWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 100,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.discountBorderColor)
        ),
        child: Center(
          child: AppText(
            text: text,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
        ));
  }
}
