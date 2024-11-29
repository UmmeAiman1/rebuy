import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  RxInt currentIndex = 1.obs;

  
  void onChangeIndex(int index) {
    currentIndex.value = index;
  }
}
