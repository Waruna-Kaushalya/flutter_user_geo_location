import 'package:bloc/bloc.dart';
import 'package:flutter_user_geo_location/features/location/domain/Facade/i_geolocator_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final IGeoLocatorFacade iGeoLocatorFacade;
  LocationBloc(this.iGeoLocatorFacade) : super(const LocationState.initial()) {
    on<LocationEvent>((event, emit) async {
      await event.map(
        fetchLocation: (value) async {
          emit(const LocationState.initial());
          try {
            final position = await iGeoLocatorFacade.getCurrentLocation();
            emit(LocationState.success(position: position));
          } catch (e) {
            emit(const LocationState.error());
          }
        },
      );
    });
  }
}
