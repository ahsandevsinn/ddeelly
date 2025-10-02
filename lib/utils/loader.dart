import '../../../core/imports/imports.dart';

class ShowLoader extends StatelessWidget {
  const ShowLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: AppColors.primaryGradient,
      ),
      child: const Center(
          child: CircularProgressIndicator(
        color: AppColors.white,
      )),
    );
  }
}
