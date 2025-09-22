import 'package:compass_app_riverpod/main_development.dart' as development;
import 'package:compass_app_riverpod/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  development.main();
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouter);
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
