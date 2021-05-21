class User {
  String _gender;
  Name _name;
  Location _location;
  String _email;
  Login _login;
  Dob _dob;
  Registered _registered;
  String _phone;
  String _cell;
  Id _id;
  Picture _picture;
  String _nat;

  String get gender => _gender;
  Name get name => _name;
  Location get location => _location;
  String get email => _email;
  Login get login => _login;
  Dob get dob => _dob;
  Registered get registered => _registered;
  String get phone => _phone;
  String get cell => _cell;
  Id get id => _id;
  Picture get picture => _picture;
  String get nat => _nat;

  User({
    String gender,
    Name name,
    Location location,
    String email,
    Login login,
    Dob dob,
    Registered registered,
    String phone,
    String cell,
    Id id,
    Picture picture,
    String nat}){
    _gender = gender;
    _name = name;
    _location = location;
    _email = email;
    _login = login;
    _dob = dob;
    _registered = registered;
    _phone = phone;
    _cell = cell;
    _id = id;
    _picture = picture;
    _nat = nat;
  }

  User.fromJson(dynamic json) {
    _gender = json["gender"];
    _name = json["name"] != null ? Name.fromJson(json["name"]) : null;
    _location = json["location"] != null ? Location.fromJson(json["location"]) : null;
    _email = json["email"];
    _login = json["login"] != null ? Login.fromJson(json["login"]) : null;
    _dob = json["dob"] != null ? Dob.fromJson(json["dob"]) : null;
    _registered = json["registered"] != null ? Registered.fromJson(json["registered"]) : null;
    _phone = json["phone"];
    _cell = json["cell"];
    _id = json["id"] != null ? Id.fromJson(json["id"]) : null;
    _picture = json["picture"] != null ? Picture.fromJson(json["picture"]) : null;
    _nat = json["nat"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["gender"] = _gender;
    if (_name != null) {
      map["name"] = _name.toJson();
    }
    if (_location != null) {
      map["location"] = _location.toJson();
    }
    map["email"] = _email;
    if (_login != null) {
      map["login"] = _login.toJson();
    }
    if (_dob != null) {
      map["dob"] = _dob.toJson();
    }
    if (_registered != null) {
      map["registered"] = _registered.toJson();
    }
    map["phone"] = _phone;
    map["cell"] = _cell;
    if (_id != null) {
      map["id"] = _id.toJson();
    }
    if (_picture != null) {
      map["picture"] = _picture.toJson();
    }
    map["nat"] = _nat;
    return map;
  }

}

class Picture {
  String _large;
  String _medium;
  String _thumbnail;

  String get large => _large;
  String get medium => _medium;
  String get thumbnail => _thumbnail;

  Picture({
    String large,
    String medium,
    String thumbnail}){
    _large = large;
    _medium = medium;
    _thumbnail = thumbnail;
  }

  Picture.fromJson(dynamic json) {
    _large = json["large"];
    _medium = json["medium"];
    _thumbnail = json["thumbnail"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["large"] = _large;
    map["medium"] = _medium;
    map["thumbnail"] = _thumbnail;
    return map;
  }

}

class Id {
  String _name;
  dynamic _value;

  String get name => _name;
  dynamic get value => _value;

  Id({
    String name,
    dynamic value}){
    _name = name;
    _value = value;
  }

  Id.fromJson(dynamic json) {
    _name = json["name"];
    _value = json["value"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["value"] = _value;
    return map;
  }

}

class Registered {
  String _date;
  int _age;

  String get date => _date;
  int get age => _age;

  Registered({
    String date,
    int age}){
    _date = date;
    _age = age;
  }

  Registered.fromJson(dynamic json) {
    _date = json["date"];
    _age = json["age"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["date"] = _date;
    map["age"] = _age;
    return map;
  }

}

class Dob {
  String _date;
  int _age;

  String get date => _date;
  int get age => _age;

  Dob({
    String date,
    int age}){
    _date = date;
    _age = age;
  }

  Dob.fromJson(dynamic json) {
    _date = json["date"];
    _age = json["age"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["date"] = _date;
    map["age"] = _age;
    return map;
  }

}

class Login {
  String _uuid;
  String _username;
  String _password;
  String _salt;
  String _md5;
  String _sha1;
  String _sha256;

  String get uuid => _uuid;
  String get username => _username;
  String get password => _password;
  String get salt => _salt;
  String get md5 => _md5;
  String get sha1 => _sha1;
  String get sha256 => _sha256;

  Login({
    String uuid,
    String username,
    String password,
    String salt,
    String md5,
    String sha1,
    String sha256}){
    _uuid = uuid;
    _username = username;
    _password = password;
    _salt = salt;
    _md5 = md5;
    _sha1 = sha1;
    _sha256 = sha256;
  }

  Login.fromJson(dynamic json) {
    _uuid = json["uuid"];
    _username = json["username"];
    _password = json["password"];
    _salt = json["salt"];
    _md5 = json["md5"];
    _sha1 = json["sha1"];
    _sha256 = json["sha256"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["uuid"] = _uuid;
    map["username"] = _username;
    map["password"] = _password;
    map["salt"] = _salt;
    map["md5"] = _md5;
    map["sha1"] = _sha1;
    map["sha256"] = _sha256;
    return map;
  }

}

class Location {
  Street _street;
  String _city;
  String _state;
  String _country;
  // int _postcode;
  dynamic _postcode;
  Coordinates _coordinates;
  Timezone _timezone;

  Street get street => _street;
  String get city => _city;
  String get state => _state;
  String get country => _country;
  // int get postcode => _postcode;
  dynamic get postcode => _postcode;
  Coordinates get coordinates => _coordinates;
  Timezone get timezone => _timezone;

  Location({
    Street street,
    String city,
    String state,
    String country,
    // int postcode,
    dynamic postcode,
    Coordinates coordinates,
    Timezone timezone}){
    _street = street;
    _city = city;
    _state = state;
    _country = country;
    _postcode = postcode;
    _coordinates = coordinates;
    _timezone = timezone;
  }

  Location.fromJson(dynamic json) {
    _street = json["street"] != null ? Street.fromJson(json["street"]) : null;
    _city = json["city"];
    _state = json["state"];
    _country = json["country"];
    _postcode = json["postcode"];
    _coordinates = json["coordinates"] != null ? Coordinates.fromJson(json["coordinates"]) : null;
    _timezone = json["timezone"] != null ? Timezone.fromJson(json["timezone"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_street != null) {
      map["street"] = _street.toJson();
    }
    map["city"] = _city;
    map["state"] = _state;
    map["country"] = _country;
    map["postcode"] = _postcode;
    if (_coordinates != null) {
      map["coordinates"] = _coordinates.toJson();
    }
    if (_timezone != null) {
      map["timezone"] = _timezone.toJson();
    }
    return map;
  }

}

class Timezone {
  String _offset;
  String _description;

  String get offset => _offset;
  String get description => _description;

  Timezone({
    String offset,
    String description}){
    _offset = offset;
    _description = description;
  }

  Timezone.fromJson(dynamic json) {
    _offset = json["offset"];
    _description = json["description"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["offset"] = _offset;
    map["description"] = _description;
    return map;
  }

}

class Coordinates {
  String _latitude;
  String _longitude;

  String get latitude => _latitude;
  String get longitude => _longitude;

  Coordinates({
    String latitude,
    String longitude}){
    _latitude = latitude;
    _longitude = longitude;
  }

  Coordinates.fromJson(dynamic json) {
    _latitude = json["latitude"];
    _longitude = json["longitude"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["latitude"] = _latitude;
    map["longitude"] = _longitude;
    return map;
  }

}

class Street {
  int _number;
  String _name;

  int get number => _number;
  String get name => _name;

  Street({
    int number,
    String name}){
    _number = number;
    _name = name;
  }

  Street.fromJson(dynamic json) {
    _number = json["number"];
    _name = json["name"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["number"] = _number;
    map["name"] = _name;
    return map;
  }

}

class Name {
  String _title;
  String _first;
  String _last;

  String get title => _title;
  String get first => _first;
  String get last => _last;

  Name({
    String title,
    String first,
    String last}){
    _title = title;
    _first = first;
    _last = last;
  }

  Name.fromJson(dynamic json) {
    _title = json["title"];
    _first = json["first"];
    _last = json["last"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["title"] = _title;
    map["first"] = _first;
    map["last"] = _last;
    return map;
  }

}