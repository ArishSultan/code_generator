part of code_generator;

/// A wrapper around T which transforms and stores information that is used by
/// the generator to generate code.
abstract class Generatable<T> {
  /// Creates an instance of [Generatable]
  Generatable(this.source);

  @protected
  final T source;
}
