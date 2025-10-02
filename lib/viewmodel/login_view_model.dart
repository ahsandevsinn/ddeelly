import 'dart:developer';
import 'package:ddeelly/utils/snack_bar.dart';
import 'package:ddeelly/view/screens/bottom_nav/bottom_navbar.dart';
import 'package:ddeelly/view/screens/splash/splash_screen.dart';

import '../../../core/imports/imports.dart';

class LoginViewModel extends ChangeNotifier {
  LoginService loginService = LoginService();
  bool _agreeToTerms = false;
  bool _isPasswordVisible = false;
  bool _isLoading = false;

  bool get agreeToTerms => _agreeToTerms;
  bool get isPasswordVisible => _isPasswordVisible;
  bool get isLoading => _isLoading;

  setAgreeToTerms(value) {
    _agreeToTerms = value;
    notifyListeners();
  }

  setLoading(value) {
    _isLoading = value;
    notifyListeners();
  }

  loginApi(context, String email, String password) async {
    try {
      setLoading(true);
      LoginResponseModel result = await LoginService.login(
        email,
        password,
      );
      setLoading(false);
      if (result.response != null) {
         log(result.response?.data?.fullName.toString() ?? "no name");
        showCustomSnackBar(context, message: "Login Successfully");
        push(context,  BottomNavbar());
      } else {
        showCustomSnackBar(context, message: "Login Failed");
      }
     
    } catch (e) {
      setLoading(false);

      print(e.toString());
    }
  }
}
