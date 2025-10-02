// ignore_for_file: unrelated_type_equality_checks

import 'package:get/get.dart';

class ExpensionController extends GetxController {
  var isExpanded = false.obs;
  var id = 0.obs;

  void toggle(int ids) {
    if (id.value == ids) {
      isExpanded.value = !isExpanded.value;
    } else {
      id.value = ids;
      isExpanded.value = true;
    }
  }
}
