import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ResponsiveElements(),
      ),
    );
  }
}

class ResponsiveElements extends StatelessWidget {
  final List<Map<String, dynamic>> elementsData = [
    {
      "name": "Follow us @modimal",
      "positionX": 108,
      "positionY": 4343,
      "width": 358,
      "height": 95,
    },
    {
      "name": "Follow us @modimal",
      "positionX": 200,
      "positionY": 700,
      "width": 358,
      "height": 95,
    },
    {
      "name": "Follow us @modimal",
      "positionX": 57,
      "positionY": 109,
      "width": 358,
      "height": 95,
    },
    // Adicione mais elementos conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;

        return Stack(
          children: elementsData.map((data) {
            double elementWidth = data['width'];
            double elementHeight = data['height'];
            double elementPositionX = data['positionX'];
            double elementPositionY = data['positionY'];

            double responsiveElementWidth = (elementWidth / 100) * screenWidth;
            double responsiveElementHeight =
                (elementHeight / 100) * screenWidth;
            double responsiveElementPositionX =
                (elementPositionX / 100) * screenWidth;
            double responsiveElementPositionY =
                (elementPositionY / 100) * screenWidth;

            if (responsiveElementWidth > 0 && responsiveElementHeight > 0) {
              return Positioned(
                left: responsiveElementPositionX,
                top: responsiveElementPositionY,
                child: Container(
                  width: responsiveElementWidth,
                  height: responsiveElementHeight,
                  color: getRandomColor(),
                  child: Center(
                    child: Text(
                      data['name'],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            } else {
              return Container();
            }
          }).toList(),
        );
      },
    );
  }

  Color getRandomColor() {
    return Color.fromRGBO(
      (List.generate(3, (index) => index * 100 + 50)..shuffle()).first,
      (List.generate(3, (index) => index * 100 + 50)..shuffle()).first,
      (List.generate(3, (index) => index * 100 + 50)..shuffle()).first,
      1.0,
    );
  }
}
