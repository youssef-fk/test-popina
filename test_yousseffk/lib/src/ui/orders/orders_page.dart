import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_yousseffk/src/config/asset_colors.dart';
import 'package:test_yousseffk/src/services/orders_service.dart';
import 'package:test_yousseffk/src/ui/orders/widgets/order_list_tile.dart';

class OrdersPage extends GetView<OrdersService> {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final orderList = controller.rxOrderList.value;

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w300,
            color: AssetColors.boldColor,
            fontSize: 20,
          ),
          title: Text('${orderList.length} commandes'),
          centerTitle: true,
        ),
        body: orderList.isEmpty
            ? const Center(child: Text('Orders list is empty !'))
            : ListView.separated(
                padding: const EdgeInsets.all(12),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemCount: orderList.length,
                itemBuilder: (context, index) {
                  final order = orderList.elementAt(index);

                  return OrderListTile(order: order);
                },
              ),
      );
    });
  }
}
