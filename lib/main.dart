import 'package:flutter/material.dart';

import 'app/app.dart';
import 'injection.dart';

Future<void> main() async {
  await configureDependencies();

  runApp(const MyApp());
}
