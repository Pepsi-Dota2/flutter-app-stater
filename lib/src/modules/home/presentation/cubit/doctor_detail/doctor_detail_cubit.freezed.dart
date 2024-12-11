// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorDetailState {
  DataStatus get status => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorDetailStateCopyWith<DoctorDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorDetailStateCopyWith<$Res> {
  factory $DoctorDetailStateCopyWith(
          DoctorDetailState value, $Res Function(DoctorDetailState) then) =
      _$DoctorDetailStateCopyWithImpl<$Res, DoctorDetailState>;
  @useResult
  $Res call({DataStatus status, double rating});
}

/// @nodoc
class _$DoctorDetailStateCopyWithImpl<$Res, $Val extends DoctorDetailState>
    implements $DoctorDetailStateCopyWith<$Res> {
  _$DoctorDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorDetailStateImplCopyWith<$Res>
    implements $DoctorDetailStateCopyWith<$Res> {
  factory _$$DoctorDetailStateImplCopyWith(_$DoctorDetailStateImpl value,
          $Res Function(_$DoctorDetailStateImpl) then) =
      __$$DoctorDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, double rating});
}

/// @nodoc
class __$$DoctorDetailStateImplCopyWithImpl<$Res>
    extends _$DoctorDetailStateCopyWithImpl<$Res, _$DoctorDetailStateImpl>
    implements _$$DoctorDetailStateImplCopyWith<$Res> {
  __$$DoctorDetailStateImplCopyWithImpl(_$DoctorDetailStateImpl _value,
      $Res Function(_$DoctorDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rating = null,
  }) {
    return _then(_$DoctorDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DoctorDetailStateImpl implements _DoctorDetailState {
  const _$DoctorDetailStateImpl(
      {this.status = DataStatus.initial, this.rating = 0});

  @override
  @JsonKey()
  final DataStatus status;
  @override
  @JsonKey()
  final double rating;

  @override
  String toString() {
    return 'DoctorDetailState(status: $status, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorDetailStateImplCopyWith<_$DoctorDetailStateImpl> get copyWith =>
      __$$DoctorDetailStateImplCopyWithImpl<_$DoctorDetailStateImpl>(
          this, _$identity);
}

abstract class _DoctorDetailState implements DoctorDetailState {
  const factory _DoctorDetailState(
      {final DataStatus status, final double rating}) = _$DoctorDetailStateImpl;

  @override
  DataStatus get status;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$DoctorDetailStateImplCopyWith<_$DoctorDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
