import 'dart:io';

class CodeWriter {
  static Future<void> prepareDir(String path) async {
    final directory = Directory(path);
    if (await directory.exists()) {
      await directory.delete(recursive: true);
    }

    await directory.create();
  }

  static void prepareDirSync(String path) {
    final directory = Directory(path);
    if (directory.existsSync()) {
      directory.deleteSync(recursive: true);
    }

    directory.createSync();
  }
}
