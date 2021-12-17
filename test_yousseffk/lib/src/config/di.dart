import 'package:get/get.dart';
import 'package:test_yousseffk/src/cache/order_cache_service.dart';
import 'package:test_yousseffk/src/network/orders_network_service.dart';
import 'package:test_yousseffk/src/services/orders_service.dart';

Future<void> initDependencies() async {
  Get.lazyPut(() => OrderCacheService());
  Get.lazyPut(() => OrdersNetworkService());
  Get.lazyPut(() => OrdersService());
}
