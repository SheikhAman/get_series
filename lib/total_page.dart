import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_series/controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});

  final _c = Get.find<Controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                _c.sum.toString(),
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
