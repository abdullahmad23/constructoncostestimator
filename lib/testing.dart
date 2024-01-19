import 'package:constructoncostestimator/Components/Button.dart';
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

  bool flag = false;

  Map<String, dynamic> data = {
    "Bricks": {"Quantity": result['NoOfBricks'], "Cost": result['costOfBrick']},
    "Cement": {
      "Quantity": result['NoOfCement'],
      "Cost": result['CostOfCement']
    },
    "Sand": {"Quantity": result['NoOfSand'], "Cost": result['CostOfSand']},
    "Crush": {"Quantity": result['NoOfCrush'], "Cost": result['costOfCrush']},
    "Labour": {
      "Quantity": 12,
      "Cost": ['costOfLabour']
    },
    "Steel": {"Quantity": result['NoOfSteel'], "Cost": result['CostOfSteel']},
    // "Material&Labour": {"Quantity": 100, "Cost": 100},
    "Plumbing": {"Quantity": 'N/A', "Cost": result['CostOfPlumbing']},
    "Electrical": {"Quantity": 'N/A', "Cost": result['CostOfElectricity']},
    "Glass": {"Quantity": 'N/A', "Cost": result['CostOfGlass']},
    "UtilitiesTotal": {"Quantity": 'N/A', "Cost": result['CostOfUtilities']},
    "Windows": {
      "Quantity": result['NoOfWindow'],
      "Cost": result['CostOfWindow']
    },
    "Dorrs": {"Quantity": result['NoOfDoor'], "Cost": result['CostOfDoor']},
    "W&DTotal": {"Quantity": 'N/A', "Cost": result['CostOfwD']},
    "Colouring": {"Quantity": 'N/A', "Cost": result['CostOfColouring']},
    "RoofDecoration": {
      "Quantity": result['NoOfRD'],
      "Cost": result['CostOfRD']
    },
    "Washroom": {"Quantity": 'N/A', "Cost": result['CostOfWashroomDeco']},
    "Kitchens": {"Quantity": 'N/A', "Cost": result['CostOfKitchendeco']},
    "Others": {"Quantity": 'N/A', "Cost": result['CostOfOtherDeco']},
    "Total": {"Quantity": 'N/A', "Cost": result['CostOfTotalDeco']},
    "TotalCost": {
      "Quantity": 'N/A',
      "Cost": result['CostOfTotalEstimastedBudget']
    },
  };
  pdfPrint() {
    generatePdf(data).then((_) {});
    setState(() {
      flag = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Button(text: "Generate PDF", method: pdfPrint),
            flag
                ? Text(
                    'PDF saved Location \n files/android/data/com.construction/downloads',
                    style: TextStyle(color: Colors.white),
                  )
                : Text(
                    "Wait....",
                    style: TextStyle(color: Colors.white),
                  ),
          ],
        ),
      ),
    );
  }
}
