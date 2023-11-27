import 'package:flutter/material.dart';

class DistanceConverterScreen extends StatefulWidget {
  @override
  _DistanceConverterScreenState createState() =>
      _DistanceConverterScreenState();
}

class _DistanceConverterScreenState extends State<DistanceConverterScreen> {
  TextEditingController kilometersController = TextEditingController();
  TextEditingController milesController = TextEditingController();

  void convertToMiles() {
    double kilometersValue = double.tryParse(kilometersController.text) ?? 0.0;
    double milesValue = kilometersValue / 1.609;
    milesController.text = milesValue.toStringAsFixed(2);
  }

  void convertToKilometers() {
    double milesValue = double.tryParse(milesController.text) ?? 0.0;
    double kilometersValue = milesValue * 1.609;
    kilometersController.text = kilometersValue.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Distance Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: kilometersController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Kilometers'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: milesController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Miles'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToMiles,
              child: Text('Convert to Miles'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToKilometers,
              child: Text('Convert to Kilometers'),
            ),
          ],
        ),
      ),
    );
  }
}
