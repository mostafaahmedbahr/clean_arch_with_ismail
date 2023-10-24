import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'core/service_locator/service_locator.dart';
import 'core/utiles/simple_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   Bloc.observer = SimpleBlocObserver();
  ServiceLocator().setup();
  runApp(const MyQuotesApp());
}



