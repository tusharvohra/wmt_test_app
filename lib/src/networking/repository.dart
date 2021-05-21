import 'package:wmt_test_app/src/models/user_list.dart';
import 'package:wmt_test_app/src/networking/api.dart';
import 'package:wmt_test_app/src/networking/api_provider.dart';

class Repository {
  static final Repository _instance = Repository.get();

  factory Repository() {
    return _instance;
  }

  Repository.get();

  ApiProvider _apiProvider = ApiProvider();

  Future<UserList> getUserList(Map<String, String> params) async {
    final response = await _apiProvider.get(Api.API_BASE, params);
    return UserList.fromJson(response);
  }
}
