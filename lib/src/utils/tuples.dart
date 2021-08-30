/// A Tuple to hold 2 values
class Tuple2<T, U> {
  /// Creates an instance of [Tuple2]
  const Tuple2(this.$1, this.$2);

  /// first value of type [T]
  final T $1;

  /// second value of type [U]
  final U $2;
}

/// A Tuple to hold 3 values
class Tuple3<T, U, V> {
  /// Creates an instance of [Tuple3]
  const Tuple3(this.$1, this.$2, this.$3);

  /// first value of type [T]
  final T $1;

  /// second value of type [U]
  final U $2;

  /// third value of type [V]
  final V $3;
}
