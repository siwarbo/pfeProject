import 'package:flutter/material.dart';
import 'package:forkify/controllers/popular_product_controller.dart';
import 'package:forkify/pages/food/popular_food_detail.dart';
import 'package:forkify/pages/food/recommended_food_detail.dart';
import 'package:forkify/pages/home/food_page_body.dart';
import 'package:forkify/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}
