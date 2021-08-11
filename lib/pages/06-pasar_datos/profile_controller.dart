import 'package:flutter_getx/models/user_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  UserModel _user = UserModel();
  UserModel get user => _user;

  @override
  void onInit() {
    _loadInfo();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  _loadInfo() {
    this._user = Get.arguments as UserModel;
    print(_user);
  }
}
