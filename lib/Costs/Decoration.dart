import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:flutter/material.dart';

class decoration extends StatefulWidget {
  Map<String, dynamic> rawData;
  decoration({super.key, required this.rawData});

  @override
  State<decoration> createState() => _decorationState();
}

class _decorationState extends State<decoration> {
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
                "Decoration Cost",
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
                      Text("Roof Decoration", style: Heading5()),
                      Text(CalculateRoofDecoration().toString(),
                          style: Heading5()),
                      Text(CalculateRoofDecorationCost().toString(),
                          style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Washroom", style: Heading5()),
                      Text(CalculateWashRoomDecoCost().toString(),
                          style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kitchen", style: Heading5()),
                      Text(CalculateKitchenDecoCost().toString(),
                          style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Others", style: Heading5()),
                      Text(otherDecoCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total", style: Heading5Orange()),
                      Text(totalDecoCost().toString(), style: Heading5Orange()),
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
  // ==================== Total cost on decoration ===============

  int CalculateRoofDecoration() {
    int noOfRoofs = (widget.rawData['BedRooms'] +
        widget.rawData['DrawingRooms'] +
        widget.rawData['LivingRooms']);
    return noOfRoofs;
  }

  double CalculateRoofDecorationCost() {
    double costPerRoof = 250; //Avrg decoration cost per square feet
    return (CalculateRoofDecoration() * costPerRoof);
  }

  double CalculateWashRoomDecoCost() {
    double costPerWashRoom = 300; //Avrg decoration cost per square feet
    return (widget.rawData['BathRooms'] * costPerWashRoom);
  }

  double CalculateKitchenDecoCost() {
    double costPerBathroom = 2500; //Avrg decoration cost per square feet
    return (widget.rawData['Kitchens'] * costPerBathroom);
  }

  double otherDecoCost() {
    return ((10 / 100) * totalDecoCost());
  }

  double totalDecoCost() {
    double DecoTotal = (CalculateRoofDecorationCost() +
        CalculateWashRoomDecoCost() +
        CalculateKitchenDecoCost());
    return DecoTotal;
  }
}
