import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype/utils/theme/theme.dart';
<<<<<<< HEAD
import 'package:prototype/features/authentication/screens/maps/map.dart';
import 'package:prototype/features/authentication/screens/onboarding/onboarding.dart';
=======
import 'package:prototype/features/authentication/screens/news/News.dart';
>>>>>>> News_Kit

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      home: map(),
=======
    return const GetMaterialApp(
      home: News(),
      debugShowCheckedModeBanner: false, 

>>>>>>> News_Kit
    );
  }
}
