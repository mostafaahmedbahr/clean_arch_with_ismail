import 'package:flutter/material.dart';

import 'app.dart';
import 'core/service_locator/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  ServiceLocator().setup();
  runApp(const MyQuotesApp());
}



