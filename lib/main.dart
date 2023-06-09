import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Vivero BuenaVista',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Cd.juarez, Chihuahua',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.green[500],
          ),
          Text('89'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.access_time_filled_rounded, 'LLAMAR'),
          _buildButtonColumn(color, Icons.map, 'DIRECCION'),
          _buildButtonColumn(color, Icons.adjust_rounded, 'COMPARTIR'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'El vivero buenavista le ofrece una gran variedad de plantas, flores, arboles '
        'y arbustos al precio recomendable mundialmente. '
        ''
        ' Tambien tenemos un servicio especial de mantenimiento de jardineria al igual que'
        'una instalacion de sistema de riego incluido con una OFERTA '
        ''
        ' Para Mas Informacion Acuda Al Local',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Jardineria (VIVERO)',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jardineria (VIVERO)'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/img.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
