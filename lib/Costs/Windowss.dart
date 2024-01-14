import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:flutter/material.dart';

class Windowss extends StatefulWidget {
  Map<String, dynamic> rawData;
  Windowss({super.key, required this.rawData});

  @override
  State<Windowss> createState() => _WindowssState();
}

class _WindowssState extends State<Windowss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Windows and Doors Cost",
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
                    Text("Windows", style: Heading5()),
                    Text(CalculateWindow().toString(), style: Heading5()),
                    Text(CalculateWindowCost().toString(), style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Doors", style: Heading5()),
                    Text(CalculateDoor().toString(), style: Heading5()),
                    Text(CalculateDoorCost().toString(), style: Heading5()),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: Heading5Orange()),
                    Text(totalCostWD().toString(), style: Heading5Orange()),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

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

  int CalculateWindow() {
    int numOfDoors =
        (widget.rawData['BedRooms'] + widget.rawData['LivingRooms']);
    return (numOfDoors);
  }

  double CalculateWindowCost() {
    double costPerWindow = 1500; //Avg cost per Window
    return (CalculateWindow() * costPerWindow);
  }

  double totalCostWD() {
    double total = (CalculateWindowCost() + CalculateDoorCost());
    return (total);
  }
}
