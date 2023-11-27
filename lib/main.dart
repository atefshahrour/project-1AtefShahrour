import 'package:flutter/material.dart';
import 'temperature_converter_screen.dart';
import 'weight_converter_screen.dart';
import 'height_converter_screen.dart';
import 'distance_converter_screen.dart';
import 'currency_converter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Converter'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          OptionButton('Currency'),
          OptionButton('Temperature'),
          OptionButton('Weight'),
          OptionButton('Distance'),
          OptionButton('Height'),
        ],
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final String option;

  OptionButton(this.option);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        title: Text(option),
        onTap: () {
          if (option == 'Temperature') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TemperatureConverterScreen(),
              ),
            );
          } else if (option == 'Weight') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WeightConverterScreen(),
              ),
            );
          } else if (option == 'Height') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HeightConverterScreen(),
              ),
            );
          } else if (option == 'Distance') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DistanceConverterScreen(),
              ),
            );
          } else if (option == 'Currency') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CurrencyConverterScreen(),
              ),
            );
          } else {}
        },
      ),
    );
  }
}
