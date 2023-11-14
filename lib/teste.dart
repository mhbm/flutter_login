import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            final screenHeight = constraints.maxHeight;

            return Stack(
              children: [
                Positioned(
                  left: 7,
                  top: 304,
                  width: 306,
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {
                      // Adicione aqui a ação do botão
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(170, 187, 204,0)),
                    ),
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255,0),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
