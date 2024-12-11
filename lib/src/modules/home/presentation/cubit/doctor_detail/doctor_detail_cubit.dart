import 'package:bloc/bloc.dart';
import 'package:flutter_app_stater/src/core/constant/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_detail_state.dart';
part 'doctor_detail_cubit.freezed.dart';

class DoctorDetailCubit extends Cubit<DoctorDetailState> {
  DoctorDetailCubit() : super(const DoctorDetailState());

    void updateRating(double rating) {
    emit(state.copyWith(rating: rating));
  }
}
