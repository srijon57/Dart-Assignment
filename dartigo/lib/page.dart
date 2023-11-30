import 'package:flutter/material.dart';

class BuyNowPage extends StatefulWidget {
  @override
  _BuyNowPageState createState() => _BuyNowPageState();
}

class _BuyNowPageState extends State<BuyNowPage> {
  String? selectedSwitchColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 207, 217),
      appBar: AppBar(
        title: Text('Buy Now'),
        backgroundColor: Color.fromARGB(206, 237, 122, 156),
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
                    image: 'assets/images/bkash.png',
                    label: 'BKash',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child: AlertDialog(
                              title: Center(
                                child: Text('Bkash Payment Successful'),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  PaymentMethodButton(
                    image: 'assets/images/rocket.png',
                    label: 'Rocket',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child: AlertDialog(
                              title: Center(
                                child: Text('Rocket Payment Successful'),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  PaymentMethodButton(
                    image: 'assets/images/visa.png',
                    label: 'Visa',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child: AlertDialog(
                              title: Center(
                                child: Text('VISA Payment Successful'),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  PaymentMethodButton(
                    image: 'assets/images/mastercard.png',
                    label: 'Mastercard',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child: AlertDialog(
                              title: Center(
                                child: Text('MasterCard Payment Successful'),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  PaymentMethodButton(
                    image: 'assets/images/amex.png',
                    label: 'AmEx',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child: AlertDialog(
                              title: Center(
                                child: Text('AmEx Payment Successful'),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                'Choose your keyboard switch color',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              DropdownButton<String>(
                value: selectedSwitchColor,
                items: <String>['Cherry Red', 'Cherry Blue', 'Cherry Brown']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    selectedSwitchColor = value;
                  });
                },
                hint: Text('Select a switch color'),
              ),
              SizedBox(height: 20),
              Spacer(),
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
  final VoidCallback onPressed;

  PaymentMethodButton({
    required this.image,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
            ),
            SizedBox(height: 10),
            Text(label),
          ],
        ),
      ),
    );
  }
}
