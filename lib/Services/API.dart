import 'package:dio/dio.dart';
import 'package:osiris/Models/PopularMovies.dart';
import 'package:osiris/Services/key.dart';

class APIService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://api.themoviedb.org/3';
  final String apiKey = 'api_key=$api_key';

  Future<List<Results>> getPopularMovie() async {
    try {
      final url = '$baseUrl/movie/popular?$apiKey&page=1';
      final response = await _dio.get(url);
      var movies = response.data['results'] as List;
      List<Results> movieList = movies.map((m) => Results.fromJson(m)).toList();
      return movieList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }
}
