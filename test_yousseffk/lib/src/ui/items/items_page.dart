import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_yousseffk/src/config/asset_colors.dart';
import 'package:test_yousseffk/src/models/order_model.dart';
import 'package:test_yousseffk/src/ui/items/widgets/item_list_tile.dart';

import 'items_controller.dart';

class ItemsPage extends GetView<ItemsController> {
  const ItemsPage({Key? key, required this.order}) : super(key: key);

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsController(order)); // Init controller

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AssetColors.boldColor,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w300,
          color: AssetColors.boldColor,
          fontSize: 20,
        ),
        title: Text('Table ${order.table}'),
        centerTitle: true,
        bottom: PreferredSize(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50.0,
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${order.items.length} produits',
                      style: TextStyle(
                        fontSize: 18,
                        color: AssetColors.lightColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    VerticalDivider(
                      color: AssetColors.lightColor,
                      thickness: 2,
                      // endIndent: 18,
                      // indent: 6,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: order.totalPrice.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              color: AssetColors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ',00 ${order.currency}',
                            style: TextStyle(
                              fontSize: 18,
                              color: AssetColors.blue,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: (MediaQuery.of(context).size.width / 2) - 2,
                  color: AssetColors.blue,
                  height: 5,
                ),
              )
            ],
          ),
          preferredSize: Size.fromHeight(52.0),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: order.items.length,
        separatorBuilder: (context, index) => SizedBox(height: 12),
        itemBuilder: (context, index) {
          final item = order.items.elementAt(index);

          return ItemListTile(item: item);
        },
      ),
    );
  }
}
