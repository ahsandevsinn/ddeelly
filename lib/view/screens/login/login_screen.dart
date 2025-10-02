
import 'package:ddeelly/utils/custom_button.dart';

import '../../../core/imports/imports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController(text: "temp17706@gmail.com");
  final _passwordController = TextEditingController(text: "123456789");
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(height * 0.1),
              const BackToSignInWidget(),
              Gap(height * 0.1),
              Center(child: SvgPicture.asset(AppImages.appLogo)),
              const Gap(40.0),
              const AppText(
                text: AppStrings.email,
                fontWeight: FontWeight.w500,
              ),
              CustomTextfield(
                controller: _emailController,
                hintText: AppStrings.email,
              ),
              const Gap(10.0),
              const AppText(
                text: AppStrings.password,
                fontWeight: FontWeight.w500,
              ),
              CustomTextfield(
                controller: _passwordController,
                hintText: AppStrings.password,
              ),
              const Align(
                  alignment: Alignment.topRight,
                  child: AppText(
                    text: AppStrings.forgotPassword,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blue,
                  )),
              const LoginCheckBoxWidget(),
              const Gap(40.0),
              Center(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text: AppStrings.dontHaveAnAccount,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.black)),
                      TextSpan(
                          text: AppStrings.signUp,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary)),
                    ],
                  ),
                ),
              ),
              const Gap(40.0),
              Consumer<LoginViewModel>(builder: (context, loginViewModel, child) {
                return loginViewModel.isLoading
                    ? const Center(
                        child: ShowLoader(),
                      )
                    : CustomButton(
                        text: AppStrings.login,
                        onTap: () {
                          loginViewModel.loginApi(context, _emailController.text,
                              _passwordController.text);
                        });
              }),
              const Gap(20.0),

            ],
          ),
        ),
      ),
    );
  }
}
