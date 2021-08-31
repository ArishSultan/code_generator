part of code_generator;

abstract class ProjectGenerator<T extends Generatable> {
  /// Performs all the processing to generate project based on the information
  /// provided by [generatable].
  ///
  /// This method must not be called intentionally, it is called by [generate]
  /// to ensure safety. if a user needs to call [process] instead of [generate]
  /// than [Generatable.transform] must be called explicitly to ensure safety.
  FutureOr<void> process(GeneratorContext context, T generatable);

  /// This must be called by user to initiate the generation of code. It is
  /// mandatory to provide [generatable] but it is not recommended to pass
  /// [context], since it is not possible for user to create and instance of
  /// [GeneratorContext]. Though the processing or the behaviour of generator
  /// must be defined in [process], and it is guaranteed that [process] will
  /// receive a valid [context].
  @mustCallSuper
  FutureOr<void> generate(T generatable) {
    generatable._transform();
    return process(GeneratorContext._(), generatable);
  }
}
