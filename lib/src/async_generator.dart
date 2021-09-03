part of code_generator;

abstract class AsyncGenerator<T> {
  Stream<String> generate(GeneratorContext context, T generatable);

  static Stream<String> execute(
    AsyncGenerator generator,
    Generatable generatable, [
    GeneratorContext? context,
  ]) {
    if (context != null) context = GeneratorContext._();
    return generator.generate(context!, generatable);
  }
}
