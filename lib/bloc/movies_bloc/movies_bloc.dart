/* import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_practise/data/response/api_response.dart';
import 'package:freezed_practise/models/movies/movies.dart';
import 'package:freezed_practise/repository/movies/movies_repository.dart';
part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesRepository moviesRepository;
  MoviesBloc({required this.moviesRepository})
      : super(MoviesState(moviesList: ApiResponse.loading())) {
    on<MoviesFetched>(fetchMoviesListApi);
  }

  Future<void> fetchMoviesListApi(
      MoviesFetched event, Emitter<MoviesState> emit) async {
    await moviesRepository.fetchMoviesList().then((value) {
      emit(state.copyWith(moviesList: ApiResponse.completed(value)));
    }).onError((error, stackTrace) {
      emit(state.copyWith(moviesList: ApiResponse.error(error.toString())));
    });
  }
}
 */

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_practise/data/response/api_response.dart';
import 'package:freezed_practise/models/movies/movies.dart';
import 'package:freezed_practise/repository/movies/movies_repository.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesRepository moviesRepository;

  MoviesBloc({required this.moviesRepository})
      : super(MoviesState(moviesList: ApiResponse.loading())) {
    on<MoviesFetched>(fetchMoviesListApi);
  }

  Future<void> fetchMoviesListApi(
      MoviesFetched event, Emitter<MoviesState> emit) async {
    emit(state.copyWith(moviesList: ApiResponse.loading()));

    try {
      final movies = await moviesRepository.fetchMoviesList();
      emit(state.copyWith(moviesList: ApiResponse.completed(movies)));
    } catch (error) {
      emit(state.copyWith(moviesList: ApiResponse.error(error.toString())));
    }
  }
}
