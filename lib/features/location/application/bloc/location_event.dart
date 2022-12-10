part of 'location_bloc.dart';

@freezed
abstract class LocationEvent with _$LocationEvent {
  const factory LocationEvent.fetchLocation() = FetchLocation;
}
