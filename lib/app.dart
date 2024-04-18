import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype/utils/theme/theme.dart';
import 'package:prototype/features/authentication/screens/maps/map.dart';
import 'package:prototype/features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      home: map(),
    );
  }
}
