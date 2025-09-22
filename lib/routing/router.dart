import 'package:compass_app_riverpod/routing/routes.dart';
import 'package:compass_app_riverpod/ui/auth/login/widgets/login_screen.dart';
import 'package:compass_app_riverpod/ui/home/widgets/home_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouter = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.login,
    debugLogDiagnostics: true,
    redirect: _redirect,
    routes: [
      GoRoute(path: Routes.home, builder: (context, state) => const HomeScreen()),
      GoRoute(path: Routes.login, builder: (context, state) => LoginScreen()),
    ],
  );
});

// From https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/redirection.dart
Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  // if the user is not logged in, they need to login
  // final loggedIn = await context.read<AuthRepository>().isAuthenticated;
  // final loggingIn = state.matchedLocation == Routes.login;
  // if (!loggedIn) {
  //   return Routes.login;
  // }

  // // if the user is logged in but still on the login page, send them to
  // // the home page
  // if (loggingIn) {
  //   return Routes.home;
  // }

  // no need to redirect at all
  return null;
}
