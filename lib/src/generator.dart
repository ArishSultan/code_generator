part of code_generator;

abstract class Generator<T extends Generatable> {
  /// Performs all the processing to generate code based on the information
  /// provided by [generatable].
  ///
  /// This method must not be called intentionally, it is called by [generate]
  /// to ensure safety. if a user needs to call [process] instead of [generate]
  /// than [Generatable.transform] must be called explicitly to ensure safety.
  String process(GeneratorContext context, T generatable);

  ///
  @mustCallSuper
  String generate(T generatable, [GeneratorContext? context]) {
    generatable._transform();
    return process(context ?? GeneratorContext._(), generatable);
  }
}
