import 'package:flutter/material.dart';
import 'helper/currency_converter.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo E-commerce',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedCurrency = 'USD'; // Default currency

  void _handleCurrencyChanged(String newCurrency) {
    // Handle currency change here
    setState(() {
      selectedCurrency = newCurrency;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-commerce App'),
        actions: [
          CurrencyConverter(
            onCurrencyChanged: _handleCurrencyChanged,
          ).buildCurrencyDropdown(),
        ],
      ),
      body: Center(
        child: Text('E-commerce content here'),
      ),
    );
  }
}



