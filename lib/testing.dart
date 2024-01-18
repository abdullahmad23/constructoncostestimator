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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
