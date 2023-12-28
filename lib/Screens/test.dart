// ignore_for_file: must_be_immutable

// import 'package:firebase_core/firebase_core.dart';
import 'package:constructoncostestimator/Components/Buttons.dart';
import 'package:constructoncostestimator/Components/textfields.dart';
import 'package:flutter/material.dart';

final user = <String, dynamic>{
  'userType': 'client',
  'Paid': false,
  'services': [],
};

class Test extends StatelessWidget {
  Test({super.key});
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _PhoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    onButtonPressed() {
      if (_formKey.currentState!.validate()) {
        user['name'] = _nameController.text;
        user['phoneNumber'] = _PhoneController.text;
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ClientDataScreen2()));
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Step 1 of 3',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Let us get to know you.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                TextField_1(
                  controller: _nameController,
                  txttype: TextInputType.name,
                  label: 'Name',
                  hint: 'Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 35,
                ),
                TextField_1(
                  controller: _PhoneController,
                  txttype: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter phone number';
                    }
                    return null;
                  },
                  label: 'Phone No.',
                  hint: '91 XXXXXXXXXX',
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: RoundedButton1(
                        text: 'Next Step', onPressed: onButtonPressed)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClientDataScreen2 extends StatelessWidget {
  ClientDataScreen2({super.key});
  final TextEditingController _DebtController = TextEditingController();
  final TextEditingController _IncomeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    onButtonPressed() {
      if (_formKey.currentState!.validate()) {
        user['AmountOfDebt'] = _DebtController.text;
        user['MonthlyIncome'] = _IncomeController.text;
        // Navigator.of(context).push(
        //     MaterialPageRoute(builder: (context) => const ClientDataScreen3()));
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Step 2 of 3',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Help us understand you better.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                TextField_1(
                  controller: _DebtController,
                  txttype: TextInputType.number,
                  label: 'Total Debt Amount',
                  hint: '50000',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter phone number';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 35,
                ),
                TextField_1(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter phone number';
                    }
                    return null;
                  },
                  controller: _IncomeController,
                  txttype: TextInputType.number,
                  label: 'Monthly Income',
                  hint: '25000',
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: RoundedButton1(
                        text: 'Next Step', onPressed: onButtonPressed)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
