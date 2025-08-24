/// Map Extensions
extension MapExtensions<K, V> on Map<K, V> {
  /// Get value or default if key doesn't exist
  V getOrDefault(K key, V defaultValue) {
    return containsKey(key) ? this[key] as V : defaultValue;
  }

  /// Get value or null if key doesn't exist
  V? getOrNull(K key) {
    return containsKey(key) ? this[key] : null;
  }
}
