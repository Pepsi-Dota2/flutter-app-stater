import 'package:bloc/bloc.dart';
import 'package:flutter_app_stater/src/core/constant/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

 Future<void> _initializeData() async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      await Future.delayed(const Duration(seconds: 3)); 
      
      emit(state.copyWith(
        status: DataStatus.success,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: DataStatus.error,
        isLoading: false,
      ));
    }
  }

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(state.copyWith(navbarItem: NavbarItem.home , index: 0));
        break;
      case NavbarItem.message:
         emit(state.copyWith(navbarItem: NavbarItem.message , index: 1));
        break;
      case NavbarItem.profile:
         emit(state.copyWith(navbarItem: NavbarItem.profile , index: 2));
        break;
    }
  }

    void loading() {
    emit(state.copyWith(isLoading: true));
  }

  void onClickFavor(){
    emit(state.copyWith(onClickFav: !state.onClickFav));
  }

  void toggleFavorite(int doctorIndex) {
    final currentFavorites = List<int>.from(state.favoriteDoctors);
    if (currentFavorites.contains(doctorIndex)) {
      currentFavorites.remove(doctorIndex);
    } else {
      currentFavorites.add(doctorIndex);
    }
    emit(state.copyWith(favoriteDoctors: currentFavorites));
  }


  void refreshData() {
    _initializeData();
  }
}
