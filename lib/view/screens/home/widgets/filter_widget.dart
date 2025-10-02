
import 'package:ddeelly/core/imports/imports.dart';


class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:  Center(child: SvgPicture.asset(AppImages.filter,height: 20,))
    );
  }
}