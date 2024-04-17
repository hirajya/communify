import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype/utils/theme/theme.dart';
import 'package:prototype/features/authentication/screens/news/News.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: News(),
      debugShowCheckedModeBanner: false, 

    );
  }
}
