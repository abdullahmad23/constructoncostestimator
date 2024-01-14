import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:flutter/material.dart';

class Utilities extends StatefulWidget {
  Map<String, dynamic> rawData;
  Utilities({super.key, required this.rawData});

  @override
  State<Utilities> createState() => _UtilitiesState();
}

class _UtilitiesState extends State<Utilities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Utitlites Cost",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff192730),
              ),
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
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  double floorArea() {
    double floorArea = 1.3;
    return (widget.rawData["coverdArea"] * floorArea);
  }

  double totalContructionCost() {
    double costPerSqft = 2000;
    return (widget.rawData["coverdArea"] * costPerSqft);
  }

  double CalculatePlumbingCost() {
    int plumbingcostperfeet = 50;
    double plumbingcost = ((floorArea() / 1.3) * plumbingcostperfeet);
    return (plumbingcost);
  }

  double CalculateElectricityCost() {
    double elictercitycost = totalContructionCost() * (6.8 / 100);
    return (elictercitycost);
  }

  double CalculateGlassCost() {
    double glassCost =
        (widget.rawData['BedRooms'] + widget.rawData['LivingRooms'] + 0.5);
    int oneWindowGlass = 24 * 155;
    return (glassCost * oneWindowGlass);
  }
}
