import 'package:get/get.dart';

class ReactivoController extends GetxController {
  RxInt counter = 10.obs;

  //Se le agrega .obs a los tipo de datos primitivos
  //Int
  //String
  //double
  //bool

  //a quien NO se le agregsa .obs
  //List
  //Map

  RxList<String> items = RxList();

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

  increment() {
    counter++;
  }

  decrement() {
    counter--;
  }

  addItem() {
    this.items.add(DateTime.now().toString());
  }

  deleteItem(int index) {
    this.items.removeAt(index);
  }
}
