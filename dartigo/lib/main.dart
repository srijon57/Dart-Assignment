import 'package:firstly/page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 240, 207, 217),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(206, 237, 122, 156),
          title: Text("Tech-Mania"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.space_dashboard_sharp),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/ajazz.jpg',
                height: 300,
                width: 400,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ajazz-AK820 Keyboard',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '৳4,000.00',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 49, 151, 53),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Product Feature Description:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  buildBulletPoint('81 Keys, Compact Layout'),
                  buildBulletPoint('Gasket-mounted & Sound Dampening Foams'),
                  buildBulletPoint(
                      'South-Facing LED Orientation & 1.6M RGB Backlighting'),
                  buildBulletPoint(
                      'PBT Keycaps in OEM Profile & Ajazz Custom Switches'),
                  buildBulletPoint('Type-C Wired Connectivity'),
                  buildBulletPoint('1-Year Official Warranty'),
                ],
              ),
            ),
            Spacer(),
            Card(
              elevation: 0,
              child: ElevatedButton.icon(
                icon: Icon(Icons.shopping_cart),
                label: Text('Buy Now'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyNowPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildBulletPoint(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(
        Icons.brightness_1,
        size: 10,
      ),
      Expanded(
        child: Text(text),
      ),
    ],
  );
}
