// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  DataStatus get status => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  NavbarItem get navbarItem => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get onClickFav => throw _privateConstructorUsedError;
  int get favorites => throw _privateConstructorUsedError;
  List<int> get favoriteDoctors => throw _privateConstructorUsedError;
  Map<int, double> get doctorRatings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {DataStatus status,
      bool isLoading,
      NavbarItem navbarItem,
      int index,
      bool onClickFav,
      int favorites,
      List<int> favoriteDoctors,
      Map<int, double> doctorRatings});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLoading = null,
    Object? navbarItem = null,
    Object? index = null,
    Object? onClickFav = null,
    Object? favorites = null,
    Object? favoriteDoctors = null,
    Object? doctorRatings = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      navbarItem: null == navbarItem
          ? _value.navbarItem
          : navbarItem // ignore: cast_nullable_to_non_nullable
              as NavbarItem,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      onClickFav: null == onClickFav
          ? _value.onClickFav
          : onClickFav // ignore: cast_nullable_to_non_nullable
              as bool,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteDoctors: null == favoriteDoctors
          ? _value.favoriteDoctors
          : favoriteDoctors // ignore: cast_nullable_to_non_nullable
              as List<int>,
      doctorRatings: null == doctorRatings
          ? _value.doctorRatings
          : doctorRatings // ignore: cast_nullable_to_non_nullable
              as Map<int, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataStatus status,
      bool isLoading,
      NavbarItem navbarItem,
      int index,
      bool onClickFav,
      int favorites,
      List<int> favoriteDoctors,
      Map<int, double> doctorRatings});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLoading = null,
    Object? navbarItem = null,
    Object? index = null,
    Object? onClickFav = null,
    Object? favorites = null,
    Object? favoriteDoctors = null,
    Object? doctorRatings = null,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      navbarItem: null == navbarItem
          ? _value.navbarItem
          : navbarItem // ignore: cast_nullable_to_non_nullable
              as NavbarItem,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      onClickFav: null == onClickFav
          ? _value.onClickFav
          : onClickFav // ignore: cast_nullable_to_non_nullable
              as bool,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteDoctors: null == favoriteDoctors
          ? _value._favoriteDoctors
          : favoriteDoctors // ignore: cast_nullable_to_non_nullable
              as List<int>,
      doctorRatings: null == doctorRatings
          ? _value._doctorRatings
          : doctorRatings // ignore: cast_nullable_to_non_nullable
              as Map<int, double>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.status = DataStatus.initial,
      this.isLoading = false,
      this.navbarItem = NavbarItem.home,
      this.index = 0,
      this.onClickFav = false,
      this.favorites = 0,
      final List<int> favoriteDoctors = const [],
      final Map<int, double> doctorRatings = const {}})
      : _favoriteDoctors = favoriteDoctors,
        _doctorRatings = doctorRatings;

  @override
  @JsonKey()
  final DataStatus status;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final NavbarItem navbarItem;
  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final bool onClickFav;
  @override
  @JsonKey()
  final int favorites;
  final List<int> _favoriteDoctors;
  @override
  @JsonKey()
  List<int> get favoriteDoctors {
    if (_favoriteDoctors is EqualUnmodifiableListView) return _favoriteDoctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteDoctors);
  }

  final Map<int, double> _doctorRatings;
  @override
  @JsonKey()
  Map<int, double> get doctorRatings {
    if (_doctorRatings is EqualUnmodifiableMapView) return _doctorRatings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_doctorRatings);
  }

  @override
  String toString() {
    return 'HomeState(status: $status, isLoading: $isLoading, navbarItem: $navbarItem, index: $index, onClickFav: $onClickFav, favorites: $favorites, favoriteDoctors: $favoriteDoctors, doctorRatings: $doctorRatings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.navbarItem, navbarItem) ||
                other.navbarItem == navbarItem) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.onClickFav, onClickFav) ||
                other.onClickFav == onClickFav) &&
            (identical(other.favorites, favorites) ||
                other.favorites == favorites) &&
            const DeepCollectionEquality()
                .equals(other._favoriteDoctors, _favoriteDoctors) &&
            const DeepCollectionEquality()
                .equals(other._doctorRatings, _doctorRatings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      isLoading,
      navbarItem,
      index,
      onClickFav,
      favorites,
      const DeepCollectionEquality().hash(_favoriteDoctors),
      const DeepCollectionEquality().hash(_doctorRatings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final DataStatus status,
      final bool isLoading,
      final NavbarItem navbarItem,
      final int index,
      final bool onClickFav,
      final int favorites,
      final List<int> favoriteDoctors,
      final Map<int, double> doctorRatings}) = _$HomeStateImpl;

  @override
  DataStatus get status;
  @override
  bool get isLoading;
  @override
  NavbarItem get navbarItem;
  @override
  int get index;
  @override
  bool get onClickFav;
  @override
  int get favorites;
  @override
  List<int> get favoriteDoctors;
  @override
  Map<int, double> get doctorRatings;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
