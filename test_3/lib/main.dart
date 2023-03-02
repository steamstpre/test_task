import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:test_3/services%20/dependency_injection/dependency_injection.dart';

import 'presentation/main_screen/bloc/main_screen_bloc.dart';
import 'services /navigation/route_generator.dart';

void main() {
  DependencyInjection dependencyInjection = DependencyInjection();
  dependencyInjection.setupBlocs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 768),
      builder: (_, __) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => GetIt.instance<MainScreenBloc>(),
            ),
          ],
          child: MaterialApp(
            theme: ThemeData.dark(),
            initialRoute: '/',
            onGenerateRoute: RouteGenerator.generateRoute,
          ),
        );
      },
    );
  }
}
