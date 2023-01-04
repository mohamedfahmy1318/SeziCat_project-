import 'package:get/get.dart';
import 'package:sezicat/app/modules/reports/controller/report_controller.dart';

class ReportBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ReportController());
  }

}