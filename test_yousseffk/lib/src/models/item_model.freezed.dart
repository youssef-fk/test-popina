// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
class _$ItemModelTearOff {
  const _$ItemModelTearOff();

  _ItemModel call(
      {required int id,
      required String object,
      required String name,
      required int price,
      required String currency,
      required Color color}) {
    return _ItemModel(
      id: id,
      object: object,
      name: name,
      price: price,
      currency: currency,
      color: color,
    );
  }

  ItemModel fromJson(Map<String, Object?> json) {
    return ItemModel.fromJson(json);
  }
}

/// @nodoc
const $ItemModel = _$ItemModelTearOff();

/// @nodoc
mixin _$ItemModel {
  int get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String object,
      String name,
      int price,
      String currency,
      Color color});
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res> implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  final ItemModel _value;
  // ignore: unused_field
  final $Res Function(ItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      object: object == freezed
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$ItemModelCopyWith(
          _ItemModel value, $Res Function(_ItemModel) then) =
      __$ItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String object,
      String name,
      int price,
      String currency,
      Color color});
}

/// @nodoc
class __$ItemModelCopyWithImpl<$Res> extends _$ItemModelCopyWithImpl<$Res>
    implements _$ItemModelCopyWith<$Res> {
  __$ItemModelCopyWithImpl(_ItemModel _value, $Res Function(_ItemModel) _then)
      : super(_value, (v) => _then(v as _ItemModel));

  @override
  _ItemModel get _value => super._value as _ItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? color = freezed,
  }) {
    return _then(_ItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      object: object == freezed
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@ColorConverter()
class _$_ItemModel implements _ItemModel {
  const _$_ItemModel(
      {required this.id,
      required this.object,
      required this.name,
      required this.price,
      required this.currency,
      required this.color});

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelFromJson(json);

  @override
  final int id;
  @override
  final String object;
  @override
  final String name;
  @override
  final int price;
  @override
  final String currency;
  @override
  final Color color;

  @override
  String toString() {
    return 'ItemModel(id: $id, object: $object, name: $name, price: $price, currency: $currency, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.object, object) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(object),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      __$ItemModelCopyWithImpl<_ItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelToJson(this);
  }
}

abstract class _ItemModel implements ItemModel {
  const factory _ItemModel(
      {required int id,
      required String object,
      required String name,
      required int price,
      required String currency,
      required Color color}) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  int get id;
  @override
  String get object;
  @override
  String get name;
  @override
  int get price;
  @override
  String get currency;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
