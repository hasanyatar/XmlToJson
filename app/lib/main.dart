import 'package:app/xml_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Convert To Json'),
              onPressed: () {
                XmltoJsonGenerator.instance.convertToJson(xmlString: 'Example');
              },
            ),
            ElevatedButton(
              child: const Text('Convert To Xml'),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          XmltoJsonGenerator.instance.convertToXml(toJson: {});
        },
        tooltip: 'Convert To Json',
        child: const Icon(Icons.add),
      ),
    );
  }
}
