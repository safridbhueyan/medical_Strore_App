import 'package:get/get.dart';

class SelectController extends GetxController {
  var index = 0.obs;
  var colorIndex = 0.obs;

  void setselected(var ind) {
    index.value = ind;
  }

  void colorSetselected(var ind) {
    colorIndex.value = ind;
  }

  bool isSelected(int ind) {
    return index.value == ind;
  }

  bool isColorSelected(int ind) {
    return colorIndex.value == ind;
  }
}
