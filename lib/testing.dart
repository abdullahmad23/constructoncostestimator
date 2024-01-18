import 'package:constructoncostestimator/Screens/TotalBudget.dart';
import 'package:flutter/material.dart';

class TestingLab extends StatefulWidget {
  const TestingLab({super.key});

  @override
  State<TestingLab> createState() => _TestingLabState();
}

class _TestingLabState extends State<TestingLab> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("==================");
    print(result['NoOfBricks']);
    print(result['costOfBrick']);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
