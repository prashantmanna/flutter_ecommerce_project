import 'package:flutter_ecommerce_project/utils/device/NetworkManager.dart';
import 'package:get/get.dart';

class GeneralBindings extends Bindings{

  @override
  void dependencies() {
    Get.put(SNetworkManager());
  }
}