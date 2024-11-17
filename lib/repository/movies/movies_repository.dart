import 'package:freezed_practise/models/movies/movies.dart';

abstract class MoviesRepository {
  Future<MoviesModel> fetchMoviesList();
}
