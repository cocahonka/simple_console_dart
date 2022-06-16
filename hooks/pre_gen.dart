import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final dartVersionOutput = Process.runSync(
    'dart',
    ['--version'],
  ).stdout as String;

  final dartVersion = RegExp(r'version: (\S*)')
                        .firstMatch(dartVersionOutput)
                        !.group(1);

  context.vars = {...context.vars, 'dart_version': dartVersion};
}
