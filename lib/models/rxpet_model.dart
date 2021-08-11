import 'package:get/state_manager.dart';

class RxPetModel {
  RxPetModel({
    String? name,
    int? age,
  }) {
    //cuerpo del constructor
    this.name = name ?? "";
    this.age = age ?? 0;
  }

  RxString _name = RxString("");
  set name(String value) => _name.value = value;
  String get name => _name.value;

  RxInt _age = RxInt(0);
  set age(int value) => _age.value = value;
  int get age => _age.value;
}
