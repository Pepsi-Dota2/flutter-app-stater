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

    void loading() {
    emit(state.copyWith(isLoading: true));
  }

  void refreshData() {
    _initializeData();
  }
}
