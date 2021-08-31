part of code_generator;

class GeneratorContext {
  GeneratorContext._();

  final _storage = SplayTreeMap<int, dynamic>();

  T get<T>(int key) {
    final item = _storage[key];
    if (key is T) return item;

    throw 'Invalid type detected';
  }

  void set<T>(int key, T data) {
    _storage[key] = data;
  }
}
