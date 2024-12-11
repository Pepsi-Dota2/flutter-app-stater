// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentState {
  DataStatus get status => throw _privateConstructorUsedError;
  bool get isPaymentSuccess => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  List<CardPaymentModel> get paymentData => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {DataStatus status,
      bool isPaymentSuccess,
      int statusCode,
      List<CardPaymentModel> paymentData,
      bool isSelected});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isPaymentSuccess = null,
    Object? statusCode = null,
    Object? paymentData = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      isPaymentSuccess: null == isPaymentSuccess
          ? _value.isPaymentSuccess
          : isPaymentSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      paymentData: null == paymentData
          ? _value.paymentData
          : paymentData // ignore: cast_nullable_to_non_nullable
              as List<CardPaymentModel>,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataStatus status,
      bool isPaymentSuccess,
      int statusCode,
      List<CardPaymentModel> paymentData,
      bool isSelected});
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isPaymentSuccess = null,
    Object? statusCode = null,
    Object? paymentData = null,
    Object? isSelected = null,
  }) {
    return _then(_$PaymentStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      isPaymentSuccess: null == isPaymentSuccess
          ? _value.isPaymentSuccess
          : isPaymentSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      paymentData: null == paymentData
          ? _value._paymentData
          : paymentData // ignore: cast_nullable_to_non_nullable
              as List<CardPaymentModel>,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  const _$PaymentStateImpl(
      {this.status = DataStatus.initial,
      this.isPaymentSuccess = false,
      this.statusCode = 0,
      final List<CardPaymentModel> paymentData = const [],
      this.isSelected = false})
      : _paymentData = paymentData;

  @override
  @JsonKey()
  final DataStatus status;
  @override
  @JsonKey()
  final bool isPaymentSuccess;
  @override
  @JsonKey()
  final int statusCode;
  final List<CardPaymentModel> _paymentData;
  @override
  @JsonKey()
  List<CardPaymentModel> get paymentData {
    if (_paymentData is EqualUnmodifiableListView) return _paymentData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentData);
  }

  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'PaymentState(status: $status, isPaymentSuccess: $isPaymentSuccess, statusCode: $statusCode, paymentData: $paymentData, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isPaymentSuccess, isPaymentSuccess) ||
                other.isPaymentSuccess == isPaymentSuccess) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality()
                .equals(other._paymentData, _paymentData) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      isPaymentSuccess,
      statusCode,
      const DeepCollectionEquality().hash(_paymentData),
      isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {final DataStatus status,
      final bool isPaymentSuccess,
      final int statusCode,
      final List<CardPaymentModel> paymentData,
      final bool isSelected}) = _$PaymentStateImpl;

  @override
  DataStatus get status;
  @override
  bool get isPaymentSuccess;
  @override
  int get statusCode;
  @override
  List<CardPaymentModel> get paymentData;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
