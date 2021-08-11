import 'package:flutter_getx/models/user_model.dart';
import 'package:dio/dio.dart';

class UserApi {
  //Sigleton...
  UserApi._internal();
  static UserApi _instance = UserApi._internal();
  static UserApi get instace => _instance;

  Future<List<UserModel>> getUsers(int page) async {
    final dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": page,
        "delay": 10,
      },
    );

    print(response.data);
    return (response.data["data"] as List)
        .map((item) => UserModel.fromJson(item))
        .toList();
  }
}
