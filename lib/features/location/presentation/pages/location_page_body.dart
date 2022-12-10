import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_user_geo_location/features/location/application/bloc/location_bloc.dart';

class LocationPageBody extends StatelessWidget {
  const LocationPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch User Location'),
      ),
      body: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (_) => const Center(
              child: Text('An error occurred'),
            ),
            success: (value) => Center(
              child: Text(
                  'Latitude: ${value.position.latitude}, Longitude: ${value.position.longitude}'),
            ),
          );
        },
      ),
    );
  }
}
