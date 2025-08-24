// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  roleId: (json['role_id'] as num?)?.toInt(),
  businessId: (json['business_id'] as num?)?.toInt(),
  outletId: (json['outlet_id'] as num?)?.toInt(),
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role_id': instance.roleId,
      'business_id': instance.businessId,
      'outlet_id': instance.outletId,
      'phone': instance.phone,
    };
