import 'dart:async';

import 'package:get/get.dart';
import 'package:faker/faker.dart';

class SocketController extends GetxController {
  RxString _message = "".obs;
  RxString get message => _message;

  @override
  void onInit() {
    _loadMessage();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    _timer ?? _timer?.cancel();
  }

  Timer? _timer;
  final _faker = Faker();

  _loadMessage() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      _message.value = _faker.lorem.sentence();
    });
  }
}
