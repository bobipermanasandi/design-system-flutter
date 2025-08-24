import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'token') String? token,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
