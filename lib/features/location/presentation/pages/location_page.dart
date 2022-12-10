import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_user_geo_location/injection.dart';

import '../../application/bloc/location_bloc.dart';
import 'location_page_body.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fetch User Location'),
        ),
        body: BlocProvider<LocationBloc>(
          create: (context) => getIt<LocationBloc>(),
          child: const LocationPageBody(),
        ));
  }
}
