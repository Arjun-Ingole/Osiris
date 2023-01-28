class VideoDetails {
  VideoDetails({
      num? id, 
      List<VideoResults>? results,}){
    _id = id;
    _results = results;
}

  VideoDetails.fromJson(dynamic json) {
    _id = json['id'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(VideoResults.fromJson(v));
      });
    }
  }
  num? _id;
  List<VideoResults>? _results;
VideoDetails copyWith({  num? id,
  List<VideoResults>? results,
}) => VideoDetails(  id: id ?? _id,
  results: results ?? _results,
);
  num? get id => _id;
  List<VideoResults>? get results => _results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class VideoResults {
  VideoResults({
      String? iso6391, 
      String? iso31661, 
      String? name, 
      String? key, 
      String? site, 
      num? size, 
      String? type, 
      bool? official, 
      String? publishedAt, 
      String? id,}){
    _iso6391 = iso6391;
    _iso31661 = iso31661;
    _name = name;
    _key = key;
    _site = site;
    _size = size;
    _type = type;
    _official = official;
    _publishedAt = publishedAt;
    _id = id;
}

  VideoResults.fromJson(dynamic json) {
    _iso6391 = json['iso_639_1'];
    _iso31661 = json['iso_3166_1'];
    _name = json['name'];
    _key = json['key'];
    _site = json['site'];
    _size = json['size'];
    _type = json['type'];
    _official = json['official'];
    _publishedAt = json['published_at'];
    _id = json['id'];
  }
  String? _iso6391;
  String? _iso31661;
  String? _name;
  String? _key;
  String? _site;
  num? _size;
  String? _type;
  bool? _official;
  String? _publishedAt;
  String? _id;
VideoResults copyWith({  String? iso6391,
  String? iso31661,
  String? name,
  String? key,
  String? site,
  num? size,
  String? type,
  bool? official,
  String? publishedAt,
  String? id,
}) => VideoResults(  iso6391: iso6391 ?? _iso6391,
  iso31661: iso31661 ?? _iso31661,
  name: name ?? _name,
  key: key ?? _key,
  site: site ?? _site,
  size: size ?? _size,
  type: type ?? _type,
  official: official ?? _official,
  publishedAt: publishedAt ?? _publishedAt,
  id: id ?? _id,
);
  String? get iso6391 => _iso6391;
  String? get iso31661 => _iso31661;
  String? get name => _name;
  String? get key => _key;
  String? get site => _site;
  num? get size => _size;
  String? get type => _type;
  bool? get official => _official;
  String? get publishedAt => _publishedAt;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso_639_1'] = _iso6391;
    map['iso_3166_1'] = _iso31661;
    map['name'] = _name;
    map['key'] = _key;
    map['site'] = _site;
    map['size'] = _size;
    map['type'] = _type;
    map['official'] = _official;
    map['published_at'] = _publishedAt;
    map['id'] = _id;
    return map;
  }

}