import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SnackBar
              ElevatedButton(
                onPressed: () {
                  Get.snackbar("hello", "this is snackbar");
                },
                child: Text("SnackBar"),
              ),
              // default dialog
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(title: "I am a dialog");
                },
                child: Text("default Dialog"),
              ),
              // dialog
              ElevatedButton(
                onPressed: () {
                  Get.dialog(
                    AlertDialog(
                      title: const Text('Dialog'),
                      content: const Text('This is a dialog'),
                      actions: [
                        TextButton(
                          child: const Text("Close"),
                          onPressed: () => Get.back(),
                        ),
                      ],
                    ),
                  );
                },
                child: Text("Dialog"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
