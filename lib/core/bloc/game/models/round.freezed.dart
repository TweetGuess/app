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

/// @nodoc
mixin _$Round {
  String get tweetId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<(GlobalKey<UIPrimaryButtonState>, String)> get answerPossibilities =>
      throw _privateConstructorUsedError;

  /// The right answer is given here by the index
  int get rightAnswer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoundCopyWith<Round> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoundCopyWith<$Res> {
  factory $RoundCopyWith(Round value, $Res Function(Round) then) =
      _$RoundCopyWithImpl<$Res, Round>;
  @useResult
  $Res call(
      {String tweetId,
      String content,
      List<(GlobalKey<UIPrimaryButtonState>, String)> answerPossibilities,
      int rightAnswer});
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
    Object? tweetId = null,
    Object? content = null,
    Object? answerPossibilities = null,
    Object? rightAnswer = null,
  }) {
    return _then(_value.copyWith(
      tweetId: null == tweetId
          ? _value.tweetId
          : tweetId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answerPossibilities: null == answerPossibilities
          ? _value.answerPossibilities
          : answerPossibilities // ignore: cast_nullable_to_non_nullable
              as List<(GlobalKey<UIPrimaryButtonState>, String)>,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoundCopyWith<$Res> implements $RoundCopyWith<$Res> {
  factory _$$_RoundCopyWith(_$_Round value, $Res Function(_$_Round) then) =
      __$$_RoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tweetId,
      String content,
      List<(GlobalKey<UIPrimaryButtonState>, String)> answerPossibilities,
      int rightAnswer});
}

/// @nodoc
class __$$_RoundCopyWithImpl<$Res> extends _$RoundCopyWithImpl<$Res, _$_Round>
    implements _$$_RoundCopyWith<$Res> {
  __$$_RoundCopyWithImpl(_$_Round _value, $Res Function(_$_Round) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetId = null,
    Object? content = null,
    Object? answerPossibilities = null,
    Object? rightAnswer = null,
  }) {
    return _then(_$_Round(
      tweetId: null == tweetId
          ? _value.tweetId
          : tweetId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answerPossibilities: null == answerPossibilities
          ? _value._answerPossibilities
          : answerPossibilities // ignore: cast_nullable_to_non_nullable
              as List<(GlobalKey<UIPrimaryButtonState>, String)>,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Round implements _Round {
  _$_Round(
      {required this.tweetId,
      required this.content,
      required final List<(GlobalKey<UIPrimaryButtonState>, String)>
          answerPossibilities,
      required this.rightAnswer})
      : _answerPossibilities = answerPossibilities;

  @override
  final String tweetId;
  @override
  final String content;
  final List<(GlobalKey<UIPrimaryButtonState>, String)> _answerPossibilities;
  @override
  List<(GlobalKey<UIPrimaryButtonState>, String)> get answerPossibilities {
    if (_answerPossibilities is EqualUnmodifiableListView)
      return _answerPossibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerPossibilities);
  }

  /// The right answer is given here by the index
  @override
  final int rightAnswer;

  @override
  String toString() {
    return 'Round(tweetId: $tweetId, content: $content, answerPossibilities: $answerPossibilities, rightAnswer: $rightAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Round &&
            (identical(other.tweetId, tweetId) || other.tweetId == tweetId) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._answerPossibilities, _answerPossibilities) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tweetId, content,
      const DeepCollectionEquality().hash(_answerPossibilities), rightAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoundCopyWith<_$_Round> get copyWith =>
      __$$_RoundCopyWithImpl<_$_Round>(this, _$identity);
}

abstract class _Round implements Round {
  factory _Round(
      {required final String tweetId,
      required final String content,
      required final List<(GlobalKey<UIPrimaryButtonState>, String)>
          answerPossibilities,
      required final int rightAnswer}) = _$_Round;

  @override
  String get tweetId;
  @override
  String get content;
  @override
  List<(GlobalKey<UIPrimaryButtonState>, String)> get answerPossibilities;
  @override

  /// The right answer is given here by the index
  int get rightAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_RoundCopyWith<_$_Round> get copyWith =>
      throw _privateConstructorUsedError;
}
