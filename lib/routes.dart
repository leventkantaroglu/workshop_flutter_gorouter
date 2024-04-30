import 'package:go_router/go_router.dart';

import 'package:workshop_flutter_gorouter/details_screen.dart';
import 'package:workshop_flutter_gorouter/error_screen.dart';
import 'package:workshop_flutter_gorouter/home_screen.dart';
import 'package:workshop_flutter_gorouter/info_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(title: "Home"),
      routes: [
        GoRoute(
          path: 'details',
          builder: (context, state) => const DetailsScreen(),
        ),
        GoRoute(
          path: 'info',
          builder: (context, state) => const InfoScreen(),
        ),
      ],
    ),
  ],
  // errorPageBuilder: (context, state) {
  //   return const MaterialPage(
  //     child: ErrorScreen(),
  //   );
  // },
  errorBuilder: (context, state) {
    return const ErrorScreen();
  },
);
