import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_user_geo_location/features/location/application/bloc/location_bloc.dart';

class LocationPageBody extends StatelessWidget {
  const LocationPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<LocationBloc, LocationState>(builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (e) => Center(
              child: Text(e.errorMessage),
            ),
            success: (value) => Center(
              child: Text(
                  'Latitude: ${value.position.latitude}, Longitude: ${value.position.longitude}'),
            ),
          );
        }),
        ElevatedButton(
          onPressed: () {
            context
                .read<LocationBloc>()
                .add(const LocationEvent.fetchLocation());
          },
          child: const Text("Fetch Location"),
        )
      ],
    );
  }
}
