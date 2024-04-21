/*import 'package:flutter/material.dart';

class Sayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menü Cepte',
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
];*/


/*
import 'package:flutter/material.dart';

class Sayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menü Cepte',
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
            child: Container(
              color: Colors.red, // Arka plan rengi kırmızı
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
];*/

/* grili kırmızılı
import 'package:flutter/material.dart';

class Sayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menü Cepte',
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
      //appBar: AppBar(
        //title: Text('Menü Cepte'),
      //),
      body: Container( // Tüm sayfanın arka planını gri yapmak için Container ekliyoruz
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.red, // Arama kısmının arka plan rengini kırmızı yapmak için Container ekliyoruz
                child: SizedBox(
                  width: double.infinity,
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
]; */

import 'package:flutter/material.dart';

class Sayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menü Cepte',
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
      //appBar: AppBar(
        //title: Text('Menü Cepte'),
      //),
      body: Container( // Tüm sayfanın arka planını gri yapmak için Container ekliyoruz
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.red, // Arama kısmının arka plan rengini kırmızı yapmak için Container ekliyoruz
                child: SizedBox(
                  width: double.infinity,
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
              ),
            ),
            Expanded(
              child: ListView(
                children: _menuler.where((menu) => menu.ad.toLowerCase().contains(_aramaTerimi.toLowerCase())).map((menu) => ListTile(
                  leading: Container(
                      width: 48, // İstediğiniz boyutu ayarlayabilirsiniz
                      height: 48,
                      child: Image.asset("assets/foodicon.png"), // Restoran simgesi
                    ),
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

