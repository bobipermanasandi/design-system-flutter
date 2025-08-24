/// Nullable Extensions
extension NullableExtensions<T> on T? {
  /// Check if value is not null
  bool get isNotNull => this != null;

  /// Check if value is null
  bool get isNull => this == null;

  /// Execute function if not null
  R? let<R>(R Function(T) transform) {
    if (this != null) {
      return transform(this as T);
    }
    return null;
  }
}
