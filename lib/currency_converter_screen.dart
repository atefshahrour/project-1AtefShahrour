import 'package:flutter/material.dart';

class CurrencyConverterScreen extends StatefulWidget {
  @override
  _CurrencyConverterScreenState createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  TextEditingController usdController = TextEditingController();
  TextEditingController lbpController = TextEditingController();
  TextEditingController blackMarketLbpController = TextEditingController();

  double usdToLbpRate = 15000.0;
  double usdToBlackMarketLbpRate = 89000.0;

  void convertToLbp() {
    double usdValue = double.tryParse(usdController.text) ?? 0.0;
    double lbpValue = usdValue * usdToLbpRate;
  }

  void convertToBlackMarketLbp() {
    double usdValue = double.tryParse(usdController.text) ?? 0.0;
    double blackMarketLbpValue = usdValue * usdToBlackMarketLbpRate;
    blackMarketLbpController.text = blackMarketLbpValue.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usdController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter USD'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: lbpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'LBP'),
              readOnly: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToLbp,
              child: Text('Convert to LBP'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: blackMarketLbpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Black Market LBP'),
              readOnly: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToBlackMarketLbp,
              child: Text('Convert to Black Market LBP'),
            ),
          ],
        ),
      ),
    );
  }
}
