import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_yousseffk/src/config/di.dart';
import 'package:test_yousseffk/src/ui/items/items_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'yousseffk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ItemsPage(),
    );
  }
}
