import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_yousseffk/src/models/order_model.dart';

void main() {
  test('Testing orders data serialization', () {
    final sampleJson = json.decode(_sample);
    final ordersJson = sampleJson['orders'] as List;

    final ordersList = ordersJson.map((e) => OrderModel.fromJson(e)).toList();

    // Adding date empty because it is initially omitted
    expect(ordersList.map((e) => e.toJson()..['date'] = ''), ordersJson);
  });
}

const _sample = '''{
  "object": "till",
  "orders":[
    {
      "object": "order",
      "id": 217,
      "table": "4",
      "guests": 3,
      "date": "",
      "items": [
        {
          "object": "item",
          "id": 217,
          "name": "Salade",
          "price": 900,
          "currency": "€",
          "color": "#73C399"
        },
        {
          "object": "item",
          "id": 218,
          "name": "Burger",
          "price": 1800,
          "currency": "€",
          "color": "#BD9B70"
        },
        {
          "object": "item",
          "id": 219,
          "name": "Tiramisù",
          "price": 800,
          "currency": "€",
          "color": "#FFAC69"
        }
      ]
    },
    {
      "object": "order",
      "id": 218,
      "table": "5",
      "guests": 1,
      "date": "",
      "items": [
        {
          "object": "item",
          "id": 220,
          "name": "Soupe",
          "price": 800,
          "currency": "€",
          "color": "#73C399"
        },
        {
          "object": "item",
          "id": 221,
          "name": "Pizza Napolitaine",
          "price": 1400,
          "currency": "€",
          "color": "#BD9B70"
        },
        {
          "object": "item",
          "id": 222,
          "name": "Mousse au Chocolat",
          "price": 900,
          "currency": "€",
          "color": "#FFAC69"
        }
      ]
    },
    {
      "object": "order",
      "id": 219,
      "table": "8",
      "guests": 2,
      "date": "",
      "items": [
        {
          "object": "item",
          "id": 223,
          "name": "Soupe Miso",
          "price": 600,
          "currency": "€",
          "color": "#73C399"
        },
        {
          "object": "item",
          "id": 224,
          "name": "Tataki de Thon",
          "price": 1900,
          "currency": "€",
          "color": "#BD9B70"
        },
        {
          "object": "item",
          "id": 225,
          "name": "Boules Coco",
          "price": 350,
          "currency": "€",
          "color": "#FFAC69"
        }
      ]
    }
  ]
}''';
