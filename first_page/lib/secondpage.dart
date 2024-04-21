import 'package:first_page/UstKisim.dart';
import 'package:first_page/firstpage.dart';
import 'package:first_page/sayfa.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:UstKisim(),
      body:Sayfa(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Bu, seçili olan öğeyi belirtir (2. öğe, yani "Menu" öğesi)
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            // "Home" öğesine tıklandığında işlenecek olayları buraya yazabilirsiniz
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FirstPage() , 
              ),
            );
          }
          // "Menu" öğesine tıklandığında, mevcut sayfada olduğumuz için herhangi bir işlem yapmaya gerek yok
        },
      ),
    );
  }
}