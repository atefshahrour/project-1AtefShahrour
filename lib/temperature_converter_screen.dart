import 'package:flutter/material.dart';

class TemperatureConverterScreen extends StatefulWidget {
  @override
  _TemperatureConverterScreenState createState() =>
      _TemperatureConverterScreenState();
}

class _TemperatureConverterScreenState
    extends State<TemperatureConverterScreen> {
  TextEditingController fahrenheitController = TextEditingController();
  TextEditingController celsiusController = TextEditingController();

  void convertToFahrenheit() {
    double celsiusValue = double.tryParse(celsiusController.text) ?? 0.0;
    double fahrenheitValue = (celsiusValue * 9 / 5) + 32;
    fahrenheitController.text = fahrenheitValue.toStringAsFixed(2);
  }

  void convertToCelsius() {
    double fahrenheitValue = double.tryParse(fahrenheitController.text) ?? 0.0;
    double celsiusValue = (fahrenheitValue - 32) * 5 / 9;
    celsiusController.text = celsiusValue.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: fahrenheitController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Fahrenheit'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: celsiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Celsius'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToFahrenheit,
              child: Text('Convert to Fahrenheit'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToCelsius,
              child: Text('Convert to Celsius'),
            ),
          ],
        ),
      ),
    );
  }
}
