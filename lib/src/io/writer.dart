import 'dart:io';

import 'package:path/path.dart';

typedef CodeFormatter = String Function(String);

class CodeWriter {
  final _formatters = <String, CodeFormatter>{};

  void registerFormatter(String name, CodeFormatter formatter) =>
      _formatters[name] = formatter;

  void unregisterFormatters(String name) => _formatters.remove(name);

  Future<void> write(List<String> pathSegments, String content) async {
    final file = File(joinAll(pathSegments));

    if (!await file.exists()) await file.create();

    await file.writeAsString(
      _formatters.values.fold(content, (value, e) => e(value.toString())),
    );
  }

  Future<void> prepareDir(List<String> pathSegments) async {
    final directory = Directory(joinAll(pathSegments));
    if (await directory.exists()) {
      await directory.delete(recursive: true);
    }

    await directory.create();
  }

  void writeSync(List<String> pathSegments, String content) {
    final file = File(joinAll(pathSegments));

    if (!file.existsSync()) file.createSync();
    file.writeAsStringSync(content);
  }

  void prepareDirSync(List<String> pathSegments) {
    final directory = Directory(joinAll(pathSegments));
    if (directory.existsSync()) {
      directory.deleteSync(recursive: true);
    }

    directory.createSync();
  }
}
