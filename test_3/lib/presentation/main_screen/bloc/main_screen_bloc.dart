import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_3/model/movie_result.dart';
import 'package:test_3/services%20/api/API.dart';
import 'package:test_3/services%20/repository/repository.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  Movie? _data;
  final List<String> _result = [];
  final API _api = API();
  final Repository _repository = Repository();

  MainScreenBloc() : super(MainScreenInitial()) {
    on<GetDataEvent>(_getDataFromApi);
  }

  Future<void> _getDataFromApi(GetDataEvent event, emit) async {
    _data = await _api.sentRequset();
    if (_data != null) {
      _repository.data = _data;
    }
    emit(LoadingDataState());
    if (_data != null) {
      _data?.results?.forEach(
        (element) {
          _result.add(element.title);
        },
      );
      emit(LoadedDataState(_result, _repository.data!.results));
    }
  }
}
