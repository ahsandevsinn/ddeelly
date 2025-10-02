import '../../../core/imports/imports.dart';


void showCustomSnackBar(
  context, {
  required String message,
  Duration duration = const Duration(seconds: 3),
}) {
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    elevation: 0,
    backgroundColor: Colors.transparent, 
    duration: duration,
    content: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
