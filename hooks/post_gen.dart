import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final pubAddProgress = context.logger.progress('Pub add');
  final pubGetProgress = context.logger.progress('Pub get');
  final createProgress =
      context.logger.progress('Simple console app created successfully!');

  Process.runSync('dart', [
    'pub',
    'add',
    'very_good_analysis',
    '-d',
  ]);
  pubAddProgress.complete();

  Process.runSync('dart', [
    'pub',
    'get',
  ]);
  pubGetProgress.complete();
  createProgress.complete();
}
