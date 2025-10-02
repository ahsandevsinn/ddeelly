import 'package:ddeelly/core/imports/imports.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.location_on_outlined, color: AppColors.grey, size: 16),
        Gap(5.0),
        AppText(text: AppStrings.abuDhabi, fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.grey),
      ],
    );
  }
}