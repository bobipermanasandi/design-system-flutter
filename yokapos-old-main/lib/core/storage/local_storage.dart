import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../errors/exceptions.dart';

/// Local Storage interface
abstract class LocalStorage {
  Future<void> setString(String key, String value);
  Future<String?> getString(String key);
  Future<void> setInt(String key, int value);
  Future<int?> getInt(String key);
  Future<void> setBool(String key, bool value);
  Future<bool?> getBool(String key);
  Future<void> setDouble(String key, double value);
  Future<double?> getDouble(String key);
  Future<void> setStringList(String key, List<String> value);
  Future<List<String>?> getStringList(String key);
  Future<void> remove(String key);
  Future<void> clear();
  Future<bool> containsKey(String key);
  Future<Set<String>> getKeys();
}

/// Local Storage implementation using SharedPreferences
@Injectable(as: LocalStorage)
class LocalStorageImpl implements LocalStorage {
  LocalStorageImpl(this._preferences);

  final SharedPreferences _preferences;

  @override
  Future<void> setString(String key, String value) async {
    try {
      await _preferences.setString(key, value);
    } catch (e) {
      throw CacheException(message: 'Failed to save string to local storage: $e');
    }
  }

  @override
  Future<String?> getString(String key) async {
    try {
      return _preferences.getString(key);
    } catch (e) {
      throw CacheException(message: 'Failed to get string from local storage: $e');
    }
  }

  @override
  Future<void> setInt(String key, int value) async {
    try {
      await _preferences.setInt(key, value);
    } catch (e) {
      throw CacheException(message: 'Failed to save int to local storage: $e');
    }
  }

  @override
  Future<int?> getInt(String key) async {
    try {
      return _preferences.getInt(key);
    } catch (e) {
      throw CacheException(message: 'Failed to get int from local storage: $e');
    }
  }

  @override
  Future<void> setBool(String key, bool value) async {
    try {
      await _preferences.setBool(key, value);
    } catch (e) {
      throw CacheException(message: 'Failed to save bool to local storage: $e');
    }
  }

  @override
  Future<bool?> getBool(String key) async {
    try {
      return _preferences.getBool(key);
    } catch (e) {
      throw CacheException(message: 'Failed to get bool from local storage: $e');
    }
  }

  @override
  Future<void> setDouble(String key, double value) async {
    try {
      await _preferences.setDouble(key, value);
    } catch (e) {
      throw CacheException(message: 'Failed to save double to local storage: $e');
    }
  }

  @override
  Future<double?> getDouble(String key) async {
    try {
      return _preferences.getDouble(key);
    } catch (e) {
      throw CacheException(message: 'Failed to get double from local storage: $e');
    }
  }

  @override
  Future<void> setStringList(String key, List<String> value) async {
    try {
      await _preferences.setStringList(key, value);
    } catch (e) {
      throw CacheException(message: 'Failed to save string list to local storage: $e');
    }
  }

  @override
  Future<List<String>?> getStringList(String key) async {
    try {
      return _preferences.getStringList(key);
    } catch (e) {
      throw CacheException(message: 'Failed to get string list from local storage: $e');
    }
  }

  @override
  Future<void> remove(String key) async {
    try {
      await _preferences.remove(key);
    } catch (e) {
      throw CacheException(message: 'Failed to remove from local storage: $e');
    }
  }

  @override
  Future<void> clear() async {
    try {
      await _preferences.clear();
    } catch (e) {
      throw CacheException(message: 'Failed to clear local storage: $e');
    }
  }

  @override
  Future<bool> containsKey(String key) async {
    try {
      return _preferences.containsKey(key);
    } catch (e) {
      throw CacheException(message: 'Failed to check local storage key: $e');
    }
  }

  @override
  Future<Set<String>> getKeys() async {
    try {
      return _preferences.getKeys();
    } catch (e) {
      throw CacheException(message: 'Failed to get local storage keys: $e');
    }
  }
}