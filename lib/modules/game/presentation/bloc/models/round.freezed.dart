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
  List<(GlobalKey<UIPrimaryGameButtonState>, (String, String))>
      get answerPossibilities => throw _privateConstructorUsedError;

  /// The right answer is given here by the index
  int get rightAnswer => throw _privateConstructorUsedError;
  bool? get answeredRight => throw _privateConstructorUsedError;

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
      List<(GlobalKey<UIPrimaryGameButtonState>, (String, String))>
          answerPossibilities,
      int rightAnswer,
      bool? answeredRight});
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
    Object? answeredRight = freezed,
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
              as List<(GlobalKey<UIPrimaryGameButtonState>, (String, String))>,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      answeredRight: freezed == answeredRight
          ? _value.answeredRight
          : answeredRight // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoundImplCopyWith<$Res> implements $RoundCopyWith<$Res> {
  factory _$$RoundImplCopyWith(
          _$RoundImpl value, $Res Function(_$RoundImpl) then) =
      __$$RoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tweetId,
      String content,
      List<(GlobalKey<UIPrimaryGameButtonState>, (String, String))>
          answerPossibilities,
      int rightAnswer,
      bool? answeredRight});
}

/// @nodoc
class __$$RoundImplCopyWithImpl<$Res>
    extends _$RoundCopyWithImpl<$Res, _$RoundImpl>
    implements _$$RoundImplCopyWith<$Res> {
  __$$RoundImplCopyWithImpl(
      _$RoundImpl _value, $Res Function(_$RoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweetId = null,
    Object? content = null,
    Object? answerPossibilities = null,
    Object? rightAnswer = null,
    Object? answeredRight = freezed,
  }) {
    return _then(_$RoundImpl(
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
              as List<(GlobalKey<UIPrimaryGameButtonState>, (String, String))>,
      rightAnswer: null == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      answeredRight: freezed == answeredRight
          ? _value.answeredRight
          : answeredRight // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$RoundImpl implements _Round {
  _$RoundImpl(
      {required this.tweetId,
      required this.content,
      required final List<
              (GlobalKey<UIPrimaryGameButtonState>, (String, String))>
          answerPossibilities,
      required this.rightAnswer,
      this.answeredRight})
      : _answerPossibilities = answerPossibilities;

  @override
  final String tweetId;
  @override
  final String content;
  final List<(GlobalKey<UIPrimaryGameButtonState>, (String, String))>
      _answerPossibilities;
  @override
  List<(GlobalKey<UIPrimaryGameButtonState>, (String, String))>
      get answerPossibilities {
    if (_answerPossibilities is EqualUnmodifiableListView)
      return _answerPossibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerPossibilities);
  }

  /// The right answer is given here by the index
  @override
  final int rightAnswer;
  @override
  final bool? answeredRight;

  @override
  String toString() {
    return 'Round(tweetId: $tweetId, content: $content, answerPossibilities: $answerPossibilities, rightAnswer: $rightAnswer, answeredRight: $answeredRight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoundImpl &&
            (identical(other.tweetId, tweetId) || other.tweetId == tweetId) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._answerPossibilities, _answerPossibilities) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer) &&
            (identical(other.answeredRight, answeredRight) ||
                other.answeredRight == answeredRight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      tweetId,
      content,
      const DeepCollectionEquality().hash(_answerPossibilities),
      rightAnswer,
      answeredRight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoundImplCopyWith<_$RoundImpl> get copyWith =>
      __$$RoundImplCopyWithImpl<_$RoundImpl>(this, _$identity);
}

abstract class _Round implements Round {
  factory _Round(
      {required final String tweetId,
      required final String content,
      required final List<
              (GlobalKey<UIPrimaryGameButtonState>, (String, String))>
          answerPossibilities,
      required final int rightAnswer,
      final bool? answeredRight}) = _$RoundImpl;

  @override
  String get tweetId;
  @override
  String get content;
  @override
  List<(GlobalKey<UIPrimaryGameButtonState>, (String, String))>
      get answerPossibilities;
  @override

  /// The right answer is given here by the index
  int get rightAnswer;
  @override
  bool? get answeredRight;
  @override
  @JsonKey(ignore: true)
  _$$RoundImplCopyWith<_$RoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
