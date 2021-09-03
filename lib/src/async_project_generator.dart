part of code_generator;

abstract class AsyncProjectGenerator<T extends Generatable> {
  Future<void> generate(GeneratorContext context, T generatable);

  static Future<void> execute(
    AsyncProjectGenerator generator,
    Generatable generatable, {
    CodeWriter? writer,
    GeneratorContext? context,
  }) {
    writer ??= CodeWriter();
    context ??= GeneratorContext._();

    return generator.generate(context, generatable);
  }
}
