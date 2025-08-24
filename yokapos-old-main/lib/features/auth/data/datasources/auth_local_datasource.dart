import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yokapos/core/storage/secure_storage.dart';
import 'package:yokapos/core/utils/extensions/model_ext.dart';
import 'package:yokapos/core/utils/extensions/string_ext.dart';
import 'package:yokapos/features/auth/data/models/responses/user.dart';

abstract class AuthLocalDataSource {
  Future<void> checkFirstRun();
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> deleteToken();

  Future<void> saveUser(User user);
  Future<void> removeUser();
  Future<User?> getUser();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final SecureStorage secureStorage;
  final SharedPreferences prefs;

  static const _keyFirstRun = 'FIRST_RUN';
  static const _keyToken = 'TOKEN';
  static const _keyUser = 'USER';

  AuthLocalDataSourceImpl(this.secureStorage, this.prefs);

  @override
  Future<void> checkFirstRun() async {
    try {
      log('Check First Run Apps');
      if (prefs.getBool(_keyFirstRun) ?? true) {
        await Future.wait([
          deleteToken(),
          removeUser(),
          prefs.setBool(_keyFirstRun, false),
        ]);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveToken(String token) async {
    try {
      await secureStorage.write(_keyToken, token);
      log('SAVE TOKEN');
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> getToken() async {
    try {
      final token = await secureStorage.read(_keyToken);
      return token;
    } catch (e) {
      return '';
    }
  }

  @override
  Future<void> deleteToken() async {
    try {
      await secureStorage.delete(_keyToken);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveUser(User user) async {
    try {
      await prefs.setString(_keyUser, user.toJsonString());
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> removeUser() async {
    try {
      await prefs.remove(_keyUser);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User?> getUser() async {
    try {
      final user = prefs.getString(_keyUser);
      if (user != null) {
        final userToMap = user.toUserModel().toJson();

        final userdata = User.fromJson(userToMap);
        return userdata;
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
