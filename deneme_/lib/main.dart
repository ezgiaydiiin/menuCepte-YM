import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menü Cepte',
      color:Colors.red,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _aramaTerimi = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menü Cepte'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Aradığınız menü ismini yazınız',
              ),
              onChanged: (value) {
                setState(() {
                  _aramaTerimi = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView(
              children: _menuler.where((menu) => menu.ad.toLowerCase().contains(_aramaTerimi.toLowerCase())).map((menu) => ListTile(
                leading: Icon(Icons.restaurant),
                title: Text(menu.ad),
                subtitle: Text(menu.mutfak),
                onTap: () {
                  // Menünün detay sayfasına git
                },
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class Menu {
  String ad;
  String mutfak;

  Menu(this.ad, this.mutfak);
}

List<Menu> _menuler = [
  Menu('Dominos Pizza', 'Fast Food'),
  Menu('Köfteci Yusuf', 'Köfte'),
  Menu('McDonalds', 'Fast Food'),
  Menu('Burger King', 'Fast Food'),
  Menu('KFC', 'Tavuk'),
  Menu('Pizza Hut', 'Pizza'),
];
