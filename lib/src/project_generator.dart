part of code_generator;

abstract class ProjectGenerator<T extends Generatable> {
  void generate(GeneratorContext context, T generatable);

  static void execute(
    ProjectGenerator generator,
    Generatable generatable, {
    CodeWriter? writer,
    GeneratorContext? context,
  }) {
    writer ??= CodeWriter();
    context ??= GeneratorContext._();

    generator.generate(context, generatable);
  }
}
