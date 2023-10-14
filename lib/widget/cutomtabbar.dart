import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_ui/controller/controller.dart';
import 'package:sample_ui/widget/card_widget.dart';

class CustomTabBAr extends StatelessWidget {
  final ProductController controller = Get.put(ProductController());
  CustomTabBAr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: .5),
            indicatorColor: Colors.pinkAccent,
            tabs: [
              Tab(
                text: ("ALL"),
              ),
              Tab(
                text: ("My Feeds"),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Obx(
            () => controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.productList.length,
                    itemBuilder: (context, index) {
                      return CardWidget(product: controller.productList[index]);
                    },
                  ),
          )
        ]),
      ),
    );
  }
}
