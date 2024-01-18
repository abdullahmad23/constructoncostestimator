import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:flutter/material.dart';

class Steel extends StatefulWidget {
  Map<String, dynamic> rawData;

  Steel({super.key, required this.rawData});

  @override
  State<Steel> createState() => _FoundationState();
}

class _FoundationState extends State<Steel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // ================ Steel Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Text(
              "Steel Cost",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff192730),
              ),
              padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Item", style: Heading5Orange()),
                      Text("Quantity", style: Heading5Orange()),
                      Text("Cost", style: Heading5Orange()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Steel", style: Heading5()),
                      Text("${calculateSteel().toString()} ton",
                          style: Heading5()),
                      Text(calculateSteelCost().toString(), style: Heading5()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

// ============== Calculate Total steel in tons  =================
  double calculateSteel() {
    double steelPerSqft = 0.004; // how many steel use in 1sq.ft area in tons
    return (widget.rawData["coverdArea"] * steelPerSqft);
  }

  // ============== Calculate Total Crush cost =================
  double calculateSteelCost() {
    double steelCostPerTon = 235000; // cost of  steel in tons
    return (calculateSteel() * steelCostPerTon);
  }
}
