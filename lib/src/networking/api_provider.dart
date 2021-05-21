import 'dart:convert';
import 'dart:io';

import 'package:wmt_test_app/src/networking/api.dart';
import 'package:http/http.dart' as http;
import 'package:wmt_test_app/src/utils/Utils.dart';

class ApiProvider {
  static final ApiProvider _instance = ApiProvider.get();

  factory ApiProvider() {
    return _instance;
  }

  ApiProvider.get();

  Future<dynamic> get(String path, Map<String, String> params) async {
    var uri = Uri.https(Api.BASE, path, params);
    var responseJson;
    try {
      final response = await http.get(uri);
      responseJson = _response(response);
      return responseJson;
    } on SocketException {
      Utils.showToast("No Internet!");
    }
  }

  dynamic _response(http.Response response) {
    return json.decode(response.body);
  }
}
