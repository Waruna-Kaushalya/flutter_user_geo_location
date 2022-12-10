import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

import '../../domain/Facade/i_geolocator_facade.dart';

@LazySingleton(as: IGeoLocatorFacade)
class GeoLocatorRepository implements IGeoLocatorFacade {
  @override
  Future<Position> getCurrentLocation() async {
    late Position position;
    try {
      position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      print(e);
    }
    return position;
  }
}
