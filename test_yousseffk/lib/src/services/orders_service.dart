import 'package:get/get.dart';
import 'package:test_yousseffk/src/models/order_model.dart';
import 'package:test_yousseffk/src/network/orders_network_service.dart';

class OrdersService extends GetxService {
  final OrdersNetworkService _ordersNetworkService = Get.find();

  final rxOrderList = <OrderModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    /// Initial call for populating the data
    refreshOrders();
  }

  Future<void> refreshOrders() async {
    try {
      final data = await _ordersNetworkService.getOrders();

      rxOrderList.value = data;
    } catch (e) {
      Get.showSnackbar(GetSnackBar(title: e.toString()));
    }
  }
}
