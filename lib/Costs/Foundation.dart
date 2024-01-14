import 'package:constructoncostestimator/Components/TextStyels.dart';
import 'package:flutter/material.dart';

class Foundation extends StatefulWidget {
  Map<String, dynamic> rawData;

  Foundation({super.key, required this.rawData});

  @override
  State<Foundation> createState() => _FoundationState();
}

class _FoundationState extends State<Foundation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a4151),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // ================ Foundation & Structure Cost ====================
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "Foundation & Structure",
              style: Heading2(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
                      Text("Briks", style: Heading5()),
                      Text(calculateBriks().toString(), style: Heading5()),
                      Text(calculateBriksCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cement", style: Heading5()),
                      Text(calculateCement().toString(), style: Heading5()),
                      Text(calculateCementCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sand", style: Heading5()),
                      Text("${calculateSand().toString()} cubic ft per sqft",
                          style: Heading5()),
                      Text(calculateSandCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Crush", style: Heading5()),
                      Text("${calculateCrush().toString()} tons",
                          style: Heading5()),
                      Text(calculateCrushCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Labour", style: Heading5()),
                      Text(calculateLabourCost().toString(), style: Heading5()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total ", style: Heading5Orange()),
                      Text(foundationTotal().toStringAsFixed(2),
                          style: Heading5Orange()),
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

// ============== Calculate Total Briks =================
  double calculateBriks() {
    double BriksPerSqft = 6.55; // how many briks use in 1sq.ft area

    return (widget.rawData["coverdArea"] * BriksPerSqft);
  }

// ============== Calculate Total Briks Cost =================
  double calculateBriksCost() {
    double costPerBrik = 13; // cost of one briks
    return (calculateBriks() * costPerBrik);
  }

// ============== Calculate Total cement bag =================
  double calculateCement() {
    double cementPerSqft = 0.5; // how many cement use in 1sq.ft area
    return (widget.rawData["coverdArea"] * cementPerSqft);
  }

// ============== Calculate Total cost of cement  =================
  double calculateCementCost() {
    double cementCostPerBag = 1095; // cost of one bag cement
    return (calculateCement() * cementCostPerBag);
  }

// ============== Calculate Total sand in tons  =================
  double calculateSand() {
    double sandPerSqft = 1.8; // how many sand use in 1sq.ft area in tons
    return (widget.rawData["coverdArea"] * sandPerSqft);
  }

// ============== Calculate Total sand cost =================
  double calculateSandCost() {
    double sandCostPerTon = 100; // cost of  sand in tons
    return (calculateSand() * sandCostPerTon);
  }

// ============== Calculate Total Crush in tons  =================
  double calculateCrush() {
    double CrushPerSqft = 1.5; // how many Crush use in 1sq.ft area in tons
    return (widget.rawData["coverdArea"] * CrushPerSqft);
  }

// ============== Calculate Total Crush cost =================
  double calculateCrushCost() {
    double crushCostPerTon = 200; // cost of  Crush in tons
    return (calculateCrush() * crushCostPerTon);
  }

// ============== Calculate Total Labour cost =================
  double calculateLabourCost() {
    double labourCostPersqft = 250; // cost of one Crush in tons
    return (widget.rawData["coverdArea"] * labourCostPersqft);
  }

//============== Foundation and Structure total Cost ===============
  double foundationTotal() {
    double total = (calculateBriksCost() +
        calculateCementCost() +
        calculateCrushCost() +
        calculateSandCost() +
        calculateLabourCost());

    return total;
  }
}
