import 'package:get/get.dart';

class SizeController extends GetxController {
  var isSelected = "S".obs;

  void select(String size) {
    isSelected.value = size;
  }
}
