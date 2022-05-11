import 'package:base_project_flutter/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';

Future<void> main() async {
  BlocOverrides.runZoned(
      () => runApp(
            const App(),
          ),
      blocObserver: SimpleBlocObserver());
}
