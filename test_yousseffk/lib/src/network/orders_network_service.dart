import 'package:get/get_connect.dart';
import 'package:test_yousseffk/src/models/order_model.dart';

class OrdersNetworkService extends GetConnect {
  Future<List<OrderModel>> getOrders() async {
    final response = await get('https://raw.githubusercontent.com/popina/test-flutter/main/data.json');

    if (response.statusCode != 200) {
      throw Exception('There has been an issue fetching the data');
    }

    final ordersJson = response.body['orders'] as List;

    return ordersJson.map((e) => OrderModel.fromJson(e)).toList();
  }
}
