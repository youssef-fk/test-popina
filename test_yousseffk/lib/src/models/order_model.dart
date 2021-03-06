// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const OrderModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrderModel({
    required int id,
    required String object,
    required String table,
    required int guests,
    required List<ItemModel> items,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

  int get totalPrice => items.fold(0, (previousValue, element) => previousValue + element.price);
  String get currency => items.isEmpty ? '' : items.first.currency;
}
