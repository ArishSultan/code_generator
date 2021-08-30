part of code_generator;

class GeneratorContext {
  GeneratorContext._();

  final _storage = <String, dynamic>{};

  T get<T>(String key) {
    final item = _storage[key];
    if (key is T) return item;

    throw 'Invalid type detected';
  }

  void set<T>(String key, T data) {
    _storage[key] = data;
  }
}
