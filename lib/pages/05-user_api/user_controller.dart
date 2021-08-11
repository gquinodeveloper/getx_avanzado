import 'package:flutter/material.dart';
import 'package:flutter_getx/api/user_api.dart';
import 'package:flutter_getx/models/user_model.dart';
import 'package:flutter_getx/pages/06-pasar_datos/profile_page.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  List<UserModel> _users = [];
  List<UserModel> get users => _users;

  /*
  List<UserModel> get usersx (value){
    return this._users
  }*/

  @override
  void onInit() {
    _loadUser();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  _loadUser() async {
    try {
      final data = await UserApi.instace.getUsers(1);
      this._users = data;

      update(["users"]);
    } catch (e) {
      print(e.toString());
    }
  }

  goProfile(UserModel user) {
    print(user.firstName);
    Get.to(() => ProfilePage(), arguments: user);
  }
}
