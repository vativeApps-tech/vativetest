import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vativetest/BestStateManagement/Getx/GetxState.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterApplication());
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Center(
                child: Text(
                  'clicks: ${controller.count}',
                ),
              )),
          SizedBox(
            height: 30,
          ),
          TextButton(onPressed: controller.countincrement, child: Text('Tap')),
        ],
      ),
    );
  }
}
