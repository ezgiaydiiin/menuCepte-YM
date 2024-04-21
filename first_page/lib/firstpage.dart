import 'package:flutter/material.dart';
import 'package:first_page/secondpage.dart';
import 'package:first_page/thirdpage.dart';
import 'package:first_page/bottombar.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'assets/appBarfoto.jpg',
            height: 200,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Gri arka plan
          Positioned.fill(
            child: Container(
              color: Colors.grey[200],
            ),
          ),
          // Üstteki resim
          Positioned(
            top: 20.0,
            left: MediaQuery.of(context).size.width / 2 - 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(150.0),
              child: Container(
                width: 200.0,
                height: 200.0,
                child: Image.asset(
                  'assets/bodyfoto.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // Alt kırmızı bölüm
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: MediaQuery.of(context).size.height * 1 / 3,
              color: Colors.red,
            ),
          ),
          // Butonlar
          Positioned(
            top: (MediaQuery.of(context).size.height / 2),
            left: (MediaQuery.of(context).size.width / 2) - 75,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage()),
                    );
                  },
                  child: Text('MENU EKLE'),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  child: Text('MENU GÖRÜNTÜLE'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Anasayfa',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Ayarlar',
            icon: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}