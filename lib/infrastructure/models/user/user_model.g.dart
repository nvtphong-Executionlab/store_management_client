// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      ID: json['ID'] as int,
      username: json['Username'] as String,
      position: json['Position'] as String,
      storeID: json['StoreID'] as int,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'ID': instance.ID,
      'Username': instance.username,
      'Position': instance.position,
      'StoreID': instance.storeID,
    };
