import 'package:get/get.dart';
import 'package:sezicat/app/modules/app_layout/controller/layout_controller.dart';

class LayoutBinding implements Bindings{
  @override
  void dependencies() {
Get.put( LayoutController());  }
  
}