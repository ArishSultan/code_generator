/// A wrapper that is used to enforce pass-by-value. inspired by pointers in
/// system programming languages like C++, C
///
/// Wrap the primitive values with [Ref] to pass them by reference such as
/// passing [int], [double] or [String].
class Ref<T> {
  /// Creates an instance of [Ref]
  Ref(this.value);

  /// The value that will be wrapped. i.e. the value that is to be shared
  /// across multiple functions, objects.
  T value;
}
