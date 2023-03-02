import 'package:get_it/get_it.dart';
import 'package:test_3/presentation/main_screen/bloc/main_screen_bloc.dart';

class DependencyInjection {
  final MainScreenBloc mainScreenBloc = MainScreenBloc();

  void setupBlocs() {
    GetIt.instance.registerSingleton(mainScreenBloc);
  }
}
