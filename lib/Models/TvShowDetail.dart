import 'MovieDetail.dart';

class TvShowDetail {
  TvShowDetail({
    bool? adult,
    String? backdropPath,
    List<CreatedBy>? createdBy,
    List<num>? episodeRunTime,
    String? firstAirDate,
    List<Genres>? genres,
    String? homepage,
    num? id,
    bool? inProduction,
    List<String>? languages,
    String? lastAirDate,
    LastEpisodeToAir? lastEpisodeToAir,
    String? name,
    NextEpisodeToAir? nextEpisodeToAir,
    List<Networks>? networks,
    num? numberOfEpisodes,
    num? numberOfSeasons,
    List<String>? originCountry,
    String? originalLanguage,
    String? originalName,
    String? overview,
    num? popularity,
    String? posterPath,
    List<ProductionCompanies>? productionCompanies,
    List<ProductionCountries>? productionCountries,
    List<Seasons>? seasons,
    List<SpokenLanguages>? spokenLanguages,
    String? status,
    String? tagline,
    String? type,
    num? voteAverage,
    num? voteCount,
  }) {
    _adult = adult;
    _backdropPath = backdropPath;
    _createdBy = createdBy;
    _episodeRunTime = episodeRunTime;
    _firstAirDate = firstAirDate;
    _genres = genres;
    _homepage = homepage;
    _id = id;
    _inProduction = inProduction;
    _languages = languages;
    _lastAirDate = lastAirDate;
    _lastEpisodeToAir = lastEpisodeToAir;
    _name = name;
    _nextEpisodeToAir = nextEpisodeToAir;
    _networks = networks;
    _numberOfEpisodes = numberOfEpisodes;
    _numberOfSeasons = numberOfSeasons;
    _originCountry = originCountry;
    _originalLanguage = originalLanguage;
    _originalName = originalName;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _productionCompanies = productionCompanies;
    _productionCountries = productionCountries;
    _seasons = seasons;
    _spokenLanguages = spokenLanguages;
    _status = status;
    _tagline = tagline;
    _type = type;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
  }

  TvShowDetail.fromJson(dynamic json) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    if (json['created_by'] != null) {
      _createdBy = [];
      json['created_by'].forEach((v) {
        _createdBy?.add(CreatedBy.fromJson(v));
      });
    }
    _episodeRunTime = json['episode_run_time'] != null
        ? json['episode_run_time'].cast<num>()
        : [];
    _firstAirDate = json['first_air_date'];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
    _homepage = json['homepage'];
    _id = json['id'];
    _inProduction = json['in_production'];
    _languages =
        json['languages'] != null ? json['languages'].cast<String>() : [];
    _lastAirDate = json['last_air_date'];
    _lastEpisodeToAir = json['last_episode_to_air'] != null
        ? LastEpisodeToAir.fromJson(json['last_episode_to_air'])
        : null;
    _name = json['name'];
    _nextEpisodeToAir = json['next_episode_to_air'] != null
        ? NextEpisodeToAir.fromJson(json['next_episode_to_air'])
        : null;
    if (json['networks'] != null) {
      _networks = [];
      json['networks'].forEach((v) {
        _networks?.add(Networks.fromJson(v));
      });
    }
    _numberOfEpisodes = json['number_of_episodes'];
    _numberOfSeasons = json['number_of_seasons'];
    _originCountry = json['origin_country'] != null
        ? json['origin_country'].cast<String>()
        : [];
    _originalLanguage = json['original_language'];
    _originalName = json['original_name'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    if (json['production_companies'] != null) {
      _productionCompanies = [];
      json['production_companies'].forEach((v) {
        _productionCompanies?.add(ProductionCompanies.fromJson(v));
      });
    }
    if (json['production_countries'] != null) {
      _productionCountries = [];
      json['production_countries'].forEach((v) {
        _productionCountries?.add(ProductionCountries.fromJson(v));
      });
    }
    if (json['seasons'] != null) {
      _seasons = [];
      json['seasons'].forEach((v) {
        _seasons?.add(Seasons.fromJson(v));
      });
    }
    if (json['spoken_languages'] != null) {
      _spokenLanguages = [];
      json['spoken_languages'].forEach((v) {
        _spokenLanguages?.add(SpokenLanguages.fromJson(v));
      });
    }
    _status = json['status'];
    _tagline = json['tagline'];
    _type = json['type'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }
  bool? _adult;
  String? _backdropPath;
  List<CreatedBy>? _createdBy;
  List<num>? _episodeRunTime;
  String? _firstAirDate;
  List<Genres>? _genres;
  String? _homepage;
  num? _id;
  bool? _inProduction;
  List<String>? _languages;
  String? _lastAirDate;
  LastEpisodeToAir? _lastEpisodeToAir;
  String? _name;
  NextEpisodeToAir? _nextEpisodeToAir;
  List<Networks>? _networks;
  num? _numberOfEpisodes;
  num? _numberOfSeasons;
  List<String>? _originCountry;
  String? _originalLanguage;
  String? _originalName;
  String? _overview;
  num? _popularity;
  String? _posterPath;
  List<ProductionCompanies>? _productionCompanies;
  List<ProductionCountries>? _productionCountries;
  List<Seasons>? _seasons;
  List<SpokenLanguages>? _spokenLanguages;
  String? _status;
  String? _tagline;
  String? _type;
  num? _voteAverage;
  num? _voteCount;
  TvShowDetail copyWith({
    bool? adult,
    String? backdropPath,
    List<CreatedBy>? createdBy,
    List<num>? episodeRunTime,
    String? firstAirDate,
    List<Genres>? genres,
    String? homepage,
    num? id,
    bool? inProduction,
    List<String>? languages,
    String? lastAirDate,
    LastEpisodeToAir? lastEpisodeToAir,
    String? name,
    NextEpisodeToAir? nextEpisodeToAir,
    List<Networks>? networks,
    num? numberOfEpisodes,
    num? numberOfSeasons,
    List<String>? originCountry,
    String? originalLanguage,
    String? originalName,
    String? overview,
    num? popularity,
    String? posterPath,
    List<ProductionCompanies>? productionCompanies,
    List<ProductionCountries>? productionCountries,
    List<Seasons>? seasons,
    List<SpokenLanguages>? spokenLanguages,
    String? status,
    String? tagline,
    String? type,
    num? voteAverage,
    num? voteCount,
  }) =>
      TvShowDetail(
        adult: adult ?? _adult,
        backdropPath: backdropPath ?? _backdropPath,
        createdBy: createdBy ?? _createdBy,
        episodeRunTime: episodeRunTime ?? _episodeRunTime,
        firstAirDate: firstAirDate ?? _firstAirDate,
        genres: genres ?? _genres,
        homepage: homepage ?? _homepage,
        id: id ?? _id,
        inProduction: inProduction ?? _inProduction,
        languages: languages ?? _languages,
        lastAirDate: lastAirDate ?? _lastAirDate,
        lastEpisodeToAir: lastEpisodeToAir ?? _lastEpisodeToAir,
        name: name ?? _name,
        nextEpisodeToAir: nextEpisodeToAir ?? _nextEpisodeToAir,
        networks: networks ?? _networks,
        numberOfEpisodes: numberOfEpisodes ?? _numberOfEpisodes,
        numberOfSeasons: numberOfSeasons ?? _numberOfSeasons,
        originCountry: originCountry ?? _originCountry,
        originalLanguage: originalLanguage ?? _originalLanguage,
        originalName: originalName ?? _originalName,
        overview: overview ?? _overview,
        popularity: popularity ?? _popularity,
        posterPath: posterPath ?? _posterPath,
        productionCompanies: productionCompanies ?? _productionCompanies,
        productionCountries: productionCountries ?? _productionCountries,
        seasons: seasons ?? _seasons,
        spokenLanguages: spokenLanguages ?? _spokenLanguages,
        status: status ?? _status,
        tagline: tagline ?? _tagline,
        type: type ?? _type,
        voteAverage: voteAverage ?? _voteAverage,
        voteCount: voteCount ?? _voteCount,
      );
  bool? get adult => _adult;
  String? get backdropPath => _backdropPath;
  List<CreatedBy>? get createdBy => _createdBy;
  List<num>? get episodeRunTime => _episodeRunTime;
  String? get firstAirDate => _firstAirDate;
  List<Genres>? get genres => _genres;
  String? get homepage => _homepage;
  num? get id => _id;
  bool? get inProduction => _inProduction;
  List<String>? get languages => _languages;
  String? get lastAirDate => _lastAirDate;
  LastEpisodeToAir? get lastEpisodeToAir => _lastEpisodeToAir;
  String? get name => _name;
  NextEpisodeToAir? get nextEpisodeToAir => _nextEpisodeToAir;
  List<Networks>? get networks => _networks;
  num? get numberOfEpisodes => _numberOfEpisodes;
  num? get numberOfSeasons => _numberOfSeasons;
  List<String>? get originCountry => _originCountry;
  String? get originalLanguage => _originalLanguage;
  String? get originalName => _originalName;
  String? get overview => _overview;
  num? get popularity => _popularity;
  String? get posterPath => _posterPath;
  List<ProductionCompanies>? get productionCompanies => _productionCompanies;
  List<ProductionCountries>? get productionCountries => _productionCountries;
  List<Seasons>? get seasons => _seasons;
  List<SpokenLanguages>? get spokenLanguages => _spokenLanguages;
  String? get status => _status;
  String? get tagline => _tagline;
  String? get type => _type;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = _adult;
    map['backdrop_path'] = _backdropPath;
    if (_createdBy != null) {
      map['created_by'] = _createdBy?.map((v) => v.toJson()).toList();
    }
    map['episode_run_time'] = _episodeRunTime;
    map['first_air_date'] = _firstAirDate;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    map['homepage'] = _homepage;
    map['id'] = _id;
    map['in_production'] = _inProduction;
    map['languages'] = _languages;
    map['last_air_date'] = _lastAirDate;
    if (_lastEpisodeToAir != null) {
      map['last_episode_to_air'] = _lastEpisodeToAir?.toJson();
    }
    map['name'] = _name;
    if (_nextEpisodeToAir != null) {
      map['next_episode_to_air'] = _nextEpisodeToAir?.toJson();
    }
    if (_networks != null) {
      map['networks'] = _networks?.map((v) => v.toJson()).toList();
    }
    map['number_of_episodes'] = _numberOfEpisodes;
    map['number_of_seasons'] = _numberOfSeasons;
    map['origin_country'] = _originCountry;
    map['original_language'] = _originalLanguage;
    map['original_name'] = _originalName;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    if (_productionCompanies != null) {
      map['production_companies'] =
          _productionCompanies?.map((v) => v.toJson()).toList();
    }
    if (_productionCountries != null) {
      map['production_countries'] =
          _productionCountries?.map((v) => v.toJson()).toList();
    }
    if (_seasons != null) {
      map['seasons'] = _seasons?.map((v) => v.toJson()).toList();
    }
    if (_spokenLanguages != null) {
      map['spoken_languages'] =
          _spokenLanguages?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    map['tagline'] = _tagline;
    map['type'] = _type;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }
}

/// english_name : "English"
/// iso_639_1 : "en"
/// name : "English"

class SpokenLanguages {
  SpokenLanguages({
    String? englishName,
    String? iso6391,
    String? name,
  }) {
    _englishName = englishName;
    _iso6391 = iso6391;
    _name = name;
  }

  SpokenLanguages.fromJson(dynamic json) {
    _englishName = json['english_name'];
    _iso6391 = json['iso_639_1'];
    _name = json['name'];
  }
  String? _englishName;
  String? _iso6391;
  String? _name;
  SpokenLanguages copyWith({
    String? englishName,
    String? iso6391,
    String? name,
  }) =>
      SpokenLanguages(
        englishName: englishName ?? _englishName,
        iso6391: iso6391 ?? _iso6391,
        name: name ?? _name,
      );
  String? get englishName => _englishName;
  String? get iso6391 => _iso6391;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['english_name'] = _englishName;
    map['iso_639_1'] = _iso6391;
    map['name'] = _name;
    return map;
  }
}

/// air_date : "2023-01-15"
/// episode_count : 9
/// id : 144593
/// name : "Season 1"
/// overview : ""
/// poster_path : "/aUQKIpZZ31KWbpdHMCmaV76u78T.jpg"
/// season_number : 1

class Seasons {
  Seasons({
    String? airDate,
    num? episodeCount,
    num? id,
    String? name,
    String? overview,
    String? posterPath,
    num? seasonNumber,
  }) {
    _airDate = airDate;
    _episodeCount = episodeCount;
    _id = id;
    _name = name;
    _overview = overview;
    _posterPath = posterPath;
    _seasonNumber = seasonNumber;
  }

  Seasons.fromJson(dynamic json) {
    _airDate = json['air_date'];
    _episodeCount = json['episode_count'];
    _id = json['id'];
    _name = json['name'];
    _overview = json['overview'];
    _posterPath = json['poster_path'];
    _seasonNumber = json['season_number'];
  }
  String? _airDate;
  num? _episodeCount;
  num? _id;
  String? _name;
  String? _overview;
  String? _posterPath;
  num? _seasonNumber;
  Seasons copyWith({
    String? airDate,
    num? episodeCount,
    num? id,
    String? name,
    String? overview,
    String? posterPath,
    num? seasonNumber,
  }) =>
      Seasons(
        airDate: airDate ?? _airDate,
        episodeCount: episodeCount ?? _episodeCount,
        id: id ?? _id,
        name: name ?? _name,
        overview: overview ?? _overview,
        posterPath: posterPath ?? _posterPath,
        seasonNumber: seasonNumber ?? _seasonNumber,
      );
  String? get airDate => _airDate;
  num? get episodeCount => _episodeCount;
  num? get id => _id;
  String? get name => _name;
  String? get overview => _overview;
  String? get posterPath => _posterPath;
  num? get seasonNumber => _seasonNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['air_date'] = _airDate;
    map['episode_count'] = _episodeCount;
    map['id'] = _id;
    map['name'] = _name;
    map['overview'] = _overview;
    map['poster_path'] = _posterPath;
    map['season_number'] = _seasonNumber;
    return map;
  }
}

/// iso_3166_1 : "US"
/// name : "United States of America"

class ProductionCountries {
  ProductionCountries({
    String? iso31661,
    String? name,
  }) {
    _iso31661 = iso31661;
    _name = name;
  }

  ProductionCountries.fromJson(dynamic json) {
    _iso31661 = json['iso_3166_1'];
    _name = json['name'];
  }
  String? _iso31661;
  String? _name;
  ProductionCountries copyWith({
    String? iso31661,
    String? name,
  }) =>
      ProductionCountries(
        iso31661: iso31661 ?? _iso31661,
        name: name ?? _name,
      );
  String? get iso31661 => _iso31661;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso_3166_1'] = _iso31661;
    map['name'] = _name;
    return map;
  }
}

/// id : 3268
/// logo_path : "/tuomPhY2UtuPTqqFnKMVHvSb724.png"
/// name : "HBO"
/// origin_country : "US"

class ProductionCompanies {
  ProductionCompanies({
    num? id,
    String? logoPath,
    String? name,
    String? originCountry,
  }) {
    _id = id;
    _logoPath = logoPath;
    _name = name;
    _originCountry = originCountry;
  }

  ProductionCompanies.fromJson(dynamic json) {
    _id = json['id'];
    _logoPath = json['logo_path'];
    _name = json['name'];
    _originCountry = json['origin_country'];
  }
  num? _id;
  String? _logoPath;
  String? _name;
  String? _originCountry;
  ProductionCompanies copyWith({
    num? id,
    String? logoPath,
    String? name,
    String? originCountry,
  }) =>
      ProductionCompanies(
        id: id ?? _id,
        logoPath: logoPath ?? _logoPath,
        name: name ?? _name,
        originCountry: originCountry ?? _originCountry,
      );
  num? get id => _id;
  String? get logoPath => _logoPath;
  String? get name => _name;
  String? get originCountry => _originCountry;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['logo_path'] = _logoPath;
    map['name'] = _name;
    map['origin_country'] = _originCountry;
    return map;
  }
}

/// id : 49
/// name : "HBO"
/// logo_path : "/tuomPhY2UtuPTqqFnKMVHvSb724.png"
/// origin_country : "US"

class Networks {
  Networks({
    num? id,
    String? name,
    String? logoPath,
    String? originCountry,
  }) {
    _id = id;
    _name = name;
    _logoPath = logoPath;
    _originCountry = originCountry;
  }

  Networks.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _logoPath = json['logo_path'];
    _originCountry = json['origin_country'];
  }
  num? _id;
  String? _name;
  String? _logoPath;
  String? _originCountry;
  Networks copyWith({
    num? id,
    String? name,
    String? logoPath,
    String? originCountry,
  }) =>
      Networks(
        id: id ?? _id,
        name: name ?? _name,
        logoPath: logoPath ?? _logoPath,
        originCountry: originCountry ?? _originCountry,
      );
  num? get id => _id;
  String? get name => _name;
  String? get logoPath => _logoPath;
  String? get originCountry => _originCountry;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['logo_path'] = _logoPath;
    map['origin_country'] = _originCountry;
    return map;
  }
}

/// air_date : "2023-01-29"
/// episode_number : 3
/// id : 4071040
/// name : "Long, Long Time"
/// overview : ""
/// production_code : ""
/// runtime : 80
/// season_number : 1
/// show_id : 100088
/// still_path : "/bzy4hAtkY3OOInY4q6MJigLmC1m.jpg"
/// vote_average : 5.333
/// vote_count : 3

class NextEpisodeToAir {
  NextEpisodeToAir({
    String? airDate,
    num? episodeNumber,
    num? id,
    String? name,
    String? overview,
    String? productionCode,
    num? runtime,
    num? seasonNumber,
    num? showId,
    String? stillPath,
    num? voteAverage,
    num? voteCount,
  }) {
    _airDate = airDate;
    _episodeNumber = episodeNumber;
    _id = id;
    _name = name;
    _overview = overview;
    _productionCode = productionCode;
    _runtime = runtime;
    _seasonNumber = seasonNumber;
    _showId = showId;
    _stillPath = stillPath;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
  }

  NextEpisodeToAir.fromJson(dynamic json) {
    _airDate = json['air_date'];
    _episodeNumber = json['episode_number'];
    _id = json['id'];
    _name = json['name'];
    _overview = json['overview'];
    _productionCode = json['production_code'];
    _runtime = json['runtime'];
    _seasonNumber = json['season_number'];
    _showId = json['show_id'];
    _stillPath = json['still_path'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }
  String? _airDate;
  num? _episodeNumber;
  num? _id;
  String? _name;
  String? _overview;
  String? _productionCode;
  num? _runtime;
  num? _seasonNumber;
  num? _showId;
  String? _stillPath;
  num? _voteAverage;
  num? _voteCount;
  NextEpisodeToAir copyWith({
    String? airDate,
    num? episodeNumber,
    num? id,
    String? name,
    String? overview,
    String? productionCode,
    num? runtime,
    num? seasonNumber,
    num? showId,
    String? stillPath,
    num? voteAverage,
    num? voteCount,
  }) =>
      NextEpisodeToAir(
        airDate: airDate ?? _airDate,
        episodeNumber: episodeNumber ?? _episodeNumber,
        id: id ?? _id,
        name: name ?? _name,
        overview: overview ?? _overview,
        productionCode: productionCode ?? _productionCode,
        runtime: runtime ?? _runtime,
        seasonNumber: seasonNumber ?? _seasonNumber,
        showId: showId ?? _showId,
        stillPath: stillPath ?? _stillPath,
        voteAverage: voteAverage ?? _voteAverage,
        voteCount: voteCount ?? _voteCount,
      );
  String? get airDate => _airDate;
  num? get episodeNumber => _episodeNumber;
  num? get id => _id;
  String? get name => _name;
  String? get overview => _overview;
  String? get productionCode => _productionCode;
  num? get runtime => _runtime;
  num? get seasonNumber => _seasonNumber;
  num? get showId => _showId;
  String? get stillPath => _stillPath;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['air_date'] = _airDate;
    map['episode_number'] = _episodeNumber;
    map['id'] = _id;
    map['name'] = _name;
    map['overview'] = _overview;
    map['production_code'] = _productionCode;
    map['runtime'] = _runtime;
    map['season_number'] = _seasonNumber;
    map['show_id'] = _showId;
    map['still_path'] = _stillPath;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }
}

/// air_date : "2023-01-22"
/// episode_number : 2
/// id : 4071039
/// name : "Infected"
/// overview : "In 2003, an Indonesian scientist makes a devastating discovery. In 2023, now outside of the quarantine zone, Joel and Tess clash over Ellie's fate as they navigate a long-abandoned Boston overrun with Infected."
/// production_code : ""
/// runtime : 53
/// season_number : 1
/// show_id : 100088
/// still_path : "/vGf7chl6XL7o3yYc8A5m3kjz8px.jpg"
/// vote_average : 8.645
/// vote_count : 31

class LastEpisodeToAir {
  LastEpisodeToAir({
    String? airDate,
    num? episodeNumber,
    num? id,
    String? name,
    String? overview,
    String? productionCode,
    num? runtime,
    num? seasonNumber,
    num? showId,
    String? stillPath,
    num? voteAverage,
    num? voteCount,
  }) {
    _airDate = airDate;
    _episodeNumber = episodeNumber;
    _id = id;
    _name = name;
    _overview = overview;
    _productionCode = productionCode;
    _runtime = runtime;
    _seasonNumber = seasonNumber;
    _showId = showId;
    _stillPath = stillPath;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
  }

  LastEpisodeToAir.fromJson(dynamic json) {
    _airDate = json['air_date'];
    _episodeNumber = json['episode_number'];
    _id = json['id'];
    _name = json['name'];
    _overview = json['overview'];
    _productionCode = json['production_code'];
    _runtime = json['runtime'];
    _seasonNumber = json['season_number'];
    _showId = json['show_id'];
    _stillPath = json['still_path'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }
  String? _airDate;
  num? _episodeNumber;
  num? _id;
  String? _name;
  String? _overview;
  String? _productionCode;
  num? _runtime;
  num? _seasonNumber;
  num? _showId;
  String? _stillPath;
  num? _voteAverage;
  num? _voteCount;
  LastEpisodeToAir copyWith({
    String? airDate,
    num? episodeNumber,
    num? id,
    String? name,
    String? overview,
    String? productionCode,
    num? runtime,
    num? seasonNumber,
    num? showId,
    String? stillPath,
    num? voteAverage,
    num? voteCount,
  }) =>
      LastEpisodeToAir(
        airDate: airDate ?? _airDate,
        episodeNumber: episodeNumber ?? _episodeNumber,
        id: id ?? _id,
        name: name ?? _name,
        overview: overview ?? _overview,
        productionCode: productionCode ?? _productionCode,
        runtime: runtime ?? _runtime,
        seasonNumber: seasonNumber ?? _seasonNumber,
        showId: showId ?? _showId,
        stillPath: stillPath ?? _stillPath,
        voteAverage: voteAverage ?? _voteAverage,
        voteCount: voteCount ?? _voteCount,
      );
  String? get airDate => _airDate;
  num? get episodeNumber => _episodeNumber;
  num? get id => _id;
  String? get name => _name;
  String? get overview => _overview;
  String? get productionCode => _productionCode;
  num? get runtime => _runtime;
  num? get seasonNumber => _seasonNumber;
  num? get showId => _showId;
  String? get stillPath => _stillPath;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['air_date'] = _airDate;
    map['episode_number'] = _episodeNumber;
    map['id'] = _id;
    map['name'] = _name;
    map['overview'] = _overview;
    map['production_code'] = _productionCode;
    map['runtime'] = _runtime;
    map['season_number'] = _seasonNumber;
    map['show_id'] = _showId;
    map['still_path'] = _stillPath;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }
}

/// id : 35796
/// credit_id : "5e84f06a3344c600153f6a57"
/// name : "Craig Mazin"
/// gender : 2
/// profile_path : "/uEhna6qcMuyU5TP7irpTUZ2ZsZc.jpg"

class CreatedBy {
  CreatedBy({
    num? id,
    String? creditId,
    String? name,
    num? gender,
    String? profilePath,
  }) {
    _id = id;
    _creditId = creditId;
    _name = name;
    _gender = gender;
    _profilePath = profilePath;
  }

  CreatedBy.fromJson(dynamic json) {
    _id = json['id'];
    _creditId = json['credit_id'];
    _name = json['name'];
    _gender = json['gender'];
    _profilePath = json['profile_path'];
  }
  num? _id;
  String? _creditId;
  String? _name;
  num? _gender;
  String? _profilePath;
  CreatedBy copyWith({
    num? id,
    String? creditId,
    String? name,
    num? gender,
    String? profilePath,
  }) =>
      CreatedBy(
        id: id ?? _id,
        creditId: creditId ?? _creditId,
        name: name ?? _name,
        gender: gender ?? _gender,
        profilePath: profilePath ?? _profilePath,
      );
  num? get id => _id;
  String? get creditId => _creditId;
  String? get name => _name;
  num? get gender => _gender;
  String? get profilePath => _profilePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['credit_id'] = _creditId;
    map['name'] = _name;
    map['gender'] = _gender;
    map['profile_path'] = _profilePath;
    return map;
  }
}
