import 'package:get/get.dart';

class SelectController extends GetxController {
  var index = 0.obs;

  void setselected(var ind) {
    index.value = ind;
  }

  bool isSelected(int ind) {
    return index.value == ind;
  }
}
