
import 'package:ddeelly/core/imports/imports.dart'; 

class UpcomingDealWidget extends StatelessWidget {
  final String text;
  final String subTitle;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  const UpcomingDealWidget({
    super.key,
    required this.text,
    required this.subTitle,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 45,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            text: text,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
          AppText(
            text: subTitle,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ],
      ),
    );
  }
}
