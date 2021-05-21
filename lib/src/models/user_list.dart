import 'package:wmt_test_app/src/models/user.dart';

class UserList {
  List<User> _users;
  Info _info;

  List<User> get users => _users;
  Info get info => _info;

  UserList({
      List<User> users,
      Info info}){
    _users = users;
    _info = info;
}

  UserList.fromJson(dynamic json) {
    if (json["results"] != null) {
      _users = [];
      json["results"].forEach((v) {
        _users.add(User.fromJson(v));
      });
    }
    _info = json["info"] != null ? Info.fromJson(json["info"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_users != null) {
      map["results"] = _users.map((v) => v.toJson()).toList();
    }
    if (_info != null) {
      map["info"] = _info.toJson();
    }
    return map;
  }

}

class Info {
  String _seed;
  int _users;
  int _page;
  String _version;

  String get seed => _seed;
  int get users => _users;
  int get page => _page;
  String get version => _version;

  Info({
      String seed, 
      int users,
      int page, 
      String version}){
    _seed = seed;
    _users = users;
    _page = page;
    _version = version;
}

  Info.fromJson(dynamic json) {
    _seed = json["seed"];
    _users = json["results"];
    _page = json["page"];
    _version = json["version"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["seed"] = _seed;
    map["results"] = _users;
    map["page"] = _page;
    map["version"] = _version;
    return map;
  }

}