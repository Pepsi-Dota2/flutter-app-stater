part of 'doctor_detail_cubit.dart';

@freezed
class DoctorDetailState with _$DoctorDetailState {
  const factory DoctorDetailState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(0) double rating
  }) = _DoctorDetailState;
}
