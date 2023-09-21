import 'package:flutter/material.dart';

class CurrencyConverter {
  final Function(String) onCurrencyChanged;

  CurrencyConverter({required this.onCurrencyChanged});

  Widget buildCurrencyDropdown() {
    return PopupMenuButton<String>(
      icon: Icon(Icons.attach_money),
      onSelected: onCurrencyChanged,
      itemBuilder: (BuildContext context) {
        return [
          'USD',
          'KES',
          // Add more currency options as needed
        ].map((String currency) {
          return PopupMenuItem<String>(
            value: currency,
            child: Row(
              children: [
                Icon(Icons.attach_money),
                SizedBox(width: 8.0),
                Text('$currency - $currency'),
              ],
            ),
          );
        }).toList();
      },
    );
  }
}
