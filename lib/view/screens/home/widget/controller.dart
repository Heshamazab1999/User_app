import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class HomeController extends GetxController {



  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    await initializeDateFormatting("ar", "en");
  }
}
