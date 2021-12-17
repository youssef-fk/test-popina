import 'package:dio/dio.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_yousseffk/src/models/order_model.dart';

class OrdersNetworkService extends GetxService {
  OrdersNetworkService(this.dio);

  final Dio dio;

  Future<List<OrderModel>> getOrders() async {
    final response = await dio.get('https://raw.githubusercontent.com/popina/test-flutter/main/data.json');

    if (response.statusCode != 200) {
      throw Exception('There has been an issue fetching the data');
    }

    final ordersJson = response.data['orders'] as List;

    return ordersJson.map((e) => OrderModel.fromJson(e)).toList();
  }
}
