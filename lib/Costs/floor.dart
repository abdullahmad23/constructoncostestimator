import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:flutter/material.dart';

class Floor extends StatefulWidget {
  Map<String, dynamic> rawData;
  Floor({super.key, required this.rawData});

  @override
  State<Floor> createState() => _FloorState();
}

class _FloorState extends State<Floor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text(
                "Floor Cost",
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
                child: Column(children: [
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
                      Text("Material & labour", style: Heading5()),
                      Text("${floorArea().toString()} Area", style: Heading5()),
                      Text(calculateFloorCost().toString(), style: Heading5()),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double floorArea() {
    double floorArea = 1.3;
    return (widget.rawData["coverdArea"] * floorArea);
  }

  // ============== Calculate Total floor Area cost =================
  double calculateFloorCost() {
    double labourCostPersqft = 350; // labour cost per sqft area
    return (floorArea() * labourCostPersqft);
  }
}
