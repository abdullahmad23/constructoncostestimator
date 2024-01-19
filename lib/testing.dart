import 'package:constructoncostestimator/Screens/Print.dart';
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

  Map<String, dynamic> data = {
    "Bricks": {"Quantity": result['NoOfBricks'], "Cost": result['costOfBrick']},
    "Cement": {
      "Quantity": result['NoOfCement'],
      "Cost": result['CostOfCement']
    },
    "Sand": {"Quantity": result['NoOfSand'], "Cost": result['CostOfSand']},
    "Crush": {"Quantity": 100, "Cost": 100},
    "Labour": {"Quantity": 100, "Cost": 100},
    "Steel": {"Quantity": 100, "Cost": 100},
    "Material&Labour": {"Quantity": 100, "Cost": 100},
    "Plumbing": {"Quantity": 100, "Cost": 100},
    "Electrical": {"Quantity": 100, "Cost": 100},
    "Glass": {"Quantity": 100, "Cost": 100},
    "UtilitiesTotal": {"Quantity": 100, "Cost": 100},
    "Windows": {"Quantity": 100, "Cost": 100},
    "Dorrs": {"Quantity": 100, "Cost": 100},
    "W&DTotal": {"Quantity": 100, "Cost": 100},
    "Colouring": {"Quantity": 100, "Cost": 100},
    "RoofDecoration": {"Quantity": 100, "Cost": 100},
    "Washroom": {"Quantity": 100, "Cost": 100},
    "Kitchens": {"Quantity": 100, "Cost": 100},
    "Others": {"Quantity": 100, "Cost": 100},
    "Total": {"Quantity": 100, "Cost": 100},
    "TotalCost": {"Quantity": 00, "Cost": 100},
  };
  void pdfPrint() {
    generatePdf(data).then((_) {
      print('PDF generated file.');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("btn"),
          onPressed: pdfPrint,
        ),
      ),
    );
  }
}
