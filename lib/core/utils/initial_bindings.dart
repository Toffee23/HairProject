import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/data/apiClient/api_client.dart';
import 'package:hairsol/data/apiClient/dio_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(DioService());
    // Get.put(ApiClient(Get.find<DioService>()));
    Connectivity connectivity = Connectivity();
  }
}
