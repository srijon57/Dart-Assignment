import 'package:flutter/material.dart';

class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Choose Payment Method:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PaymentMethodButton(
                      image: 'assets/images/bkash.png', label: 'BKash'),
                  PaymentMethodButton(
                      image: 'assets/images/rocket.png', label: 'Rocket'),
                  PaymentMethodButton(
                      image: 'assets/images/visa.png', label: 'Visa'),
                  PaymentMethodButton(
                      image: 'assets/images/mastercard.png',
                      label: 'Mastercard'),
                  PaymentMethodButton(
                      image: 'assets/images/amex.png', label: 'AmEx'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'What type of mechanical switch do you want to use?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              DropdownButton<String>(
                items: <String>['Cherry Red', 'Cherry Blue', 'Cherry Brown']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // Handle dropdown value change
                },
                hint: Text('Select an option'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back to the first page
                },
                child: Text('Go Back'),
              ),
            ],
          );
        },
      ),
    );
  }
}

class PaymentMethodButton extends StatelessWidget {
  final String image;
  final String label;

  PaymentMethodButton({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
          ),
          SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}
