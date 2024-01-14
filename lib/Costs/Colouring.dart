import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:flutter/material.dart';

class Colouring extends StatefulWidget {
  Map<String, dynamic> rawData;
  Colouring({super.key, required this.rawData});

  @override
  State<Colouring> createState() => _ColouringState();
}

class _ColouringState extends State<Colouring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // ================ Colouring Cost ====================
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text(
                "Colouring Cost",
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
                      Text("Colouring", style: Heading5()),
                      Text("all", style: Heading5()),
                      Text(calculateColouringCost().toString(),
                          style: Heading5()),
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

  // ==================== Total cost on colouring ===============
  int CalculateDoor() {
    int numOfDoors = (widget.rawData['BedRooms'] +
        widget.rawData['BathRooms'] +
        widget.rawData['DrawingRooms'] +
        widget.rawData['LivingRooms']);
    return numOfDoors;
  }

  double CalculateDoorCost() {
    double costPerDoor = 9000; //Avg cost per Door
    return (CalculateDoor() * costPerDoor);
  }

  double calculateColouringCost() {
    double colouringCostPersqft = 22; //cost per sqft with material
    double colouringCost = (widget.rawData["coverdArea"] + CalculateDoorCost());
    return (colouringCost);
  }
}
