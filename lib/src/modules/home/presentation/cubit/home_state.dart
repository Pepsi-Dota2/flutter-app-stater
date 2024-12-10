part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(false) bool isLoading,
    @Default(NavbarItem.home) NavbarItem navbarItem,
    @Default(0) int index,
    @Default(false) bool onClickFav,
    @Default(0) int favorites,
    @Default([]) List<int> favoriteDoctors, 
    
  }) = _HomeState;
}
