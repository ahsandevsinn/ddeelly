import 'package:ddeelly/core/constants/app_colors.dart';
import 'package:ddeelly/core/imports/imports.dart';
// 

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String? text;
  final double? fontSize;
  final Function()? onTap;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? size;

  CustomButton({
    super.key,
    this.height = 48,
    this.width,
    this.size,
    this.color,
    this.onTap,
    this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: AppColors.primaryGradient,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(5.0),
          splashColor: Colors.white.withOpacity(0.3),
          highlightColor: Colors.white.withOpacity(0.1),
          child: Center(
            child: AppText(
              text: "$text",
              fontSize: fontSize ?? 16,
              fontWeight: fontWeight ?? FontWeight.w500,
              color: textColor ?? AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class StaticGradientButton extends StatelessWidget {
  final String? text;
  final double? width;
  const StaticGradientButton({super.key, this.text, this.width});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: GradientBorderPainter(
        radius: 12.0,
        strokeWidth: 2.0,
        gradient: AppColors.primaryGradient,
      ),
      child: Container(
        height: 50,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        alignment: Alignment.center,
        child: Text(
          text.toString(),
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primary),
        ),
      ),
    );
  }
}

class GradientBorderPainter extends CustomPainter {
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  GradientBorderPainter({
    required this.radius,
    required this.strokeWidth,
    required this.gradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    final RRect rRect = RRect.fromRectAndRadius(
      rect.deflate(strokeWidth / 2),
      Radius.circular(radius),
    );

    final Paint paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        pop(context);
      },
      child: const CircleAvatar(
        radius: 20,
        backgroundColor: AppColors.black,
        child: const Icon(
          Icons.chevron_left,
          color: AppColors.white,
          size: 30,
        ),
      ),
    );
  }
}
