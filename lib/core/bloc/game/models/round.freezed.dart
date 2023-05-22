// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Round _$RoundFromJson(Map<String, dynamic> json) {
  return _Round.fromJson(json);
}

/// @nodoc
mixin _$Round {
  Tweet get currentTweet => throw _privateConstructorUsedError;
  List<String> get answerPossibilities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoundCopyWith<Round> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoundCopyWith<$Res> {
  factory $RoundCopyWith(Round value, $Res Function(Round) then) =
      _$RoundCopyWithImpl<$Res, Round>;
  @useResult
  $Res call({Tweet currentTweet, List<String> answerPossibilities});
}

/// @nodoc
class _$RoundCopyWithImpl<$Res, $Val extends Round>
    implements $RoundCopyWith<$Res> {
  _$RoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTweet = freezed,
    Object? answerPossibilities = null,
  }) {
    return _then(_value.copyWith(
      currentTweet: freezed == currentTweet
          ? _value.currentTweet
          : currentTweet // ignore: cast_nullable_to_non_nullable
              as Tweet,
      answerPossibilities: null == answerPossibilities
          ? _value.answerPossibilities
          : answerPossibilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoundCopyWith<$Res> implements $RoundCopyWith<$Res> {
  factory _$$_RoundCopyWith(_$_Round value, $Res Function(_$_Round) then) =
      __$$_RoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tweet currentTweet, List<String> answerPossibilities});
}

/// @nodoc
class __$$_RoundCopyWithImpl<$Res> extends _$RoundCopyWithImpl<$Res, _$_Round>
    implements _$$_RoundCopyWith<$Res> {
  __$$_RoundCopyWithImpl(_$_Round _value, $Res Function(_$_Round) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTweet = freezed,
    Object? answerPossibilities = null,
  }) {
    return _then(_$_Round(
      currentTweet: freezed == currentTweet
          ? _value.currentTweet
          : currentTweet // ignore: cast_nullable_to_non_nullable
              as Tweet,
      answerPossibilities: null == answerPossibilities
          ? _value._answerPossibilities
          : answerPossibilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Round implements _Round {
  _$_Round(
      {required this.currentTweet,
      required final List<String> answerPossibilities})
      : _answerPossibilities = answerPossibilities;

  factory _$_Round.fromJson(Map<String, dynamic> json) =>
      _$$_RoundFromJson(json);

  @override
  final Tweet currentTweet;
  final List<String> _answerPossibilities;
  @override
  List<String> get answerPossibilities {
    if (_answerPossibilities is EqualUnmodifiableListView)
      return _answerPossibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerPossibilities);
  }

  @override
  String toString() {
    return 'Round(currentTweet: $currentTweet, answerPossibilities: $answerPossibilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Round &&
            const DeepCollectionEquality()
                .equals(other.currentTweet, currentTweet) &&
            const DeepCollectionEquality()
                .equals(other._answerPossibilities, _answerPossibilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentTweet),
      const DeepCollectionEquality().hash(_answerPossibilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoundCopyWith<_$_Round> get copyWith =>
      __$$_RoundCopyWithImpl<_$_Round>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoundToJson(
      this,
    );
  }
}

abstract class _Round implements Round {
  factory _Round(
      {required final Tweet currentTweet,
      required final List<String> answerPossibilities}) = _$_Round;

  factory _Round.fromJson(Map<String, dynamic> json) = _$_Round.fromJson;

  @override
  Tweet get currentTweet;
  @override
  List<String> get answerPossibilities;
  @override
  @JsonKey(ignore: true)
  _$$_RoundCopyWith<_$_Round> get copyWith =>
      throw _privateConstructorUsedError;
}
