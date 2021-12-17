import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_yousseffk/src/models/utils/color_converter.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  @ColorConverter()
  const factory ItemModel({
    required int id,
    required String object,
    required String name,
    required int price,
    required String currency,
    required Color color,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
}
