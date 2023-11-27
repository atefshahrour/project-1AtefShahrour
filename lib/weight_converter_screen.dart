import 'package:flutter/material.dart';

class WeightConverterScreen extends StatefulWidget {
  @override
  _WeightConverterScreenState createState() => _WeightConverterScreenState();
}

class _WeightConverterScreenState extends State<WeightConverterScreen> {
  TextEditingController poundsController = TextEditingController();
  TextEditingController kilogramsController = TextEditingController();

  void convertToKilograms() {
    double poundsValue = double.tryParse(poundsController.text) ?? 0.0;
    double kilogramsValue = poundsValue / 2.205;
    kilogramsController.text = kilogramsValue.toStringAsFixed(2);
  }

  void convertToPounds() {
    double kilogramsValue = double.tryParse(kilogramsController.text) ?? 0.0;
    double poundsValue = kilogramsValue * 2.205;
    poundsController.text = poundsValue.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: poundsController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Pounds'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: kilogramsController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Kilograms'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToKilograms,
              child: Text('Convert to Kilograms'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToPounds,
              child: Text('Convert to Pounds'),
            ),
          ],
        ),
      ),
    );
  }
}
