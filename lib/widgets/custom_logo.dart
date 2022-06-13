import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String titulo;
  final String logo;

  const Logo({
    Key? key,
    required this.titulo,
    required this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Image(image: AssetImage(logo)),
            SizedBox(),
            Text(titulo, style: TextStyle(fontSize: 30))
          ],
        ),
      ),
    );
  }
}
