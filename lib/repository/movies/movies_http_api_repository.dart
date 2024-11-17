import 'package:freezed_practise/config/app_urls.dart';
import 'package:freezed_practise/data/network/network_services_api.dart';
import 'package:freezed_practise/models/movies/movies.dart';
import 'package:freezed_practise/repository/movies/movies_repository.dart';

class MoviesHttpApiRepository implements MoviesRepository {
  final _apiServices = NetworkServicesApi();

  @override
  Future<MoviesModel> fetchMoviesList() async {
    final response =
        await _apiServices.getApi(AppUrls.popularMoviesListEndPoint);
    return MoviesModel.fromJson(response);
  }
}
