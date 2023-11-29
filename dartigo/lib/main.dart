import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 207, 217),
        appBar: AppBar(
          title: Text("Tech-Mania"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.space_dashboard_sharp),
              onPressed: () {},
            )
          ],
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          backgroundColor: Color.fromARGB(206, 237, 122, 156),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            // Add other widgets below the image if needed
          ],
        ),
      ),
    );
  }
}
