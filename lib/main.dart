import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive UI Design'),
        ),
        body: Center(
          child: Container(
            color: Colors.redAccent,
            height: 300,
            width: 500,
            // padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: const Center(
                      child: Text(
                        'Card 1',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: const Center(
                      child: Text(
                        'Card 2',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
