import 'dart:developer';

import 'package:get/get.dart';
import 'package:sample_ui/model/product.dart';
import 'package:sample_ui/services/service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    log("working");
    try {
      isLoading(true);
      var products = await Remoteservices.fetchproduct();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
