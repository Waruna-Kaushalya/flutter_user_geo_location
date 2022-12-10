import 'package:geolocator/geolocator.dart';

abstract class IGeoLocatorFacade {
  Future<Position> getCurrentLocation();
}
