// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int,
      object: json['object'] as String,
      table: json['table'] as String,
      guests: json['guests'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'table': instance.table,
      'guests': instance.guests,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
