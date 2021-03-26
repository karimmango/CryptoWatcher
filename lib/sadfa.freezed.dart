// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sadfa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
class _$PayloadTearOff {
  const _$PayloadTearOff();

  _Payload call({required Status status, required List<Datum> data}) {
    return _Payload(
      status: status,
      data: data,
    );
  }

  Payload fromJson(Map<String, Object> json) {
    return Payload.fromJson(json);
  }
}

/// @nodoc
const $Payload = _$PayloadTearOff();

/// @nodoc
mixin _$Payload {
  Status get status => throw _privateConstructorUsedError;
  List<Datum> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res>;
  $Res call({Status status, List<Datum> data});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res> implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  final Payload _value;
  // ignore: unused_field
  final $Res Function(Payload) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }

  @override
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) then) =
      __$PayloadCopyWithImpl<$Res>;
  @override
  $Res call({Status status, List<Datum> data});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$PayloadCopyWithImpl<$Res> extends _$PayloadCopyWithImpl<$Res>
    implements _$PayloadCopyWith<$Res> {
  __$PayloadCopyWithImpl(_Payload _value, $Res Function(_Payload) _then)
      : super(_value, (v) => _then(v as _Payload));

  @override
  _Payload get _value => super._value as _Payload;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_Payload(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Payload implements _Payload {
  const _$_Payload({required this.status, required this.data});

  factory _$_Payload.fromJson(Map<String, dynamic> json) =>
      _$_$_PayloadFromJson(json);

  @override
  final Status status;
  @override
  final List<Datum> data;

  @override
  String toString() {
    return 'Payload(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Payload &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$PayloadCopyWith<_Payload> get copyWith =>
      __$PayloadCopyWithImpl<_Payload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PayloadToJson(this);
  }
}

abstract class _Payload implements Payload {
  const factory _Payload({required Status status, required List<Datum> data}) =
      _$_Payload;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$_Payload.fromJson;

  @override
  Status get status => throw _privateConstructorUsedError;
  @override
  List<Datum> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PayloadCopyWith<_Payload> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
class _$DatumTearOff {
  const _$DatumTearOff();

  _Datum call(
      {required int id,
      required String name,
      required String symbol,
      required String slug,
      required int numMarketPairs,
      required DateTime dateAdded,
      required List<String> tags,
      required double maxSupply,
      required double circulatingSupply,
      required double totalSupply,
      required Platform platform,
      required int cmcRank,
      required DateTime lastUpdated,
      required Quote quote}) {
    return _Datum(
      id: id,
      name: name,
      symbol: symbol,
      slug: slug,
      numMarketPairs: numMarketPairs,
      dateAdded: dateAdded,
      tags: tags,
      maxSupply: maxSupply,
      circulatingSupply: circulatingSupply,
      totalSupply: totalSupply,
      platform: platform,
      cmcRank: cmcRank,
      lastUpdated: lastUpdated,
      quote: quote,
    );
  }

  Datum fromJson(Map<String, Object> json) {
    return Datum.fromJson(json);
  }
}

/// @nodoc
const $Datum = _$DatumTearOff();

/// @nodoc
mixin _$Datum {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get numMarketPairs => throw _privateConstructorUsedError;
  DateTime get dateAdded => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  double get maxSupply => throw _privateConstructorUsedError;
  double get circulatingSupply => throw _privateConstructorUsedError;
  double get totalSupply => throw _privateConstructorUsedError;
  Platform get platform => throw _privateConstructorUsedError;
  int get cmcRank => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  Quote get quote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String symbol,
      String slug,
      int numMarketPairs,
      DateTime dateAdded,
      List<String> tags,
      double maxSupply,
      double circulatingSupply,
      double totalSupply,
      Platform platform,
      int cmcRank,
      DateTime lastUpdated,
      Quote quote});

  $PlatformCopyWith<$Res> get platform;
  $QuoteCopyWith<$Res> get quote;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res> implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  final Datum _value;
  // ignore: unused_field
  final $Res Function(Datum) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? slug = freezed,
    Object? numMarketPairs = freezed,
    Object? dateAdded = freezed,
    Object? tags = freezed,
    Object? maxSupply = freezed,
    Object? circulatingSupply = freezed,
    Object? totalSupply = freezed,
    Object? platform = freezed,
    Object? cmcRank = freezed,
    Object? lastUpdated = freezed,
    Object? quote = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      numMarketPairs: numMarketPairs == freezed
          ? _value.numMarketPairs
          : numMarketPairs // ignore: cast_nullable_to_non_nullable
              as int,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxSupply: maxSupply == freezed
          ? _value.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as double,
      circulatingSupply: circulatingSupply == freezed
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as double,
      totalSupply: totalSupply == freezed
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as double,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as Platform,
      cmcRank: cmcRank == freezed
          ? _value.cmcRank
          : cmcRank // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as Quote,
    ));
  }

  @override
  $PlatformCopyWith<$Res> get platform {
    return $PlatformCopyWith<$Res>(_value.platform, (value) {
      return _then(_value.copyWith(platform: value));
    });
  }

  @override
  $QuoteCopyWith<$Res> get quote {
    return $QuoteCopyWith<$Res>(_value.quote, (value) {
      return _then(_value.copyWith(quote: value));
    });
  }
}

/// @nodoc
abstract class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) then) =
      __$DatumCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String symbol,
      String slug,
      int numMarketPairs,
      DateTime dateAdded,
      List<String> tags,
      double maxSupply,
      double circulatingSupply,
      double totalSupply,
      Platform platform,
      int cmcRank,
      DateTime lastUpdated,
      Quote quote});

  @override
  $PlatformCopyWith<$Res> get platform;
  @override
  $QuoteCopyWith<$Res> get quote;
}

/// @nodoc
class __$DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(_Datum _value, $Res Function(_Datum) _then)
      : super(_value, (v) => _then(v as _Datum));

  @override
  _Datum get _value => super._value as _Datum;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? slug = freezed,
    Object? numMarketPairs = freezed,
    Object? dateAdded = freezed,
    Object? tags = freezed,
    Object? maxSupply = freezed,
    Object? circulatingSupply = freezed,
    Object? totalSupply = freezed,
    Object? platform = freezed,
    Object? cmcRank = freezed,
    Object? lastUpdated = freezed,
    Object? quote = freezed,
  }) {
    return _then(_Datum(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      numMarketPairs: numMarketPairs == freezed
          ? _value.numMarketPairs
          : numMarketPairs // ignore: cast_nullable_to_non_nullable
              as int,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxSupply: maxSupply == freezed
          ? _value.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as double,
      circulatingSupply: circulatingSupply == freezed
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as double,
      totalSupply: totalSupply == freezed
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as double,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as Platform,
      cmcRank: cmcRank == freezed
          ? _value.cmcRank
          : cmcRank // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as Quote,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Datum implements _Datum {
  const _$_Datum(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.slug,
      required this.numMarketPairs,
      required this.dateAdded,
      required this.tags,
      required this.maxSupply,
      required this.circulatingSupply,
      required this.totalSupply,
      required this.platform,
      required this.cmcRank,
      required this.lastUpdated,
      required this.quote});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$_$_DatumFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final String slug;
  @override
  final int numMarketPairs;
  @override
  final DateTime dateAdded;
  @override
  final List<String> tags;
  @override
  final double maxSupply;
  @override
  final double circulatingSupply;
  @override
  final double totalSupply;
  @override
  final Platform platform;
  @override
  final int cmcRank;
  @override
  final DateTime lastUpdated;
  @override
  final Quote quote;

  @override
  String toString() {
    return 'Datum(id: $id, name: $name, symbol: $symbol, slug: $slug, numMarketPairs: $numMarketPairs, dateAdded: $dateAdded, tags: $tags, maxSupply: $maxSupply, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, platform: $platform, cmcRank: $cmcRank, lastUpdated: $lastUpdated, quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Datum &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.numMarketPairs, numMarketPairs) ||
                const DeepCollectionEquality()
                    .equals(other.numMarketPairs, numMarketPairs)) &&
            (identical(other.dateAdded, dateAdded) ||
                const DeepCollectionEquality()
                    .equals(other.dateAdded, dateAdded)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.maxSupply, maxSupply) ||
                const DeepCollectionEquality()
                    .equals(other.maxSupply, maxSupply)) &&
            (identical(other.circulatingSupply, circulatingSupply) ||
                const DeepCollectionEquality()
                    .equals(other.circulatingSupply, circulatingSupply)) &&
            (identical(other.totalSupply, totalSupply) ||
                const DeepCollectionEquality()
                    .equals(other.totalSupply, totalSupply)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.cmcRank, cmcRank) ||
                const DeepCollectionEquality()
                    .equals(other.cmcRank, cmcRank)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)) &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(numMarketPairs) ^
      const DeepCollectionEquality().hash(dateAdded) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(maxSupply) ^
      const DeepCollectionEquality().hash(circulatingSupply) ^
      const DeepCollectionEquality().hash(totalSupply) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(cmcRank) ^
      const DeepCollectionEquality().hash(lastUpdated) ^
      const DeepCollectionEquality().hash(quote);

  @JsonKey(ignore: true)
  @override
  _$DatumCopyWith<_Datum> get copyWith =>
      __$DatumCopyWithImpl<_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DatumToJson(this);
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {required int id,
      required String name,
      required String symbol,
      required String slug,
      required int numMarketPairs,
      required DateTime dateAdded,
      required List<String> tags,
      required double maxSupply,
      required double circulatingSupply,
      required double totalSupply,
      required Platform platform,
      required int cmcRank,
      required DateTime lastUpdated,
      required Quote quote}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  String get slug => throw _privateConstructorUsedError;
  @override
  int get numMarketPairs => throw _privateConstructorUsedError;
  @override
  DateTime get dateAdded => throw _privateConstructorUsedError;
  @override
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  double get maxSupply => throw _privateConstructorUsedError;
  @override
  double get circulatingSupply => throw _privateConstructorUsedError;
  @override
  double get totalSupply => throw _privateConstructorUsedError;
  @override
  Platform get platform => throw _privateConstructorUsedError;
  @override
  int get cmcRank => throw _privateConstructorUsedError;
  @override
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  Quote get quote => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatumCopyWith<_Datum> get copyWith => throw _privateConstructorUsedError;
}

Platform _$PlatformFromJson(Map<String, dynamic> json) {
  return _Platform.fromJson(json);
}

/// @nodoc
class _$PlatformTearOff {
  const _$PlatformTearOff();

  _Platform call(
      {required int id,
      required String name,
      required String symbol,
      required String slug,
      required String tokenAddress}) {
    return _Platform(
      id: id,
      name: name,
      symbol: symbol,
      slug: slug,
      tokenAddress: tokenAddress,
    );
  }

  Platform fromJson(Map<String, Object> json) {
    return Platform.fromJson(json);
  }
}

/// @nodoc
const $Platform = _$PlatformTearOff();

/// @nodoc
mixin _$Platform {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get tokenAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlatformCopyWith<Platform> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformCopyWith<$Res> {
  factory $PlatformCopyWith(Platform value, $Res Function(Platform) then) =
      _$PlatformCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String symbol, String slug, String tokenAddress});
}

/// @nodoc
class _$PlatformCopyWithImpl<$Res> implements $PlatformCopyWith<$Res> {
  _$PlatformCopyWithImpl(this._value, this._then);

  final Platform _value;
  // ignore: unused_field
  final $Res Function(Platform) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? slug = freezed,
    Object? tokenAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      tokenAddress: tokenAddress == freezed
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PlatformCopyWith<$Res> implements $PlatformCopyWith<$Res> {
  factory _$PlatformCopyWith(_Platform value, $Res Function(_Platform) then) =
      __$PlatformCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String symbol, String slug, String tokenAddress});
}

/// @nodoc
class __$PlatformCopyWithImpl<$Res> extends _$PlatformCopyWithImpl<$Res>
    implements _$PlatformCopyWith<$Res> {
  __$PlatformCopyWithImpl(_Platform _value, $Res Function(_Platform) _then)
      : super(_value, (v) => _then(v as _Platform));

  @override
  _Platform get _value => super._value as _Platform;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? slug = freezed,
    Object? tokenAddress = freezed,
  }) {
    return _then(_Platform(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      tokenAddress: tokenAddress == freezed
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Platform implements _Platform {
  const _$_Platform(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.slug,
      required this.tokenAddress});

  factory _$_Platform.fromJson(Map<String, dynamic> json) =>
      _$_$_PlatformFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final String slug;
  @override
  final String tokenAddress;

  @override
  String toString() {
    return 'Platform(id: $id, name: $name, symbol: $symbol, slug: $slug, tokenAddress: $tokenAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Platform &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.tokenAddress, tokenAddress) ||
                const DeepCollectionEquality()
                    .equals(other.tokenAddress, tokenAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(tokenAddress);

  @JsonKey(ignore: true)
  @override
  _$PlatformCopyWith<_Platform> get copyWith =>
      __$PlatformCopyWithImpl<_Platform>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlatformToJson(this);
  }
}

abstract class _Platform implements Platform {
  const factory _Platform(
      {required int id,
      required String name,
      required String symbol,
      required String slug,
      required String tokenAddress}) = _$_Platform;

  factory _Platform.fromJson(Map<String, dynamic> json) = _$_Platform.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  String get slug => throw _privateConstructorUsedError;
  @override
  String get tokenAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlatformCopyWith<_Platform> get copyWith =>
      throw _privateConstructorUsedError;
}

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return _Quote.fromJson(json);
}

/// @nodoc
class _$QuoteTearOff {
  const _$QuoteTearOff();

  _Quote call({@JsonKey(name: 'USD') required Usd usd}) {
    return _Quote(
      usd: usd,
    );
  }

  Quote fromJson(Map<String, Object> json) {
    return Quote.fromJson(json);
  }
}

/// @nodoc
const $Quote = _$QuoteTearOff();

/// @nodoc
mixin _$Quote {
  @JsonKey(name: 'USD')
  Usd get usd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteCopyWith<Quote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'USD') Usd usd});

  $UsdCopyWith<$Res> get usd;
}

/// @nodoc
class _$QuoteCopyWithImpl<$Res> implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  final Quote _value;
  // ignore: unused_field
  final $Res Function(Quote) _then;

  @override
  $Res call({
    Object? usd = freezed,
  }) {
    return _then(_value.copyWith(
      usd: usd == freezed
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as Usd,
    ));
  }

  @override
  $UsdCopyWith<$Res> get usd {
    return $UsdCopyWith<$Res>(_value.usd, (value) {
      return _then(_value.copyWith(usd: value));
    });
  }
}

/// @nodoc
abstract class _$QuoteCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$QuoteCopyWith(_Quote value, $Res Function(_Quote) then) =
      __$QuoteCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'USD') Usd usd});

  @override
  $UsdCopyWith<$Res> get usd;
}

/// @nodoc
class __$QuoteCopyWithImpl<$Res> extends _$QuoteCopyWithImpl<$Res>
    implements _$QuoteCopyWith<$Res> {
  __$QuoteCopyWithImpl(_Quote _value, $Res Function(_Quote) _then)
      : super(_value, (v) => _then(v as _Quote));

  @override
  _Quote get _value => super._value as _Quote;

  @override
  $Res call({
    Object? usd = freezed,
  }) {
    return _then(_Quote(
      usd: usd == freezed
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as Usd,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Quote implements _Quote {
  const _$_Quote({@JsonKey(name: 'USD') required this.usd});

  factory _$_Quote.fromJson(Map<String, dynamic> json) =>
      _$_$_QuoteFromJson(json);

  @override
  @JsonKey(name: 'USD')
  final Usd usd;

  @override
  String toString() {
    return 'Quote(usd: $usd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Quote &&
            (identical(other.usd, usd) ||
                const DeepCollectionEquality().equals(other.usd, usd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usd);

  @JsonKey(ignore: true)
  @override
  _$QuoteCopyWith<_Quote> get copyWith =>
      __$QuoteCopyWithImpl<_Quote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuoteToJson(this);
  }
}

abstract class _Quote implements Quote {
  const factory _Quote({@JsonKey(name: 'USD') required Usd usd}) = _$_Quote;

  factory _Quote.fromJson(Map<String, dynamic> json) = _$_Quote.fromJson;

  @override
  @JsonKey(name: 'USD')
  Usd get usd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuoteCopyWith<_Quote> get copyWith => throw _privateConstructorUsedError;
}

Usd _$UsdFromJson(Map<String, dynamic> json) {
  return _Usd.fromJson(json);
}

/// @nodoc
class _$UsdTearOff {
  const _$UsdTearOff();

  _Usd call(
      {required double price,
      required double volume24H,
      required double percentChange1H,
      required double percentChange24H,
      required double percentChange7D,
      required double marketCap,
      required DateTime lastUpdated}) {
    return _Usd(
      price: price,
      volume24H: volume24H,
      percentChange1H: percentChange1H,
      percentChange24H: percentChange24H,
      percentChange7D: percentChange7D,
      marketCap: marketCap,
      lastUpdated: lastUpdated,
    );
  }

  Usd fromJson(Map<String, Object> json) {
    return Usd.fromJson(json);
  }
}

/// @nodoc
const $Usd = _$UsdTearOff();

/// @nodoc
mixin _$Usd {
  double get price => throw _privateConstructorUsedError;
  double get volume24H => throw _privateConstructorUsedError;
  double get percentChange1H => throw _privateConstructorUsedError;
  double get percentChange24H => throw _privateConstructorUsedError;
  double get percentChange7D => throw _privateConstructorUsedError;
  double get marketCap => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsdCopyWith<Usd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsdCopyWith<$Res> {
  factory $UsdCopyWith(Usd value, $Res Function(Usd) then) =
      _$UsdCopyWithImpl<$Res>;
  $Res call(
      {double price,
      double volume24H,
      double percentChange1H,
      double percentChange24H,
      double percentChange7D,
      double marketCap,
      DateTime lastUpdated});
}

/// @nodoc
class _$UsdCopyWithImpl<$Res> implements $UsdCopyWith<$Res> {
  _$UsdCopyWithImpl(this._value, this._then);

  final Usd _value;
  // ignore: unused_field
  final $Res Function(Usd) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? volume24H = freezed,
    Object? percentChange1H = freezed,
    Object? percentChange24H = freezed,
    Object? percentChange7D = freezed,
    Object? marketCap = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      volume24H: volume24H == freezed
          ? _value.volume24H
          : volume24H // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange1H: percentChange1H == freezed
          ? _value.percentChange1H
          : percentChange1H // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange24H: percentChange24H == freezed
          ? _value.percentChange24H
          : percentChange24H // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange7D: percentChange7D == freezed
          ? _value.percentChange7D
          : percentChange7D // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: marketCap == freezed
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UsdCopyWith<$Res> implements $UsdCopyWith<$Res> {
  factory _$UsdCopyWith(_Usd value, $Res Function(_Usd) then) =
      __$UsdCopyWithImpl<$Res>;
  @override
  $Res call(
      {double price,
      double volume24H,
      double percentChange1H,
      double percentChange24H,
      double percentChange7D,
      double marketCap,
      DateTime lastUpdated});
}

/// @nodoc
class __$UsdCopyWithImpl<$Res> extends _$UsdCopyWithImpl<$Res>
    implements _$UsdCopyWith<$Res> {
  __$UsdCopyWithImpl(_Usd _value, $Res Function(_Usd) _then)
      : super(_value, (v) => _then(v as _Usd));

  @override
  _Usd get _value => super._value as _Usd;

  @override
  $Res call({
    Object? price = freezed,
    Object? volume24H = freezed,
    Object? percentChange1H = freezed,
    Object? percentChange24H = freezed,
    Object? percentChange7D = freezed,
    Object? marketCap = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_Usd(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      volume24H: volume24H == freezed
          ? _value.volume24H
          : volume24H // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange1H: percentChange1H == freezed
          ? _value.percentChange1H
          : percentChange1H // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange24H: percentChange24H == freezed
          ? _value.percentChange24H
          : percentChange24H // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange7D: percentChange7D == freezed
          ? _value.percentChange7D
          : percentChange7D // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: marketCap == freezed
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)

/// @nodoc
class _$_Usd implements _Usd {
  const _$_Usd(
      {required this.price,
      required this.volume24H,
      required this.percentChange1H,
      required this.percentChange24H,
      required this.percentChange7D,
      required this.marketCap,
      required this.lastUpdated});

  factory _$_Usd.fromJson(Map<String, dynamic> json) => _$_$_UsdFromJson(json);

  @override
  final double price;
  @override
  final double volume24H;
  @override
  final double percentChange1H;
  @override
  final double percentChange24H;
  @override
  final double percentChange7D;
  @override
  final double marketCap;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Usd(price: $price, volume24H: $volume24H, percentChange1H: $percentChange1H, percentChange24H: $percentChange24H, percentChange7D: $percentChange7D, marketCap: $marketCap, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Usd &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.volume24H, volume24H) ||
                const DeepCollectionEquality()
                    .equals(other.volume24H, volume24H)) &&
            (identical(other.percentChange1H, percentChange1H) ||
                const DeepCollectionEquality()
                    .equals(other.percentChange1H, percentChange1H)) &&
            (identical(other.percentChange24H, percentChange24H) ||
                const DeepCollectionEquality()
                    .equals(other.percentChange24H, percentChange24H)) &&
            (identical(other.percentChange7D, percentChange7D) ||
                const DeepCollectionEquality()
                    .equals(other.percentChange7D, percentChange7D)) &&
            (identical(other.marketCap, marketCap) ||
                const DeepCollectionEquality()
                    .equals(other.marketCap, marketCap)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(volume24H) ^
      const DeepCollectionEquality().hash(percentChange1H) ^
      const DeepCollectionEquality().hash(percentChange24H) ^
      const DeepCollectionEquality().hash(percentChange7D) ^
      const DeepCollectionEquality().hash(marketCap) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @JsonKey(ignore: true)
  @override
  _$UsdCopyWith<_Usd> get copyWith =>
      __$UsdCopyWithImpl<_Usd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UsdToJson(this);
  }
}

abstract class _Usd implements Usd {
  const factory _Usd(
      {required double price,
      required double volume24H,
      required double percentChange1H,
      required double percentChange24H,
      required double percentChange7D,
      required double marketCap,
      required DateTime lastUpdated}) = _$_Usd;

  factory _Usd.fromJson(Map<String, dynamic> json) = _$_Usd.fromJson;

  @override
  double get price => throw _privateConstructorUsedError;
  @override
  double get volume24H => throw _privateConstructorUsedError;
  @override
  double get percentChange1H => throw _privateConstructorUsedError;
  @override
  double get percentChange24H => throw _privateConstructorUsedError;
  @override
  double get percentChange7D => throw _privateConstructorUsedError;
  @override
  double get marketCap => throw _privateConstructorUsedError;
  @override
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UsdCopyWith<_Usd> get copyWith => throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
class _$StatusTearOff {
  const _$StatusTearOff();

  _Status call(
      {required DateTime timestamp,
      required int errorCode,
      required dynamic errorMessage,
      required int elapsed,
      required int creditCount,
      required dynamic notice}) {
    return _Status(
      timestamp: timestamp,
      errorCode: errorCode,
      errorMessage: errorMessage,
      elapsed: elapsed,
      creditCount: creditCount,
      notice: notice,
    );
  }

  Status fromJson(Map<String, Object> json) {
    return Status.fromJson(json);
  }
}

/// @nodoc
const $Status = _$StatusTearOff();

/// @nodoc
mixin _$Status {
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get errorCode => throw _privateConstructorUsedError;
  dynamic get errorMessage => throw _privateConstructorUsedError;
  int get elapsed => throw _privateConstructorUsedError;
  int get creditCount => throw _privateConstructorUsedError;
  dynamic get notice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call(
      {DateTime timestamp,
      int errorCode,
      dynamic errorMessage,
      int elapsed,
      int creditCount,
      dynamic notice});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? elapsed = freezed,
    Object? creditCount = freezed,
    Object? notice = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      elapsed: elapsed == freezed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int,
      creditCount: creditCount == freezed
          ? _value.creditCount
          : creditCount // ignore: cast_nullable_to_non_nullable
              as int,
      notice: notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) then) =
      __$StatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime timestamp,
      int errorCode,
      dynamic errorMessage,
      int elapsed,
      int creditCount,
      dynamic notice});
}

/// @nodoc
class __$StatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$StatusCopyWith<$Res> {
  __$StatusCopyWithImpl(_Status _value, $Res Function(_Status) _then)
      : super(_value, (v) => _then(v as _Status));

  @override
  _Status get _value => super._value as _Status;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? elapsed = freezed,
    Object? creditCount = freezed,
    Object? notice = freezed,
  }) {
    return _then(_Status(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      elapsed: elapsed == freezed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int,
      creditCount: creditCount == freezed
          ? _value.creditCount
          : creditCount // ignore: cast_nullable_to_non_nullable
              as int,
      notice: notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Status implements _Status {
  const _$_Status(
      {required this.timestamp,
      required this.errorCode,
      required this.errorMessage,
      required this.elapsed,
      required this.creditCount,
      required this.notice});

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$_$_StatusFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final int errorCode;
  @override
  final dynamic errorMessage;
  @override
  final int elapsed;
  @override
  final int creditCount;
  @override
  final dynamic notice;

  @override
  String toString() {
    return 'Status(timestamp: $timestamp, errorCode: $errorCode, errorMessage: $errorMessage, elapsed: $elapsed, creditCount: $creditCount, notice: $notice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Status &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.elapsed, elapsed) ||
                const DeepCollectionEquality()
                    .equals(other.elapsed, elapsed)) &&
            (identical(other.creditCount, creditCount) ||
                const DeepCollectionEquality()
                    .equals(other.creditCount, creditCount)) &&
            (identical(other.notice, notice) ||
                const DeepCollectionEquality().equals(other.notice, notice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(elapsed) ^
      const DeepCollectionEquality().hash(creditCount) ^
      const DeepCollectionEquality().hash(notice);

  @JsonKey(ignore: true)
  @override
  _$StatusCopyWith<_Status> get copyWith =>
      __$StatusCopyWithImpl<_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatusToJson(this);
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {required DateTime timestamp,
      required int errorCode,
      required dynamic errorMessage,
      required int elapsed,
      required int creditCount,
      required dynamic notice}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  int get errorCode => throw _privateConstructorUsedError;
  @override
  dynamic get errorMessage => throw _privateConstructorUsedError;
  @override
  int get elapsed => throw _privateConstructorUsedError;
  @override
  int get creditCount => throw _privateConstructorUsedError;
  @override
  dynamic get notice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatusCopyWith<_Status> get copyWith => throw _privateConstructorUsedError;
}
