import 'package:equatable/equatable.dart';

class BaseResponseModel<T> extends Equatable {
  const BaseResponseModel({this.code, this.error, this.message, this.data});

  final int? code;
  final bool? error;
  final String? message;
  final T? data;

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic> json) fromJsonT,
  ) {
    return BaseResponseModel(
      code: json['code'] as int?,
      error: json['error'] as bool?,
      message: json['message'] as String?,
      data: json['data'] != null ? fromJsonT(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) {
    return {
      'code': code,
      'error': error,
      'message': message,
      'data': data != null ? toJsonT(data as T) : null,
    };
  }

  BaseResponseModel<T> copyWith({
    int? code,
    bool? error,
    String? message,
    T? data,
  }) {
    return BaseResponseModel<T>(
      code: code ?? this.code,
      error: error ?? this.error,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  @override
  List<Object?> get props => [code, error, message, data];
}
