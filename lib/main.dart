import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _imagePaths = [
    "images/2598DC69-9120-49B7-8038-29C0A9E2CD4D.JPG",
    "images/IMG_7228.JPG",
    "images/instalogo copy.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(autoPlay: true),
              items: _imagePaths.map((imagePath) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Image.asset(imagePath),
                );
              }).toList(),
            ),
            SizedBox(height: 50),
            Text(
              "Abror Shamuradov",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              " 20 y.o. ",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              " Young enthusiatic Flytter dev",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              " Carousel Practise",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
