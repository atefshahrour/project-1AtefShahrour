import 'package:flutter/material.dart';

class HeightConverterScreen extends StatefulWidget {
  @override
  _HeightConverterScreenState createState() => _HeightConverterScreenState();
}

class _HeightConverterScreenState extends State<HeightConverterScreen> {
  TextEditingController metersController = TextEditingController();
  TextEditingController feetController = TextEditingController();

  void convertToFeet() {
    double metersValue = double.tryParse(metersController.text) ?? 0.0;
    double feetValue = metersValue * 3.281;
    feetController.text = feetValue.toStringAsFixed(2);
  }

  void convertToMeters() {
    double feetValue = double.tryParse(feetController.text) ?? 0.0;
    double metersValue = feetValue / 3.281;
    metersController.text = metersValue.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Height Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: metersController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Meters'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: feetController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Feet'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToFeet,
              child: Text('Convert to Feet'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToMeters,
              child: Text('Convert to Meters'),
            ),
          ],
        ),
      ),
    );
  }
}
