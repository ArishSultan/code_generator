part of code_generator;

abstract class Generator<T extends Generatable> {
  String generate(GeneratorContext context, T generatable);

  static String execute(
    Generator generator,
    Generatable generatable, [
    GeneratorContext? context,
  ]) {
    if (context != null) context = GeneratorContext._();
    return generator.generate(context!, generatable);
  }
}
