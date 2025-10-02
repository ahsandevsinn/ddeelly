import '../../../../../core/imports/imports.dart';

class BackToSignInWidget extends StatelessWidget {
  const BackToSignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.arrow_back),
        Gap(5.0),
        AppText(
          text: AppStrings.signIn,
          fontSize: 25,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
