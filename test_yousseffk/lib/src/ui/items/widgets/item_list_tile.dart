import 'package:flutter/material.dart';
import 'package:test_yousseffk/src/models/item_model.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({Key? key, required this.item}) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    final size = 45.0;

    return Container(
      height: size,
      child: Row(
        children: [
          Container(
            width: size,
            decoration: BoxDecoration(
              color: item.color,
            ),
            child: Center(
              child: Text(
                item.object,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Text(
            item.name,
            style: TextStyle(
              color: item.color,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: SizedBox()),
          Text(
            '${item.price},00${item.currency}',
            style: TextStyle(
              color: item.color,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
