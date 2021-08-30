part of code_generator;

/// A wrapper around T which transforms and stores information that is used by
/// the generator to generate code.
abstract class Generatable<T> {
  /// Creates an instance of [Generatable]
  Generatable(this.source);

  @protected
  final T source;

  /// It transforms [source] to a generatable state. The generatable state pre
  /// calculates some additional information based on the information provided by
  /// source.
  ///
  /// User must not execute this function, this is only called by internal
  /// libraries but user is required to provide a valid implementation for this
  /// method.
  @protected
  void transform();

  var _isTransformed = false;
  void _transform() {
    if (_isTransformed) return;

    transform();
    _isTransformed = true;
  }
}
