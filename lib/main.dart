import 'package:ddeelly/view/screens/bottom_nav/bottom_navbar.dart';
import 'package:ddeelly/view/screens/detail_page/detail_page.dart';
import 'package:ddeelly/view/screens/login/login_screen.dart';
import 'package:ddeelly/view/screens/splash/splash_screen.dart';
import 'package:ddeelly/viewmodel/calender_view_model.dart';
import 'package:ddeelly/viewmodel/detail_page_view_model.dart';
import 'package:ddeelly/viewmodel/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async{
  runApp(const MyApp());
   await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown, 
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>LoginViewModel()),
        ChangeNotifierProvider(create: (_)=>CalendarProvider()),
        ChangeNotifierProvider(create: (_)=>DetailPageViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      home: SplashScreen()
      ),
    );
  }
}
