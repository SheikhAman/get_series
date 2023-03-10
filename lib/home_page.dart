import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_series/controller.dart';
import 'package:get_series/total_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Books",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    c.incrementBooks();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Obx(
                  () => Text(
                    c.books.value.toString(),
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    c.decrementBooks();
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                Text(
                  "Pens",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    c.incrementPens();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Obx(
                  () => Text(
                    c.pen.value.toString(),
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    c.decrementPens();
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            GetBuilder<Controller>(
              builder: (controller) => Text(
                controller.bag.toString(),
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                c.incrementBag();
              },
              child: Text("increament"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => TotalPage());
              },
              child: const Text("Total"),
            ),
          ],
        ),
      ),
    );
  }
}
