import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String saldo = 'R\$ 879.580.90';
  bool eyesValue = true;
  String creditCardValue = 'R\$ 4.489,90';

  void showValue() {
    eyesValue = !eyesValue;

    update();
  }
}
