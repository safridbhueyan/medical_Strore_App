import 'package:get/get.dart';

class ExpensionController extends GetxController {
  var isExpanded = false.obs;

  void toggle() {
    isExpanded.value = !isExpanded.value;
  }
}
