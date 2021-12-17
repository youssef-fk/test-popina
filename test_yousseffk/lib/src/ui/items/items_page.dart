import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'items_controller.dart';

class ItemsPage extends GetView<ItemsController> {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsController()); // Init controller

    return Scaffold(
      body: Container(),
    );
  }
}
