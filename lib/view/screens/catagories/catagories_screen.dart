import 'package:ddeelly/core/imports/imports.dart';

class CatagoriesScreen extends StatelessWidget {
  const CatagoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: const Center(
        child: AppText(
          text: AppStrings.comingSoon,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
