import 'package:go_router/go_router.dart';
import 'package:prototype/features/authentication/screens/maps/map.dart';
import 'package:prototype/features/authentication/screens/onboarding/onboarding.dart';

class MyAppRoute {

  GoRouter router = GoRouter(
    initialLocation: "/onboarding",
    routes: <RouteBase>[
      GoRoute(
        path: "/home",
        name: "home",
        // builder: (context, state) => const HomeScreen(),
        ),
      GoRoute(
        path: "/map",
        name: "map",
        builder: (context, state) => map(),
        ),
      GoRoute(
        path: "/newsfeed",
        name: "newsfeed",
        // builder: (context, state) => const LoginScreen(),
        ),
      GoRoute(
        path: "/profile",
        name: "profile",
        // builder: (context, state) => const LoginScreen(),
        ),
      GoRoute(
        path: "/onboarding",
        name: "onboarding",
        builder: (context, state) => const OnBoardingScreen(),
        ),
    ],
  );
}