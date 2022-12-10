// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_user_geo_location/features/location/application/bloc/location_bloc.dart'
    as _i5;
import 'package:flutter_user_geo_location/features/location/domain/Facade/i_geolocator_facade.dart'
    as _i3;
import 'package:flutter_user_geo_location/features/location/Infrastructure/repositories/geolocator_repository.dart'
    as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IGeoLocatorFacade>(() => _i4.GeoLocatorRepository());
  gh.factory<_i5.LocationBloc>(
      () => _i5.LocationBloc(gh<_i3.IGeoLocatorFacade>()));
  return getIt;
}
