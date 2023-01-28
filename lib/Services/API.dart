import 'package:dio/dio.dart';
import 'package:osiris/Models/MovieDetail.dart';
import 'package:osiris/Models/PopularMovies.dart';
import 'package:osiris/Models/SearchResult.dart';
import 'package:osiris/Models/TvShow.dart';
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

  Future<List<Results>> getTopRatedMovie() async {
    try {
      final url = '$baseUrl/movie/top_rated?$apiKey&page=1';
      final response = await _dio.get(url);
      var movies = response.data['results'] as List;
      List<Results> movieList = movies.map((m) => Results.fromJson(m)).toList();
      return movieList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }

  Future<List<Results>> getNowPLayingMovie() async {
    try {
      final url = '$baseUrl/movie/now_playing?$apiKey&page=1';
      final response = await _dio.get(url);
      var movies = response.data['results'] as List;
      List<Results> movieList = movies.map((m) => Results.fromJson(m)).toList();
      return movieList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }

  Future<List<TvShow>> getPopularShow() async {
    try {
      final url = '$baseUrl/tv/popular?$apiKey&page=1';
      final response = await _dio.get(url);
      var shows = response.data['results'] as List;
      List<TvShow> showsList = shows.map((m) => TvShow.fromJson(m)).toList();
      return showsList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }

  Future<List<TvShow>> getTopRatedShow() async {
    try {
      final url = '$baseUrl/tv/top_rated?$apiKey&page=1';
      final response = await _dio.get(url);
      var shows = response.data['results'] as List;
      List<TvShow> showsList = shows.map((m) => TvShow.fromJson(m)).toList();
      return showsList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }

  Future<List<SearchResult>> getSearchResult(searchQuery) async {
    if (searchQuery.toString().isEmpty) {
      return [];
    }
    try {
      final url = '$baseUrl/search/multi?$apiKey&query=$searchQuery';
      final response = await _dio.get(url);
      var shows = response.data['results'] as List;
      List<SearchResult> showsList =
          shows.map((m) => SearchResult.fromJson(m)).toList();
      return showsList;
    } catch (error) {
      return [];
    }
  }

  Future<MovieDetail> getMovieDetail(String movieId) async {
    try {
      final url = '$baseUrl/movie/$movieId?$apiKey';
      final response = await _dio.get(url);
      MovieDetail movie = MovieDetail.fromJson(response.data);
      return movie;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }

  Future<List<Genres>> getMovieGenres(String movieId) async {
    try {
      final url = '$baseUrl/movie/$movieId?$apiKey';
      final response = await _dio.get(url);
      var genres = response.data['genres'] as List;
      List<Genres> genresList = genres.map((m) => Genres.fromJson(m)).toList();
      return genresList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }

  Future<List<Results>> getSimilarMovie(String movieId) async {
    try {
      final url = '$baseUrl/movie/${movieId}/similar?$apiKey&page=1';
      final response = await _dio.get(url);
      var movies = response.data['results'] as List;
      List<Results> movieList = movies.map((m) => Results.fromJson(m)).toList();
      return movieList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }

  Future<List<Results>> getRecommendedMovie(String movieId) async {
    try {
      final url = '$baseUrl/movie/${movieId}/recommendations?$apiKey&page=1';
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
