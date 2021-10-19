class Repository {

  static Repository? _instance;

  @override
  Repository._internal();

  factory Repository(){
    _instance ?? Repository._internal();
    return _instance!;
  }

  String? auth_token;

  String? url;

  String get getAuthToken => auth_token!;
  set setAuthToken(String value) => auth_token = value;

  String get getUrl => url!;
  set setUrl(String value) => url = value;
}

