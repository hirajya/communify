import 'package:flutter/material.dart';
import 'package:prototype/app.dart';
import 'package:prototype/features/authentication/routes/app_route_constants.dart';
import 'package:prototype/features/authentication/screens/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
=======
            debugShowCheckedModeBanner: false, 

>>>>>>> News_Kit
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const App(),
    );
  }
}
