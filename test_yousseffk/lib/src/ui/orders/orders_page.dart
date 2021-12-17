import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'orders_controller.dart';

class OrdersPage extends GetView<OrdersController> {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OrdersController()); // Init controller

    return Scaffold(
      body: Container(),
    );
  }
}
