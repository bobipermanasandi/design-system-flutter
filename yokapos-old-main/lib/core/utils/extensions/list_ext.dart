/// List Extensions
extension ListExtensions<T> on List<T> {
  /// Get element at index or null if out of bounds
  T? elementAtOrNull(int index) {
    if (index >= 0 && index < length) {
      return this[index];
    }
    return null;
  }

  /// Check if list is null or empty
  bool get isNullOrEmpty {
    return isEmpty;
  }

  /// Check if list is not null and not empty
  bool get isNotNullOrEmpty {
    return isNotEmpty;
  }

  /// Add element if not null
  void addIfNotNull(T? element) {
    if (element != null) {
      add(element);
    }
  }

  /// Add all elements if not null
  void addAllIfNotNull(Iterable<T>? elements) {
    if (elements != null) {
      addAll(elements);
    }
  }
}
