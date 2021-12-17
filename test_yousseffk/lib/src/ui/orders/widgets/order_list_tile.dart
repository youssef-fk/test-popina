import 'package:flutter/material.dart';
import 'package:test_yousseffk/src/config/asset_colors.dart';
import 'package:test_yousseffk/src/models/order_model.dart';

class OrderListTile extends StatelessWidget {
  const OrderListTile({Key? key, required this.order}) : super(key: key);

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    final leftBoxSize = 75.0;

    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(0),
      child: Material(
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            height: leftBoxSize,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AssetColors.pink,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  width: leftBoxSize,
                  child: Center(
                    child: Text(
                      order.table,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.face_outlined,
                          size: 20,
                          color: AssetColors.boldColor,
                        ),
                        SizedBox(width: 8),
                        Text(
                          order.guests.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            color: AssetColors.boldColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '18:20',
                      style: TextStyle(
                        fontSize: 18,
                        color: AssetColors.boldColor,
                      ),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: order.totalPrice.toString(),
                          style: TextStyle(
                            fontSize: 24,
                            color: AssetColors.boldColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ',00 ${order.currency}',
                          style: TextStyle(
                            fontSize: 24,
                            color: AssetColors.lightColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
