import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: Column(
      children: [
        Image.asset(
          'lake.jpg',
          width: 600,
          height: 400,
          fit: BoxFit.cover,
        ),
        Container(
          height: 20,
        ),
        TitleSection(),
        Container(
          height: 20,
        ),
        ButtonSection(),
        Container(
          height: 15,
        ),
        TextSection(),
      ],
    )
    )
    
    ),
    builder: EasyLoading.init(),
    );
  }
}

class TitleSection extends StatefulWidget {
  const TitleSection({Key key}) : super(key: key);

  @override
  _TitleSectionState createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {
  double _count = 2.5;

  void _incrementCounter() {
    setState(() {
      _count = _count + 0.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Oeschinen Lake Campgorund',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.star, color: Colors.red),
              onPressed: _incrementCounter,
            ),
            Text('$_count'),
          ],
        )
      ],
     
    );
  }
}

class ButtonSection extends StatefulWidget {
  const ButtonSection({Key key}) : super(key: key);

  @override
  _ButtonSectionState createState() => _ButtonSectionState();
}

class _ButtonSectionState extends State<ButtonSection> {

  void _ShowCall() {
    setState(() {
      EasyLoading.showSuccess('CALL Success');
    });
  }
  void _ShowRoute() {
    setState(() {
      EasyLoading.showSuccess('เ ก เ ร');
      html.window.open('https://www.youtube.com/watch?v=TZ8bK8z_ZB0', 'gayray');
    });
  }
  void _ShowShare() {
    setState(() {
      EasyLoading.showSuccess('Share Success');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            IconButton(
              icon: const Icon(Icons.phone, color: Colors.blue),
              onPressed: _ShowCall,
            ),
            Text('Call')
          ],
        ),
        Column(
          children: [
            IconButton(
              icon: const Icon(Icons.near_me, color: Colors.blue),
              onPressed: _ShowRoute,
            ),
            Text('Route')
          ],
        ),
        Column(
          children: [
            IconButton(
              icon: const Icon(Icons.share, color: Colors.blue),
              onPressed: _ShowShare,
            ),
            Text('Share')
          ],
        )
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Container(
      child: Container(
        child: Text('Lake Oeschinen lies at the foot of the Bluemlisalp in'
            'the Bernese Alps. Situated 1,578 meters above sea'
            'level, it is one of the larger Alpine Lakes. A gondola '
            'ride from Kandersteg, followed by a half-hour walk '
            'through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the'
            'summer. Activities enjoyed here include rowing, and'
            'riding the summer toboggan run'),
        constraints: BoxConstraints(
          maxHeight: 300.0,
          maxWidth: 400.0,
        ),
      ),
    )));
  }
}
