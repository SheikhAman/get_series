import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt books = 0.obs;
  RxInt pen = 0.obs;

  int get sum => books.value + pen.value;

  int bag = 0;

  incrementBag() {
    bag++;
    update();
  }

  incrementBooks() {
    books.value++;
  }

  decrementBooks() {
    if (books.value <= 0) {
      Get.snackbar("Value is less or equal 0", "Action can't perform");
    } else {
      books.value--;
    }
  }

  incrementPens() {
    pen.value++;
  }

  decrementPens() {
    if (pen.value <= 0) {
      Get.snackbar("Value is less or equal 0", "Action can't perform");
    } else {
      pen.value--;
    }
  }
}
