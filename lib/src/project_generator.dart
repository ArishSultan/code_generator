part of code_generator;

abstract class ProjectGenerator<T extends Generatable> {
  FutureOr<void> generate(GeneratorContext context, T generatable);

  static FutureOr<void> execute(
    ProjectGenerator generator,
    Generatable generatable, [
    GeneratorContext? context,
  ]) {
    if (context != null) context = GeneratorContext._();
    return generator.generate(context!, generatable);
  }
}
