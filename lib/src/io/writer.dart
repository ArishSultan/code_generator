import 'dart:io';

import 'package:path/path.dart';

class CodeWriter {
  static Future<void> write(List<String> pathSegments, String content) async {
    final file = File(joinAll(pathSegments));

    if (!await file.exists()) await file.create();
    await file.writeAsString(content);
  }

  static void writeSync(List<String> pathSegments, String content) {
    final file = File(joinAll(pathSegments));

    if (!file.existsSync()) file.createSync();
    file.writeAsStringSync(content);
  }

  static Future<void> prepareDir(List<String> pathSegments) async {
    final directory = Directory(joinAll(pathSegments));
    if (await directory.exists()) {
      await directory.delete(recursive: true);
    }

    await directory.create();
  }

  static void prepareDirSync(List<String> pathSegments) {
    final directory = Directory(joinAll(pathSegments));
    if (directory.existsSync()) {
      directory.deleteSync(recursive: true);
    }

    directory.createSync();
  }
}
