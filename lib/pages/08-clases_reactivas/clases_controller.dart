import 'package:flutter_getx/models/rxpet_model.dart';
import 'package:get/get.dart';

class ClasesController extends GetxController {
  RxPetModel rxPet = RxPetModel(
    name: "Pipo",
    age: 1,
  );

  @override
  void onInit() {
    // TODO: implement onInit
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

  setAge() {
    rxPet.age++;
  }
}
