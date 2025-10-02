import 'package:ddeelly/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../core/imports/imports.dart';

class LoginCheckBoxWidget extends StatelessWidget {
  const LoginCheckBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer<LoginViewModel>(builder: (context, loginViewModel, child) {
          return Checkbox(
            activeColor: AppColors.black,
            side: const BorderSide(color: AppColors.black),
            value: loginViewModel.agreeToTerms,
            onChanged: (value) {
              loginViewModel.setAgreeToTerms(value);
            },
          );
        }),
        const Expanded(
          child: AppText(
            text: AppStrings.agreeToTerms,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
