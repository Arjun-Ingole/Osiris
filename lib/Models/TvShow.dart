class TvShow {
  TvShow({
      String? backdropPath, 
      String? firstAirDate, 
      List<num>? genreIds, 
      num? id, 
      String? name, 
      List<String>? originCountry, 
      String? originalLanguage, 
      String? originalName, 
      String? overview, 
      num? popularity, 
      String? posterPath, 
      num? voteAverage, 
      num? voteCount,}){
    _backdropPath = backdropPath;
    _firstAirDate = firstAirDate;
    _genreIds = genreIds;
    _id = id;
    _name = name;
    _originCountry = originCountry;
    _originalLanguage = originalLanguage;
    _originalName = originalName;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
}

  TvShow.fromJson(dynamic json) {
    _backdropPath = json['backdrop_path'];
    _firstAirDate = json['first_air_date'];
    _genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<num>() : [];
    _id = json['id'];
    _name = json['name'];
    _originCountry = json['origin_country'] != null ? json['origin_country'].cast<String>() : [];
    _originalLanguage = json['original_language'];
    _originalName = json['original_name'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }
  String? _backdropPath;
  String? _firstAirDate;
  List<num>? _genreIds;
  num? _id;
  String? _name;
  List<String>? _originCountry;
  String? _originalLanguage;
  String? _originalName;
  String? _overview;
  num? _popularity;
  String? _posterPath;
  num? _voteAverage;
  num? _voteCount;
TvShow copyWith({  String? backdropPath,
  String? firstAirDate,
  List<num>? genreIds,
  num? id,
  String? name,
  List<String>? originCountry,
  String? originalLanguage,
  String? originalName,
  String? overview,
  num? popularity,
  String? posterPath,
  num? voteAverage,
  num? voteCount,
}) => TvShow(  backdropPath: backdropPath ?? _backdropPath,
  firstAirDate: firstAirDate ?? _firstAirDate,
  genreIds: genreIds ?? _genreIds,
  id: id ?? _id,
  name: name ?? _name,
  originCountry: originCountry ?? _originCountry,
  originalLanguage: originalLanguage ?? _originalLanguage,
  originalName: originalName ?? _originalName,
  overview: overview ?? _overview,
  popularity: popularity ?? _popularity,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  voteCount: voteCount ?? _voteCount,
);
  String? get backdropPath => _backdropPath;
  String? get firstAirDate => _firstAirDate;
  List<num>? get genreIds => _genreIds;
  num? get id => _id;
  String? get name => _name;
  List<String>? get originCountry => _originCountry;
  String? get originalLanguage => _originalLanguage;
  String? get originalName => _originalName;
  String? get overview => _overview;
  num? get popularity => _popularity;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['backdrop_path'] = _backdropPath;
    map['first_air_date'] = _firstAirDate;
    map['genre_ids'] = _genreIds;
    map['id'] = _id;
    map['name'] = _name;
    map['origin_country'] = _originCountry;
    map['original_language'] = _originalLanguage;
    map['original_name'] = _originalName;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }

}