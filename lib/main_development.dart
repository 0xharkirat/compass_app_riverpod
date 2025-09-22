import 'package:compass_app_riverpod/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

void main() {
  Logger.root.level = Level.ALL;
  runApp(const ProviderScope(child: MainApp()));
}
