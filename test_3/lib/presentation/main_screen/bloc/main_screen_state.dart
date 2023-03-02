part of '../../main_screen/bloc/main_screen_bloc.dart';

@immutable
abstract class MainScreenState {}

class MainScreenInitial extends MainScreenState {}

class LoadingDataState extends MainScreenState {}

class LoadedDataState extends MainScreenState {
  List<String> data;
  List<Result> results;

  LoadedDataState(this.data, this.results);
}
