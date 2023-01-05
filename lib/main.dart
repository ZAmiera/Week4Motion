import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "";
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data.isEmpty ? "" : data),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const SecondPage())?.then((value) => {
                        setState(() {
                          data = value;
                        })
                      });
                },
                child: const Text("Next Page"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffEAC7C7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data = "Zahra Amiera Putri Sailendra";
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back(result: data);
                },
                child: const Text("Back"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffEAC7C7),
                ))
          ],
        ),
      ),
    );
  }
}
