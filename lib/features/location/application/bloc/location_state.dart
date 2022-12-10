part of 'location_bloc.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.initial() = Initial;
  const factory LocationState.loading() = Loading;
  const factory LocationState.error({required String errorMessage}) = Error;
  const factory LocationState.success({required Position position}) = Success;
}
