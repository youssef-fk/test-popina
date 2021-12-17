// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemModel _$$_ItemModelFromJson(Map<String, dynamic> json) => _$_ItemModel(
      id: json['id'] as int,
      object: json['object'] as String,
      name: json['name'] as String,
      price: json['price'] as int,
      currency: json['currency'] as String,
      color: const ColorConverter().fromJson(json['color'] as String),
    );

Map<String, dynamic> _$$_ItemModelToJson(_$_ItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'name': instance.name,
      'price': instance.price,
      'currency': instance.currency,
      'color': const ColorConverter().toJson(instance.color),
    };
