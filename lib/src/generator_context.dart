part of code_generator;

class GeneratorContext {
  GeneratorContext._([SplayTreeMap<int, dynamic>? initial]) {
    if (initial != null) _storage.addAll(initial);
  }

  final _storage = SplayTreeMap<int, dynamic>();

  T get<T>(int key) {
    final item = _storage[key];
    if (item is T) return item;

    throw 'Invalid type detected';
  }

  void set<T>(int key, T data) {
    _storage[key] = data;
  }

  GeneratorContext clone() {
    return GeneratorContext._(SplayTreeMap.of(_storage));
  }
}
