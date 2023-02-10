class Episodes {
  Episodes({
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
      List<Crew>? crew, 
      List<GuestStars>? guestStars,}){
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
    _crew = crew;
    _guestStars = guestStars;
}

  Episodes.fromJson(dynamic json) {
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
    if (json['crew'] != null) {
      _crew = [];
      json['crew'].forEach((v) {
        _crew?.add(Crew.fromJson(v));
      });
    }
    if (json['guest_stars'] != null) {
      _guestStars = [];
      json['guest_stars'].forEach((v) {
        _guestStars?.add(GuestStars.fromJson(v));
      });
    }
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
  List<Crew>? _crew;
  List<GuestStars>? _guestStars;
Episodes copyWith({  String? airDate,
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
  List<Crew>? crew,
  List<GuestStars>? guestStars,
}) => Episodes(  airDate: airDate ?? _airDate,
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
  crew: crew ?? _crew,
  guestStars: guestStars ?? _guestStars,
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
  List<Crew>? get crew => _crew;
  List<GuestStars>? get guestStars => _guestStars;

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
    if (_crew != null) {
      map['crew'] = _crew?.map((v) => v.toJson()).toList();
    }
    if (_guestStars != null) {
      map['guest_stars'] = _guestStars?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class GuestStars {
  GuestStars({
      String? character, 
      String? creditId, 
      num? order, 
      bool? adult, 
      num? gender, 
      num? id, 
      String? knownForDepartment, 
      String? name, 
      String? originalName, 
      num? popularity, 
      String? profilePath,}){
    _character = character;
    _creditId = creditId;
    _order = order;
    _adult = adult;
    _gender = gender;
    _id = id;
    _knownForDepartment = knownForDepartment;
    _name = name;
    _originalName = originalName;
    _popularity = popularity;
    _profilePath = profilePath;
}

  GuestStars.fromJson(dynamic json) {
    _character = json['character'];
    _creditId = json['credit_id'];
    _order = json['order'];
    _adult = json['adult'];
    _gender = json['gender'];
    _id = json['id'];
    _knownForDepartment = json['known_for_department'];
    _name = json['name'];
    _originalName = json['original_name'];
    _popularity = json['popularity'];
    _profilePath = json['profile_path'];
  }
  String? _character;
  String? _creditId;
  num? _order;
  bool? _adult;
  num? _gender;
  num? _id;
  String? _knownForDepartment;
  String? _name;
  String? _originalName;
  num? _popularity;
  String? _profilePath;
GuestStars copyWith({  String? character,
  String? creditId,
  num? order,
  bool? adult,
  num? gender,
  num? id,
  String? knownForDepartment,
  String? name,
  String? originalName,
  num? popularity,
  String? profilePath,
}) => GuestStars(  character: character ?? _character,
  creditId: creditId ?? _creditId,
  order: order ?? _order,
  adult: adult ?? _adult,
  gender: gender ?? _gender,
  id: id ?? _id,
  knownForDepartment: knownForDepartment ?? _knownForDepartment,
  name: name ?? _name,
  originalName: originalName ?? _originalName,
  popularity: popularity ?? _popularity,
  profilePath: profilePath ?? _profilePath,
);
  String? get character => _character;
  String? get creditId => _creditId;
  num? get order => _order;
  bool? get adult => _adult;
  num? get gender => _gender;
  num? get id => _id;
  String? get knownForDepartment => _knownForDepartment;
  String? get name => _name;
  String? get originalName => _originalName;
  num? get popularity => _popularity;
  String? get profilePath => _profilePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['character'] = _character;
    map['credit_id'] = _creditId;
    map['order'] = _order;
    map['adult'] = _adult;
    map['gender'] = _gender;
    map['id'] = _id;
    map['known_for_department'] = _knownForDepartment;
    map['name'] = _name;
    map['original_name'] = _originalName;
    map['popularity'] = _popularity;
    map['profile_path'] = _profilePath;
    return map;
  }

}

class Crew {
  Crew({
      String? job, 
      String? department, 
      String? creditId, 
      bool? adult, 
      num? gender, 
      num? id, 
      String? knownForDepartment, 
      String? name, 
      String? originalName, 
      num? popularity, 
      String? profilePath,}){
    _job = job;
    _department = department;
    _creditId = creditId;
    _adult = adult;
    _gender = gender;
    _id = id;
    _knownForDepartment = knownForDepartment;
    _name = name;
    _originalName = originalName;
    _popularity = popularity;
    _profilePath = profilePath;
}

  Crew.fromJson(dynamic json) {
    _job = json['job'];
    _department = json['department'];
    _creditId = json['credit_id'];
    _adult = json['adult'];
    _gender = json['gender'];
    _id = json['id'];
    _knownForDepartment = json['known_for_department'];
    _name = json['name'];
    _originalName = json['original_name'];
    _popularity = json['popularity'];
    _profilePath = json['profile_path'];
  }
  String? _job;
  String? _department;
  String? _creditId;
  bool? _adult;
  num? _gender;
  num? _id;
  String? _knownForDepartment;
  String? _name;
  String? _originalName;
  num? _popularity;
  String? _profilePath;
Crew copyWith({  String? job,
  String? department,
  String? creditId,
  bool? adult,
  num? gender,
  num? id,
  String? knownForDepartment,
  String? name,
  String? originalName,
  num? popularity,
  String? profilePath,
}) => Crew(  job: job ?? _job,
  department: department ?? _department,
  creditId: creditId ?? _creditId,
  adult: adult ?? _adult,
  gender: gender ?? _gender,
  id: id ?? _id,
  knownForDepartment: knownForDepartment ?? _knownForDepartment,
  name: name ?? _name,
  originalName: originalName ?? _originalName,
  popularity: popularity ?? _popularity,
  profilePath: profilePath ?? _profilePath,
);
  String? get job => _job;
  String? get department => _department;
  String? get creditId => _creditId;
  bool? get adult => _adult;
  num? get gender => _gender;
  num? get id => _id;
  String? get knownForDepartment => _knownForDepartment;
  String? get name => _name;
  String? get originalName => _originalName;
  num? get popularity => _popularity;
  String? get profilePath => _profilePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['job'] = _job;
    map['department'] = _department;
    map['credit_id'] = _creditId;
    map['adult'] = _adult;
    map['gender'] = _gender;
    map['id'] = _id;
    map['known_for_department'] = _knownForDepartment;
    map['name'] = _name;
    map['original_name'] = _originalName;
    map['popularity'] = _popularity;
    map['profile_path'] = _profilePath;
    return map;
  }
}