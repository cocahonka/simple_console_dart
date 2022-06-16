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
    '-C',
    context.vars['name'],
  ]);
  pubAddProgress.complete();

  Process.runSync('dart', [
    'pub',
    'get',
    '-C',
    context.vars['name'],
  ]);
  pubGetProgress.complete();
  createProgress.complete();
}
