import 'package:flutter/material.dart';

class CurrencyConverterScreen extends StatefulWidget {
  @override
  _CurrencyConverterScreenState createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  String selectedCurrency = 'USD';
  double inputAmount = 0;
  double convertedAmount = 0;

  void convertCurrency() {
    setState(() {
      if (selectedCurrency == 'USD') {
        convertedAmount = inputAmount * 24.68; // Ejemplo de tasa de conversión
      } else {
        convertedAmount = inputAmount * 26.78; // Ejemplo de tasa de conversión
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Moneda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedCurrency = 'USD';
                    });
                  },
                  child: Text('Dólar'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedCurrency = 'EUR';
                    });
                  },
                  child: Text('Euro'),
                ),
              ],
            ),
            TextField(
              decoration:
                  InputDecoration(labelText: 'Cantidad en $selectedCurrency'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                inputAmount = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: convertCurrency,
              child: Text('Convertir'),
            ),
            SizedBox(height: 20),
            Text(
              'Lps. $convertedAmount',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
