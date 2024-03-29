import 'package:forkify/controllers/popular_product_controller.dart';
import 'package:forkify/data/api/api_client.dart';
import 'package:forkify/data/repository/popular_product_repo.dart';
import 'package:forkify/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  
}
