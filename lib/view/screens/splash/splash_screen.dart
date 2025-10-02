import '../../../core/imports/imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToLogin(context);
    super.initState();
  }

  goToLogin(context) {
    Future.delayed(const Duration(seconds: 3), () {
      push(context, const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
          child: SvgPicture.asset(
        AppImages.appLogo,
      )),
    );
  }
}
