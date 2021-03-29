// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'portfolio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$portfolioTearOff {
  const _$portfolioTearOff();

  _portfolio call(
      {required String price, required String amount, required String name}) {
    return _portfolio(
      price: price,
      amount: amount,
      name: name,
    );
  }
}

/// @nodoc
const $portfolio = _$portfolioTearOff();

/// @nodoc
mixin _$portfolio {
  String get price => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $portfolioCopyWith<portfolio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $portfolioCopyWith<$Res> {
  factory $portfolioCopyWith(portfolio value, $Res Function(portfolio) then) =
      _$portfolioCopyWithImpl<$Res>;
  $Res call({String price, String amount, String name});
}

/// @nodoc
class _$portfolioCopyWithImpl<$Res> implements $portfolioCopyWith<$Res> {
  _$portfolioCopyWithImpl(this._value, this._then);

  final portfolio _value;
  // ignore: unused_field
  final $Res Function(portfolio) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? amount = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$portfolioCopyWith<$Res> implements $portfolioCopyWith<$Res> {
  factory _$portfolioCopyWith(
          _portfolio value, $Res Function(_portfolio) then) =
      __$portfolioCopyWithImpl<$Res>;
  @override
  $Res call({String price, String amount, String name});
}

/// @nodoc
class __$portfolioCopyWithImpl<$Res> extends _$portfolioCopyWithImpl<$Res>
    implements _$portfolioCopyWith<$Res> {
  __$portfolioCopyWithImpl(_portfolio _value, $Res Function(_portfolio) _then)
      : super(_value, (v) => _then(v as _portfolio));

  @override
  _portfolio get _value => super._value as _portfolio;

  @override
  $Res call({
    Object? price = freezed,
    Object? amount = freezed,
    Object? name = freezed,
  }) {
    return _then(_portfolio(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_portfolio implements _portfolio {
  const _$_portfolio(
      {required this.price, required this.amount, required this.name});

  @override
  final String price;
  @override
  final String amount;
  @override
  final String name;

  double get_total() {
    return double.parse(this.price) * double.parse(this.amount);
  }

  @override
  String toString() {
    return 'portfolio(price: $price, amount: $amount, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _portfolio &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$portfolioCopyWith<_portfolio> get copyWith =>
      __$portfolioCopyWithImpl<_portfolio>(this, _$identity);
}

abstract class _portfolio implements portfolio {
  const factory _portfolio(
      {required String price,
      required String amount,
      required String name}) = _$_portfolio;

  @override
  String get price => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$portfolioCopyWith<_portfolio> get copyWith =>
      throw _privateConstructorUsedError;
}
